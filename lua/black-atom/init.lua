local config = require("black-atom.config")
local commands = require("black-atom.commands")
local highlights = require("black-atom.highlights")
local lib = require("black-atom.lib")

local M = {}

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
---@param theme BlackAtom.Theme.Definition
---@return nil
function M.load(theme)
    config.set({ theme = theme.meta.key, collection = theme.meta.collection.key })
    lib.themes.dev_status_warning(theme.meta)

    highlights.reset()

    vim.g.colors_name = theme.meta.key
    vim.opt.termguicolors = true
    vim.opt.background = theme.meta.appearance

    highlights.apply(theme.colors, config.get())
end

return M
