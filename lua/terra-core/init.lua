local actions = require("terra-core.actions")

local M = {}

---@param colorscheme_name TerraConfig.ColorSchemeName
---@return nil
function M.load_colorscheme(colorscheme_name)
    actions.highlights.reset()

    vim.o.termguicolors = true
    vim.g.colors_name = colorscheme_name

    actions.config.sync_vim_bg_with_terra_variant(vim.g.terra_config.variant)

    require("terra-core.highlights").setup(vim.g.terra_config)
    require("terra-core.terminal").setup()
end

---@param opts TerraConfig
---@return nil
function M.setup(opts)
    -- If it's the first time setup() is called, load the default config
    if not vim.g.terra_config or not vim.g.terra_config.loaded then
        vim.g.terra_config = require("terra-core.config").default_config
        actions.config.set_terra_runtime_config({ loaded = true })
    end

    -- If there are defined options, set them in the global config
    if opts then
        actions.config.set_terra_runtime_config(opts)
    end
end

---Loads the colorscheme
---@param theme string
---@return nil
function M.load(theme)
    vim.cmd.colorscheme(theme)
end

return M
