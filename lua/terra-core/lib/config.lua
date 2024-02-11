local themes = require("terra-core.themes")

local M = {}

function M.set_terra_config_defaults()
    TerraConfig = vim.tbl_deep_extend("force", {}, require("terra-core.config"))
end

---Sets options for the TerraConfig during runtime
---@param options TerraConfig -@return nil
function M.set_terra_config(options)
    TerraConfig = vim.tbl_deep_extend("force", TerraConfig, options)
end

---Syncs `vim.o.background` of Vim with `variant` of TerraConfig
---@param variant TerraConfig.ThemeVariantKey
---@return nil
function M.sync_vim_bg_with_terra_variant(variant)
    if variant == "day" then
        vim.o.background = "light"
    else
        vim.o.background = "dark"
    end
end

---Syncs `variant` of TerraConfig with `vim.o.background` of Vim
---@param background "light" | "dark"
---@return nil
function M.sync_terra_variant_with_vim_bg(background)
    if background == "light" then
        M.set_terra_config({
            variant = "day",
        })
    end
end

---Notify the user about the status of the current theme
---@param themes TerraConfig.ThemeDefinitionMap
---@param theme_key? TerraConfig.ThemeKey
---@param variant_key? TerraConfig.ThemeVariantKey
---@param on_allow? fun(): nil Callback which is called when the theme is allowed to use
---@return nil
---@diagnostic disable-next-line: redefined-local
function M.dev_status_warning(themes, theme_key, variant_key, on_allow)
    theme_key = theme_key or TerraConfig.theme
    variant_key = variant_key or TerraConfig.variant

    local theme = themes[theme_key]
    local status = theme.variants[variant_key].status

    if status == "development" then
        local error_message = string.format(
            "Theme '%s %s' is currently in %s status.\nThis is not ready to be used. Theme switch aborted.",
            theme.label,
            theme.variants[variant_key].label,
            theme.variants[variant_key].status
        )

        require("terra-core.lib.ui").notify(error_message, vim.log.levels.ERROR, {
            title = "Terra - Error",
            timeout = 5000,
            icon = " ",
        })
    elseif status == "beta" then
        local error_message = string.format(
            "Theme '%s %s' is currently in %s status.\nBugs and Errors are to be expected. Use at your own risk.",
            theme.label,
            theme.variants[variant_key].label,
            theme.variants[variant_key].status
        )

        require("terra-core.lib.ui").notify(error_message, vim.log.levels.WARN, {
            title = "Terra Config Warning",
            timeout = 5000,
            icon = "",
        })

        if on_allow then
            on_allow()
        end
    else
        if on_allow then
            on_allow()
        end
    end
end

---Select a Terra Theme during runtime
---@return nil
function M.select_theme()
    local sorted_theme_keys = require("terra-core.lib.themes").get_ordered_theme_keys(themes)

    -- filter the current theme_key from the list of themes
    local theme_select_items = vim.tbl_filter(function(theme_key)
        return theme_key ~= TerraConfig.theme
    end, sorted_theme_keys)

    vim.ui.select(
        theme_select_items,
        {
            prompt = "Terra - Please select a Theme: ",
            format_item = function(theme_key)
                ---@type TerraConfig.ThemeDefinition
                local theme = themes[theme_key]

                ---@type TerraConfig.ThemeVariantKey
                local variant_key = TerraConfig.variant

                return string.format(
                    "%s %s %s %s",
                    theme.icon,
                    theme.variants[variant_key].icon,
                    theme.label,
                    theme.variants[variant_key].label
                )
            end,
        },
        ---@param selected_theme_key TerraConfig.ThemeKey|nil
        function(selected_theme_key)
            ---@type TerraConfig.ThemeDefinition
            local themeConfig = themes[selected_theme_key]

            if selected_theme_key == nil then
                require("terra-core.lib.ui").notify("Aborted: No Theme selected!", vim.log.levels.INFO, {
                    title = "Warning",
                    icon = " ",
                })
                return
            end

            M.dev_status_warning(themes, selected_theme_key, TerraConfig.variant, function()
                M.set_terra_config({
                    theme = selected_theme_key,
                })

                -- M.sync_vim_bg_with_terra_variant(TerraConfig.variant)

                local colorscheme_name = require("terra-core.lib.themes").get_variant_value(
                    themes,
                    selected_theme_key,
                    TerraConfig.variant,
                    "colorscheme_name"
                )

                require("terra-core").load_colorscheme(colorscheme_name)

                require("terra-core.lib.ui").notify("You selected '" .. themeConfig.label .. "'!", vim.log.levels.INFO, {
                    title = themeConfig.label,
                    icon = themeConfig.icon,
                })
            end)
        end
    )
end

---Select a Terra Variant during runtime
---@return nil
function M.select_variant()
    ---@param theme TerraConfig.ThemeDefinition
    ---@param variant_key TerraConfig.ThemeVariantKey
    local function formatted_variant(theme, variant_key)
        return string.format(
            "%s %s %s %s",
            theme.icon,
            theme.variants[variant_key].icon,
            theme.label,
            theme.variants[variant_key].label
        )
    end

    local sorted_variant_keys = require("terra-core.lib.themes").get_sorted_variant_keys(themes)

    -- filter out current variant_key from the list of variants
    local variant_select_items = vim.tbl_filter(function(variant_key)
        return variant_key ~= TerraConfig.variant
    end, sorted_variant_keys)

    vim.ui.select(
        variant_select_items,
        {
            prompt = "Terra - Please select a variant for your current theme: ",
            format_item = function(variant_key)
                return formatted_variant(themes[TerraConfig.theme], variant_key)
            end,
        },

        ---@param selected_variant_key TerraConfig.ThemeVariantKey|nil
        function(selected_variant_key)
            if selected_variant_key == nil then
                require("terra-core.lib.ui").notify("Aborted: No variant selected!", vim.log.levels.INFO, {
                    title = "Info",
                    icon = " ",
                })
                return
            end

            ---@type TerraConfig.ThemeKey
            local current_theme_key = TerraConfig.theme
            local current_theme = themes[current_theme_key]
            local formatted_variant_label = formatted_variant(current_theme, selected_variant_key)

            M.dev_status_warning(themes, current_theme_key, selected_variant_key, function()
                require("terra-core.lib.ui").notify(
                    string.format("You selected '%s'!", formatted_variant_label),
                    vim.log.levels.INFO,
                    {
                        title = formatted_variant_label,
                        icon = current_theme.icon,
                    }
                )

                M.set_terra_config({
                    variant = selected_variant_key,
                })

                M.sync_vim_bg_with_terra_variant(TerraConfig.variant)

                local colorscheme_name = require("terra-core.lib.themes").get_variant_value(
                    themes,
                    TerraConfig.theme,
                    selected_variant_key,
                    "colorscheme_name"
                )

                require("terra-core").load_colorscheme(colorscheme_name)
            end)
        end
    )
end

return M
