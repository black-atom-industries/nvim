local M = {}

---Get the install path of the plugin
---@return string
function M.get_plugin_path()
    local constants = require("black-atom.constants")
    local runtimepaths = vim.api.nvim_list_runtime_paths()

    local plugin_path = ""

    for _, path in ipairs(runtimepaths) do
        if path:find(constants.plugin_name) then
            plugin_path = path
            break
        end
    end

    if plugin_path == "" then
        error("Could not find the plugin path")
    end

    return plugin_path
end

function M.build_path(base_path, ...)
    local path = base_path

    for _, subpath in ipairs({ ... }) do
        path = path .. "/" .. subpath
    end

    return path
end

---Scan a directory for lua files and return their full paths
---@param path string
---@param ignore_pattern string
---@param file_extension? string Default is "lua"
---@return string[]
function M.scan_path_for_files(path, ignore_pattern, file_extension)
    file_extension = file_extension or "lua"

    -- recursely scan the path for files with the given extension
    local files = vim.fn.glob(path .. "/**/*." .. file_extension, true, true)

    -- filter files that match the ignore pattern
    if ignore_pattern then
        local filtered_files = {}

        for _, file in ipairs(files) do
            if not file:find(ignore_pattern) then
                table.insert(filtered_files, file)
            end
        end

        files = filtered_files
    end

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

---Get the paths of all the modules in a subdirectory of the highlights folder
---@param highlight_maps_path string
---@param ignore_pattern string
---@return string[]
function M.get_highlight_modules(highlight_maps_path, ignore_pattern)
    local plugin_path = M.get_plugin_path()

    local highlight_files = M.scan_path_for_files(M.build_path(plugin_path, highlight_maps_path), ignore_pattern)

    local module_pathes = vim.tbl_map(function(file_path)
        local path_to_remove = M.build_path(plugin_path, "lua")
        return M.convert_filepath_to_modulepath(file_path, path_to_remove)
    end, highlight_files)

    return module_pathes
end

return M
