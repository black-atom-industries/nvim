local config = require("black-atom-core.config")
local commands = require("black-atom-core.commands")
local lib = require("black-atom-core.lib")

local M = {}

---Loads a theme definition into the editor
---@param theme BlackAtomCore.ThemeDefinition
---@return nil
function M.load(theme)
    config.set({ theme = theme.meta.key })
    lib.themes.dev_status_warning(theme.meta)

    lib.hls.reset()

    vim.termguicolors = true
    vim.g.colors_name = theme.meta.key
    vim.opt.background = theme.meta.appearance

    lib.hls.setup(theme.colors, config.get())
end

---@param opts BlackAtomCore.Config
---@return nil
function M.setup(opts)
    commands.register()

    if not opts then
        config.set(config.default)
    else
        config.set(opts)
    end
end

-- TODO: [DEV-47 : Runtime Validation for Config](https://linear.app/black-atom-industries/issue/DEV-47/runtime-validation-for-config)
---Plugins can register their themes with this function
---@param themes BlackAtomCore.ThemeDefinition[]
---@return nil
function M.register_themes(themes)
    config.set({ registered_themes = themes })
end

return M
