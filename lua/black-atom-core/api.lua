---@class BlackAtomCore.API
local M = {}

---@return BlackAtomCore.ThemeDefinition
local function load_theme_definition(theme)
    local config = require("black-atom-core.config").get()
    theme = theme or config.theme
    return require("black-atom-core.themes" .. theme)
end

---Returns the currently set theme meta.
---@param theme? string An optional theme key to get the meta for. Otherwise, the currently set theme will be used.
---@return BlackAtomCore.ThemeMeta
function M.get_theme_meta(theme)
    return load_theme_definition(theme).meta
end

---Returns the colors for the currently set theme and variant.
---@param theme? string An optional theme key to get the colors for. Otherwise, the currently set theme will be used.
---@return BlackAtomCore.ThemeColors
function M.get_colors(theme)
    return load_theme_definition(theme).colors
end

---Returns the currently set theme.
---@param theme? string An optional theme key to get the theme for. Otherwise, the currently set theme will be used.
---@return BlackAtomCore.ThemeDefinition
function M.get_theme(theme)
    return load_theme_definition(theme)
end

return M
