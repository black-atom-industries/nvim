local actions = require("terra-core.actions")

local M = {}

---Apply the colorscheme (same as ':colorscheme terra')
function M.colorscheme()
    -- Reset Vim Highlights and Syntax
    actions.highlights.reset()

    -- Set vim options
    vim.o.termguicolors = true

    -- Set "terra" to the vim `colors_name` global variable
    vim.g.colors_name = "terra"

    -- Sync `vim.o.background` of Vim with `time` of TerraConfig
    actions.config.sync_vim_opt_background_with_terra_variant(vim.g.terra_config.variant)

    -- Now set up the highlights and terminal
    require("terra-core.highlights").setup(vim.g.terra_config)
    require("terra-core.terminal").setup()
end

---Setup options, without applying colorscheme
---@param opts TerraConfig: a table containing options
---@return nil
function M.setup(opts)
    local default_config = require("terra-core.config").default_config

    -- If it's the first time setup() is called, load the default config
    if not vim.g.terra_config or not vim.g.terra_config.loaded then
        ---@type TerraConfig
        vim.g.terra_config = default_config

        -- Mark the theme as loaded
        actions.config.set_options({
            loaded = true,
        })
    end

    -- If there are defined options, set them in the global config
    if opts then
        actions.config.set_options(opts)
    end
end

---Loads the colorscheme
---@return nil
function M.load()
    vim.api.nvim_command("colorscheme terra")
end

return M