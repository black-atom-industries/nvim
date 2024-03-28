---@type BlackAtomCore.Config
BlackAtomCoreConfig = vim.g.black_atom_core_config

local lib = require("black-atom-core.lib")

local M = {}

---Loads a theme definition into the editor
---@param theme BlackAtomCore.ThemeDefinition
---@return nil
function M.load(theme)
    lib.config.dev_status_warning(theme.meta)
    lib.config.set_config({ theme = theme.meta.key })

    lib.hls.reset()

    vim.termguicolors = true
    vim.g.colors_name = theme.meta.key
    vim.opt.background = theme.meta.appearance

    lib.hls.setup(theme.colors)
end

---@param opts BlackAtomCore.Config
---@return nil
function M.setup(opts)
    if not BlackAtomCoreConfig then
        lib.config.set_config_defaults()
    end

    if opts then
        lib.config.set_config(opts)
    end
end

return M
