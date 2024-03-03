local M = {}

---Returns a ordered list of theme keys (based on their `order` property)
---@param themes BlackAtomCore.Config.ThemeDefinitionMap
---@return BlackAtomCore.Config.ThemeKey[]
function M.get_ordered_theme_keys(themes)
    local ordered_theme_keys = {}

    for _, theme in pairs(themes) do
        table.insert(ordered_theme_keys, theme.order, theme.key)
    end

    return ordered_theme_keys
end

--- Get all unique theme keys from all theme definitions
---@param themes BlackAtomCore.Config.ThemeDefinitionMap
---@return BlackAtomCore.Config.ThemeKey[]
function M.get_sorted_theme_keys(themes)
    local sorted_theme_keys = {}

    for theme_key in pairs(themes) do
        if not vim.tbl_contains(sorted_theme_keys, theme_key) then
            table.insert(sorted_theme_keys, theme_key)
        end
    end

    return sorted_theme_keys
end

---Get a property value from a theme definition
---@param themes BlackAtomCore.Config.ThemeDefinitionMap
---@param theme_key BlackAtomCore.Config.ThemeKey
---@param property string
function M.get_variant_value(themes, theme_key, property)
    return themes[theme_key][property]
end

---Get the theme definition for a given theme key
---@param themes BlackAtomCore.Config.ThemeDefinitionMap
---@param theme_key BlackAtomCore.Config.ThemeKey
---@return BlackAtomCore.Config.ThemeDefinition
function M.get_theme_definition(themes, theme_key)
    return themes[theme_key]
end

return M
