---@type BlackAtomCore.Config
BlackAtomCoreConfig = vim.g.black_atom_core_config

local lib = require("black-atom-core.lib")

local M = {}

---@param colorscheme_name BlackAtomCore.Config.ThemeKey
---@return nil
function M.load_colorscheme(colorscheme_name)
    lib.hls.reset()

    vim.o.termguicolors = true
    vim.g.colors_name = colorscheme_name

    lib.hls.setup()
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
