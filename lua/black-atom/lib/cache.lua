local M = {}

local CACHE_KEY = "black_atom_cache"
local CACHE_VERSION = 1
local CACHE_TTL = 86400 -- 24 hours in seconds

-- Get the current git commit hash for the plugin
function M.get_commit_hash()
    local plugin_path = debug.getinfo(1, "S").source:sub(2):match("(.*)/lua/black%-atom/")
    if not plugin_path then
        return nil
    end

    local handle = io.popen("cd " .. plugin_path .. " && git rev-parse HEAD 2>/dev/null")
    if handle then
        local result = handle:read("*a"):gsub("\n", "")
        handle:close()
        return result ~= "" and result or nil
    end
    return nil
end

-- Initialize cache, invalidating if needed
function M.init()
    local current_hash = M.get_commit_hash()
    local cache = vim.g[CACHE_KEY] or {}

    -- Check cache version and commit hash
    if cache.version ~= CACHE_VERSION or cache.commit_hash ~= current_hash then
        cache = {
            version = CACHE_VERSION,
            commit_hash = current_hash,
            modules = {},
            highlights = {},
            created_at = os.time(),
            last_cleanup = os.time(),
        }
    end

    -- Run cleanup occasionally (once per day)
    local last_cleanup = cache.last_cleanup or 0
    if os.time() - last_cleanup > (24 * 60 * 60) then
        M.cleanup_old_cache()
        cache.last_cleanup = os.time()
    end

    vim.g[CACHE_KEY] = cache
end

-- Generate cache key for theme + config + version combination
function M.get_highlight_key(theme_key, config)
    -- Get current git hash for version info
    local git_hash = M.get_commit_hash() or "no-git"
    
    -- Create deterministic string from config
    local config_str = vim.inspect(config)
    local config_hash = vim.fn.sha256(config_str)
    
    -- Include cache version and git hash in key
    return string.format("v%d_%s_%s_%s", CACHE_VERSION, theme_key, git_hash:sub(1, 8), config_hash:sub(1, 12))
end

-- Get cache file path for highlights
local function get_cache_file_path(cache_key)
    local files = require("black-atom.lib.files")
    -- Use system cache directory instead of plugin directory
    local cache_dir = files.build_path(vim.fn.stdpath("cache"), "black-atom")
    vim.fn.mkdir(cache_dir, "p")
    return files.build_path(cache_dir, cache_key .. ".lua")
end

-- Get cached highlights from file
function M.get_highlights(cache_key)
    local cache_file = get_cache_file_path(cache_key)

    -- Check if cache file exists
    if vim.fn.filereadable(cache_file) == 0 then
        return nil
    end

    -- Check if cache is still valid (24h TTL)
    local file_stat = vim.fn.getftime(cache_file)
    if os.time() - file_stat > CACHE_TTL then
        return nil
    end

    -- Load cached highlights
    local ok, highlights = pcall(dofile, cache_file)
    if ok and highlights then
        return highlights
    end

    return nil
end

-- Custom serialization function that handles highlight group names properly
local function serialize_highlights(tbl, indent)
    indent = indent or ""
    local result = "{\n"
    
    for key, value in pairs(tbl) do
        -- Always quote highlight group names
        local quoted_key = string.format('[%q]', key)
        result = result .. indent .. "  " .. quoted_key .. " = "
        
        if type(value) == "table" then
            result = result .. serialize_highlights(value, indent .. "  ")
        elseif type(value) == "string" then
            result = result .. string.format("%q", value)
        elseif type(value) == "boolean" then
            result = result .. tostring(value)
        else
            result = result .. tostring(value)
        end
        
        result = result .. ",\n"
    end
    
    result = result .. indent .. "}"
    return result
end

-- Set cached highlights to file
function M.set_highlights(cache_key, highlights_map)
    local cache_file = get_cache_file_path(cache_key)

    local file = io.open(cache_file, "w")
    if file then
        file:write("-- Black Atom cached highlights\n")
        file:write("-- Generated at: " .. os.date("%Y-%m-%d %H:%M:%S") .. "\n")
        file:write("return " .. serialize_highlights(highlights_map) .. "\n")
        file:close()

        -- Track in memory cache for stats
        local cache = vim.g[CACHE_KEY]
        if cache then
            cache.highlights[cache_key] = { timestamp = os.time() }
            vim.g[CACHE_KEY] = cache
        end
    end
end

-- Get cached modules
function M.get_modules()
    local cache = vim.g[CACHE_KEY]
    if not cache or not cache.modules then
        return nil
    end

    local modules = cache.modules
    if not modules.data or not modules.timestamp then
        return nil
    end

    -- Check TTL
    if os.time() - modules.timestamp > CACHE_TTL then
        return nil
    end

    return modules.data
end

-- Set cached modules
function M.set_modules(data)
    local cache = vim.g[CACHE_KEY]
    if not cache then
        M.init()
        cache = vim.g[CACHE_KEY]
    end

    cache.modules = {
        timestamp = os.time(),
        data = data,
    }

    vim.g[CACHE_KEY] = cache
end

