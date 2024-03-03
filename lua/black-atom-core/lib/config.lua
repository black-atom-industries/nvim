local themes = require("black-atom-core.themes")

local M = {}

function M.set_config_defaults()
    BlackAtomCoreConfig = vim.tbl_deep_extend("force", {}, require("black-atom-core.config").default_config)
end

---Sets options for the BlackAtomCore.Config during runtime
---@param options BlackAtomCore.Config
---@return nil
function M.set_config(options)
    BlackAtomCoreConfig = vim.tbl_deep_extend("force", BlackAtomCoreConfig, options)
end

---Notify the user about the status of the current theme
---@param themes BlackAtomCore.Config.ThemeDefinitionMap
---@param theme_key? BlackAtomCore.Config.ThemeKey
---@param on_allow? fun(): nil Callback which is called when the theme is allowed to use
---@return nil
---@diagnostic disable-next-line: redefined-local
function M.dev_status_warning(themes, theme_key, on_allow)
    theme_key = theme_key or BlackAtomCoreConfig.theme

    local theme = require("black-atom-core.lib.themes").get_theme_definition(themes, theme_key)
    local status = theme.status

    if status == "development" then
        local error_message = string.format(
            "Theme '%s %s' is currently in %s status.\nThis is not ready to be used. Theme switch aborted.",
            theme.label,
            theme.label,
            theme.status
        )

        require("black-atom-core.lib.ui").notify(error_message, vim.log.levels.ERROR, {
            title = "Black Atom Core - Error",
            timeout = 5000,
            icon = " ",
        })
    elseif status == "beta" then
        local error_message = string.format(
            "Theme '%s %s' is currently in %s status.\nBugs and Errors are to be expected. Use at your own risk.",
            theme.label,
            theme.key.label,
            theme.key.status
        )

        require("black-atom-core.lib.ui").notify(error_message, vim.log.levels.WARN, {
            title = "Black Atom Core - Warning",
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

---Select a theme during runtime
---@return nil
function M.select_theme()
    local sorted_theme_keys = require("black-atom-core.lib.themes").get_ordered_theme_keys(themes)

    -- filter the current theme_key from the list of themes
    local theme_select_items = vim.tbl_filter(function(theme_key)
        return theme_key ~= BlackAtomCoreConfig.theme
    end, sorted_theme_keys)

    vim.ui.select(
        theme_select_items,
        {
            prompt = "Black Atom Core - Please select a Theme: ",
            format_item = function(theme_key)
                ---@type BlackAtomCore.Config.ThemeDefinition
                local theme = require("black-atom-core.lib.themes").get_theme_definition(themes, theme_key)

                return string.format("%s %s %s %s", theme.icon, theme.label)
            end,
        },
        ---@param selected_theme_key BlackAtomCore.Config.ThemeKey|nil
        function(selected_theme_key)
            if selected_theme_key == nil then
                require("black-atom-core.lib.ui").notify("Aborted: No Theme selected!", vim.log.levels.INFO, {
                    title = "Warning",
                    icon = " ",
                })
                return
            end

            ---@type BlackAtomCore.Config.ThemeDefinition
            local theme = require("black-atom-core.lib.themes").get_theme_definition(themes, selected_theme_key)

            M.dev_status_warning(themes, selected_theme_key, function()
                M.set_config({
                    theme = selected_theme_key,
                })

                local colorscheme_name = require("black-atom-core.lib.themes").get_variant_value(
                    themes,
                    selected_theme_key,
                    "colorscheme_name"
                )

                require("black-atom-core").load_colorscheme(colorscheme_name)

                require("black-atom-core.lib.ui").notify("You selected '" .. theme.label .. "'!", vim.log.levels.INFO, {
                    title = theme.label,
                    icon = theme.icon,
                })
            end)
        end
    )
end

return M
