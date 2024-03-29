---@class BlackAtomCore.API
local M = {}

---Loads and returns a registered theme definition
---@return BlackAtomCore.ThemeDefinition
local function load_registered_theme_definition(config, module_path)
    return require(config.registered_themes[module_path].module_path)
end

---Returns the currently set theme meta.
---@param theme? string An optional theme key to get the meta for. Otherwise, the currently set theme will be used.
---@return BlackAtomCore.ThemeMeta
function M.get_theme_meta(theme)
    local config = require("black-atom-core.config").get()

    theme = theme or config.theme

    return load_registered_theme_definition(config, theme).meta
end

---Returns the colors for the currently set theme and variant.
---@param theme? string An optional theme key to get the colors for. Otherwise, the currently set theme will be used.
---@return BlackAtomCore.ThemeColors
function M.get_colors(theme)
    local config = require("black-atom-core.config").get()

    theme = theme or config.theme

    return load_registered_theme_definition(config, theme).colors
end

---Returns the currently set theme.
---@param theme? string An optional theme key to get the theme for. Otherwise, the currently set theme will be used.
---@return BlackAtomCore.ThemeDefinition
function M.get_theme(theme)
    local config = require("black-atom-core.config").get()

    theme = theme or config.theme

    return load_registered_theme_definition(config, theme)
end

return M