-- Check if modules should be refreshed
function M.should_refresh_modules()
    local cache = vim.g[CACHE_KEY]
    if not cache or not cache.modules or not cache.modules.timestamp then
        return true
    end

    -- Refresh if older than 1 hour
    return (os.time() - cache.modules.timestamp) > 3600
end

-- Clean up old cache files (older than 7 days or from different versions)
function M.cleanup_old_cache()
    local files = require("black-atom.lib.files")
    local cache_dir = files.build_path(vim.fn.stdpath("cache"), "black-atom")
    
    if vim.fn.isdirectory(cache_dir) == 0 then
        return
    end
    
    local current_git_hash = M.get_commit_hash() or "no-git"
    local current_version = "v" .. CACHE_VERSION
    local seven_days_ago = os.time() - (7 * 24 * 60 * 60)
    
    local cache_files = vim.fn.glob(cache_dir .. "/*.lua", false, true)
    
    for _, file_path in ipairs(cache_files) do
        local filename = vim.fn.fnamemodify(file_path, ":t:r")
        local file_mtime = vim.fn.getftime(file_path)
        
        -- Parse version and git hash from filename
        local version_match = filename:match("^(v%d+)_")
        local git_hash_match = filename:match("_([a-f0-9]+)_")
        
        local should_delete = false
        
        -- Delete if older than 7 days
        if file_mtime ~= -1 and file_mtime < seven_days_ago then
            should_delete = true
        end
        
        -- Delete if from different cache version
        if version_match and version_match ~= current_version then
            should_delete = true
        end
        
        -- Delete if from different git hash (but keep "no-git" for development)
        if git_hash_match and git_hash_match ~= "no-git" and git_hash_match ~= current_git_hash:sub(1, 8) then
            should_delete = true
        end
        
        if should_delete then
            vim.fn.delete(file_path)
        end
    end
end

-- Clear all cache
function M.clear()
    vim.g[CACHE_KEY] = {
        version = CACHE_VERSION,
        commit_hash = M.get_commit_hash(),
        modules = {},
        highlights = {},
        created_at = os.time(),
    }

    -- Also clear cached highlight files
    local files = require("black-atom.lib.files")
    local cache_dir = files.build_path(vim.fn.stdpath("cache"), "black-atom")
    if vim.fn.isdirectory(cache_dir) == 1 then
        vim.fn.system("rm -rf " .. cache_dir)
    end
end

-- Get cache statistics
function M.get_stats()
    local cache = vim.g[CACHE_KEY]
    if not cache then
        return {
            status = "Not initialized",
            size = 0,
        }
    end

    local cache_str = vim.inspect(cache)
    local size_bytes = #cache_str

    local highlights_count = 0
    for _ in pairs(cache.highlights or {}) do
        highlights_count = highlights_count + 1
    end

    return {
        status = "Active",
        version = cache.version,
        commit_hash = cache.commit_hash,
        created_at = os.date("%Y-%m-%d %H:%M:%S", cache.created_at),
        modules_cached = cache.modules and cache.modules.data and #cache.modules.data or 0,
        highlights_cached = highlights_count,
        size_bytes = size_bytes,
        size_kb = string.format("%.2f KB", size_bytes / 1024),
    }
end

-- Compile highlights for all available themes
function M.compile_all_themes()
    local config = require("black-atom.config").get()
    local highlights = require("black-atom.lib.highlights")
    local compiled_count = 0
    
    -- Get list of all theme files
    local files = require("black-atom.lib.files")
    local theme_files = files.get_highlight_modules("themes", nil)
    
    for _, theme_module in ipairs(theme_files) do
        local ok, theme = pcall(require, theme_module)
        
        if ok and theme and theme.colors and theme.meta then
            local theme_key = theme.meta.key
            local cache_key = M.get_highlight_key(theme_key, config)
            local cache_file = get_cache_file_path(cache_key)
            
            -- Only compile if not already cached
            if vim.fn.filereadable(cache_file) == 0 then
                local highlight_map = highlights.build_highlights_map(theme.colors, config)
                M.set_highlights(cache_key, highlight_map)
                compiled_count = compiled_count + 1
            end
        end
    end
    
    return compiled_count
end

-- Compile highlights for current theme
function M.compile_current_theme()
    local config = require("black-atom.config").get()
    local theme_key = config.theme or "black-atom-stations-engineering"
    local highlights = require("black-atom.lib.highlights")
    
    -- Get theme colors by reconstructing the module path
    -- Extract collection from theme key (e.g., "black-atom-stations-engineering" -> "stations")
    local collection = theme_key:match("black%-atom%-([^%-]+)%-")
    if not collection then
        error("Could not determine collection from theme key: " .. theme_key)
    end
    
    local ok, theme = pcall(require, "black-atom.themes." .. collection .. "." .. theme_key)
    
    if not ok or not theme or not theme.colors then
        error("Could not load theme: " .. theme_key)
    end
    
    local cache_key = M.get_highlight_key(theme_key, config)
    local highlight_map = highlights.build_highlights_map(theme.colors, config)
    M.set_highlights(cache_key, highlight_map)
    
    return cache_key
end

return M
