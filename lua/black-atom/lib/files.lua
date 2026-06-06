local M = {}

---Get the install path of the plugin
---@return string
function M.get_plugin_path()
    -- Derive plugin root from this file's location:
    -- This file is at <plugin_root>/lua/black-atom/lib/files.lua
    local source = debug.getinfo(1, "S").source:sub(2)
    return vim.fn.fnamemodify(source, ":h:h:h:h")
end

function M.build_path(base_path, ...)
    local path = base_path

    for _, subpath in ipairs({ ... }) do
        path = path .. "/" .. subpath
    end

    return path
end

---Scan a directory recursively for files with the given extension and return their full paths.
---Uses libuv's fs_scandir instead of vim.fn.glob — the latter's "**" expansion is ~40x slower
---and dominates highlight cache lookups and theme switches.
---Results are sorted so output is deterministic (matches the previous glob behavior).
---@param path string
---@param ignore_pattern string
---@param file_extension? string Default is "lua"
---@return string[]
function M.scan_path_for_files(path, ignore_pattern, file_extension)
    file_extension = file_extension or "lua"
    local suffix = "." .. file_extension

    local files = {}

    local function scan(dir)
        local handle = vim.uv.fs_scandir(dir)
        if not handle then
            return
        end

        while true do
            local name, type = vim.uv.fs_scandir_next(handle)
            if not name then
                break
            end

            local full_path = dir .. "/" .. name

            if type == "directory" then
                scan(full_path)
            elseif name:sub(-#suffix) == suffix then
                -- filter files that match the ignore pattern
                if not (ignore_pattern and full_path:find(ignore_pattern)) then
                    table.insert(files, full_path)
                end
            end
        end
    end

    scan(path)

    table.sort(files)

    return files
end

---Convert a file path to a module path
---@param filepath string
---@param path_to_remove string
---@return string
function M.convert_filepath_to_modulepath(filepath, path_to_remove)
    local function escape_pattern(text)
        return text:gsub("([^%w])", "%%%1")
    end

    -- replace the path_to_remove, from filepath, with an empty string
    local module_path = filepath:gsub(escape_pattern(path_to_remove), "")

    -- remove the extension from the file
    module_path = vim.fn.fnamemodify(module_path, ":r")

    -- replace the "/" with "." (for unix)
    module_path = module_path:gsub("/", ".")

    -- replace the "\" with "." (for windows)
    module_path = module_path:gsub("\\", ".")

    -- remove the first "." from the string
    module_path = module_path:gsub("^.", "")

    return module_path
end

---Check if a highlight file has enabled = false without fully requiring it
---Reads the first 200 bytes to find the enabled flag before the map function.
---@param filepath string
---@return boolean
local function is_highlight_disabled(filepath)
    local fd = vim.uv.fs_open(filepath, "r", 438)
    if not fd then
        return false
    end
    local data = vim.uv.fs_read(fd, 200, 0)
    vim.uv.fs_close(fd)
    return data ~= nil and data:find("enabled%s*=%s*false") ~= nil
end

---Get the paths of all the modules in a subdirectory of the highlights folder
---Skips files with `enabled = false` to avoid the require() overhead.
---@param highlight_maps_path string
---@param ignore_pattern string
---@return string[]
function M.get_highlight_modules(highlight_maps_path, ignore_pattern)
    local plugin_path = M.get_plugin_path()

    local highlight_files = M.scan_path_for_files(M.build_path(plugin_path, highlight_maps_path), ignore_pattern)

    local module_pathes = {}
    local path_to_remove = M.build_path(plugin_path, "lua")

    for _, file_path in ipairs(highlight_files) do
        if not is_highlight_disabled(file_path) then
            table.insert(module_pathes, M.convert_filepath_to_modulepath(file_path, path_to_remove))
        end
    end

    return module_pathes
end

return M
