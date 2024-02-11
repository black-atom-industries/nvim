---@type TerraConfig
TerraConfig = vim.g.terra_config

local utils = require("terra-core.utils")

local M = {}

---@param colorscheme_name TerraConfig.ColorSchemeName
---@return nil
function M.load_colorscheme(colorscheme_name)
    utils.hls.reset()

    utils.config.sync_vim_bg_with_terra_variant(TerraConfig.variant)
    vim.o.termguicolors = true
    vim.g.colors_name = colorscheme_name

    utils.hls.setup()
end

---@param opts TerraConfig
---@return nil
function M.setup(opts)
    if not TerraConfig then
        utils.config.set_terra_config_defaults()
    end

    if opts then
        utils.config.set_terra_config(opts)
    end
end

return M
