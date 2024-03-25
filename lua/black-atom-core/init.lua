---@type BlackAtomCore.Config
BlackAtomCoreConfig = vim.g.black_atom_core_config

local lib = require("black-atom-core.lib")

local M = {}

---@param meta BlackAtomCore.ThemeMeta
---@param colors BlackAtomCore.ThemeColors
---@return nil
function M.load_colorscheme(meta, colors)
    require("black-atom-core.lib.config").dev_status_warning(meta)

    lib.hls.reset()

    vim.termguicolors = true
    vim.g.colors_name = meta.key

    vim.opt.background = meta.appearance

    lib.hls.setup(colors)
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
