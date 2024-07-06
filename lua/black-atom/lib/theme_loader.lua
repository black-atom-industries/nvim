local M = {}

local function find_and_load_theme(theme_name, vault_name)
    local current_path = debug.getinfo(1, "S").source:sub(2)
    local plugin_root = vim.fn.fnamemodify(current_path, ":h:h:h:h")
    local possible_paths = {
        vim.fn.fnamemodify(plugin_root, ":h") .. "/" .. vault_name, -- sibling directory
        plugin_root .. "/" .. vault_name, -- same directory
    }

    -- Add Neovim's runtime paths
    for _, path in ipairs(vim.api.nvim_list_runtime_paths()) do
        table.insert(possible_paths, path .. "/" .. vault_name)
    end

    for _, path in ipairs(possible_paths) do
        if vim.fn.isdirectory(path) == 1 then
            local theme_path = path .. "/dist/lua"
            package.path = package.path .. ";" .. theme_path .. "/?.lua"
            local ok, theme = pcall(require, theme_name)
            if ok then
                return theme
            end
        end
    end

    error("Could not find or load theme: " .. theme_name)
end

function M.load_theme(theme_name)
    return find_and_load_theme(theme_name, "black-atom-vault")
end

return M
