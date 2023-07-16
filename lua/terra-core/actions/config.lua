local config = require("terra-core.config")
local notify = require("terra-core.actions.ui").notify

local M = {}

---Change terra option (vim.g.terra_config.option)
---@param options TerraConfig
---@return nil
function M.set_options(options)
    vim.g.terra_config = vim.tbl_deep_extend("force", vim.g.terra_config, options)
end

-- NOTE: Introduce `M.get_options(options)` which receives a table of config keys and returns current values as a table

---Syncs `vim.o.background` of Vim with `variant` of TerraConfig
---@param variant TerraConfig.Variant
---@return nil
function M.sync_vim_opt_background_with_terra_variant(variant)
    if variant == "day" then
        vim.o.background = "light"
    else
        vim.o.background = "dark"
    end
end

---Syncs `variant` of TerraConfig with `vim.o.background` of Vim
---@param background "light" | "dark"
---@return nil
function M.sync_terra_variant_with_vim_opt_background(background)
    if background == "light" then
        M.set_options({
            variant = "day",
        })
    end
end

---Select a Terra Theme
---@return nil
function M.select_theme()
    local reload_colorscheme = require("terra-core.init").load
    local capitalize = require("terra-core.actions.utils").capitalize

    ---@param selected_theme TerraConfig.Theme|nil
    local handle_select_theme = function(selected_theme)
        -- Handle abort
        if selected_theme == nil then
            notify("Aborted: No Theme selected!", vim.log.levels.INFO, {
                title = "Warning",
                icon = " ",
            })
            return
        end

        -- Give feedback to user about selected theme
        local formatted_theme = capitalize(selected_theme)

        M.set_options({
            theme = selected_theme,
        })

        M.sync_vim_opt_background_with_terra_variant(vim.g.terra_config.variant)

        reload_colorscheme()

        notify("You selected '" .. formatted_theme .. "'!", vim.log.levels.INFO, {
            title = formatted_theme,
            icon = vim.g.terra_config.icons[selected_theme],
        })
    end

    ---@param item unknown
    ---@return string
    local format_item = function(item)
        return vim.g.terra_config.icons[item] .. "  " .. capitalize(item)
    end

    -- Open select menu to choose a theme
    vim.ui.select(config.themes, {
        prompt = "Terra - Please select a Theme:",
        -- NOTE: The `telescope` property will get gracefully disregarded if telescope or dressing.nvim is not present
        telescope = require("telescope.themes").get_dropdown(),
        format_item = format_item,
    }, handle_select_theme)
end

---Select a Terra Variant
---@return nil
function M.select_variant()
    local reload_colorscheme = require("terra-core.init").load
    local capitalize = require("terra-core.actions.utils").capitalize

    ---@param selected_variant string|nil
    local handle_select_variant = function(selected_variant)
        -- Handle abort
        if selected_variant == nil then
            notify("Aborted: No variant selected!", vim.log.levels.INFO, {
                title = "Info",
                icon = " ",
            })
            return
        end

        if selected_variant == "day" then
            notify("`day` variants for nvim are not ready yet! Abort!")
            return
        end

        -- Give feedback to user about selected variant
        local formatted_variant = capitalize(selected_variant)

        notify("You selected '" .. formatted_variant .. "'!", vim.log.levels.INFO, {
            title = formatted_variant,
            icon = vim.g.terra_config.icons[selected_variant],
        })

        M.set_options({
            variant = selected_variant,
        })

        M.sync_vim_opt_background_with_terra_variant(vim.g.terra_config.variant)

        reload_colorscheme()
    end

    ---@param item unknown
    ---@return string
    local format_item = function(item)
        return capitalize(item)
    end

    -- Open select menu to choose a variant
    vim.ui.select(config.variants, {
        prompt = "Terra - Please select a variant",
        -- NOTE: The `telescope` property will get gracefully disregarded if telescope or dressing.nvim is not present
        telescope = require("telescope.themes").get_dropdown(),
        format_item = format_item,
    }, handle_select_variant)
end

---Runtime validation for `theme` setting
---@param theme TerraConfig.Theme
---@return boolean
function M.validate_theme(themes, theme)
    if vim.tbl_contains(themes, theme) then
        return true
    else
        return false
    end
end

return M
