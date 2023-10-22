---@type TerraConfig
TerraConfig = vim.g.terra_config

local utils = require("terra-core.utils")

local M = {}

---@param colorscheme_name TerraConfig.ColorSchemeName
---@return nil
function M.load_colorscheme(colorscheme_name)
    utils.highlights.reset()

    utils.config.sync_vim_bg_with_terra_variant(TerraConfig.variant)
    vim.o.termguicolors = true
    vim.g.colors_name = colorscheme_name

    require("terra-core.utils.highlights").setup()
    require("terra-core.terminal").setup()
end

---@param opts TerraConfig
---@return nil
function M.setup(opts)
    -- If it's the first time setup() is called, load the default config
    if not TerraConfig or not TerraConfig.loaded then
        TerraConfig = require("terra-core.config").default_config
        utils.config.set_terra_rt_config({ loaded = true })
    end

    -- If there are defined options, set them in the global config
    if opts then
        utils.config.set_terra_rt_config(opts)
    end
end

return M
