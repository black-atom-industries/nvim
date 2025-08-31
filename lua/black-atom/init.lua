local M = {}

---@param opts BlackAtom.Config
---@return nil
function M.setup(opts)
    local config = require("black-atom.config")

    if not opts then
        config.set({})
    else
        config.set(opts)
    end

    -- Initialize cache system
    require("black-atom.lib.cache").init()

    require("black-atom.commands").register()
end

---Loads a theme definition into the editor
---@param theme BlackAtom.Theme.Definition
---@return nil
function M.load(theme)
    local config = require("black-atom.config")
    local highlights = require("black-atom.highlights")

    config.set({ theme = theme.meta.key, collection = theme.meta.collection.key })

    highlights.reset()

    vim.g.colors_name = theme.meta.key
    vim.opt.termguicolors = true
    vim.opt.background = theme.meta.appearance

    highlights.apply(theme.colors, config.get())
end

return M
