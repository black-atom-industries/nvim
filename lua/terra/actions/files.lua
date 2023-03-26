local M = {}

---Get the path of the terra plugin
---@return string
function M.get_terra_plugin_path()
    local terra_plugin_name = "terra.nvim"
    local runtimepaths = vim.api.nvim_get_option("runtimepath")
    local plugin_directory = nil

    for _, path in ipairs(vim.split(runtimepaths, ",")) do
        if path:find(terra_plugin_name) then
            plugin_directory = path
            break
        end
    end

    return plugin_directory
end

---Scan a directory for lua files and return their names
---@param path string
---@param file_extension? string Default is "lua"
---@return string[]
function M.scan_path_for_filenames(path, file_extension)
    local extension = file_extension or "lua"

    -- get all files in the directory
    local lua_files = vim.fn.glob(path .. "/*." .. extension, true, true)

    -- remove the the paths to only get the file names
    local filenames = vim.tbl_map(function(file)
        -- remove the path from the file
        local file_name = vim.fn.fnamemodify(file, ":t")

        -- remove the extension from the file
        local file_name_no_ext = vim.fn.fnamemodify(file_name, ":r")

        return file_name_no_ext
    end, lua_files)

    return filenames
end

---Run a function on each entry in a table. The function receives the entry as an argument.
---@param tbl table
---@param fn fun(entry: any): nil
---@return nil
function M.run_on_entry(tbl, fn)
    for _, entry in pairs(tbl) do
        fn(entry)
    end
end

---Get the names of all the files in a subdirectory of the highlights folder
---@param subdirectory "plugins"|"syntax"
---@return string[]
function M.get_highlight_files(subdirectory)
    local plugin_path = M.get_terra_plugin_path()
    local highlight_files = M.scan_path_for_filenames(plugin_path .. "/lua/terra/highlights/" .. subdirectory)
    return highlight_files
end

return M
