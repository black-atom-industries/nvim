-- File: ~/repos/black-atom-industries/black-atom.nvim/lua/black-atom/init.lua

local config = require("black-atom.config")
local commands = require("black-atom.commands")
local highlights = require("black-atom.highlights")
local lib = require("black-atom.lib")

local M = {}

---Finds and gets the theme from the vault
---@param theme_name string
---@return BlackAtom.ThemeDefinition|nil, string?
function M.get_theme(theme_name)
    local vault_name = require("black-atom.config").get().vault

    local current_path = debug.getinfo(1, "S").source:sub(2)
    local adapter_root = vim.fn.fnamemodify(current_path, ":h:h:h")
    local vault_path = vim.fn.fnamemodify(adapter_root, ":h") .. "/" .. vault_name

    if vim.fn.isdirectory(vault_path) ~= 1 then
        return nil, string.format("Vault not found at expected location: %s", vault_path)
    end

    local theme_path = vault_path .. "/ft/lua"
    lib.debug.print("Searching for theme in: %s", theme_path)

    package.path = package.path .. ";" .. theme_path .. "/?.lua"

    local ok, theme_or_error = pcall(require, theme_name)
    if ok then
        lib.debug.print("Theme '%s' loaded successfully from: %s", theme_name, theme_path)
        return theme_or_error
    else
        lib.debug.print("Failed to load theme '%s' from %s: %s", theme_name, theme_path, theme_or_error)
        return nil, string.format("Could not load theme '%s': %s", theme_name, theme_or_error)
    end
end

---@param opts BlackAtom.Config
---@return nil
function M.setup(opts)
    if not opts then
        config.set(config.default)
    else
        config.set(opts)
    end
    commands.register()
end

---Loads a theme definition into the editor
---@param theme_name string
---@return nil
function M.load(theme_name)
    local theme, error_msg = M.get_theme(theme_name)
    if not theme then
        error(error_msg)
    end

    config.set({ theme = theme_name })
    lib.themes.dev_status_warning(theme.meta)

    highlights.reset()

    vim.g.colors_name = theme_name
    vim.opt.termguicolors = true
    vim.opt.background = theme.meta.appearance

    highlights.apply(theme.colors, config.get())

    lib.debug.print("Theme '%s' applied successfully", theme_name)
end

return M
