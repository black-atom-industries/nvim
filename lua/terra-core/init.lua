---@type TerraConfig
TerraConfig = vim.g.terra_config

local lib = require("terra-core.lib")

local M = {}

---@param colorscheme_name TerraConfig.ColorSchemeName
---@return nil
function M.load_colorscheme(colorscheme_name)
    lib.hls.reset()

    lib.config.sync_vim_bg_with_terra_variant(TerraConfig.variant)
    vim.o.termguicolors = true
    vim.g.colors_name = colorscheme_name

    lib.hls.setup()
end

---@param opts TerraConfig
---@return nil
function M.setup(opts)
    if not TerraConfig then
        lib.config.set_terra_config_defaults()
    end

    if opts then
        lib.config.set_terra_config(opts)
    end
end

return M
