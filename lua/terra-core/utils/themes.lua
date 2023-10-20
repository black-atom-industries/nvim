local M = {}

---Returns a ordered list of theme keys (based on their `order` property)
---@param themes TerraConfig.ThemeDefinitionMap
---@return TerraConfig.ThemeKey[]
function M.get_ordered_theme_keys(themes)
    local ordered_theme_keys = {}

    for _, theme in pairs(themes) do
        table.insert(ordered_theme_keys, theme.order, theme.key)
    end

    return ordered_theme_keys
end

--- Get all unique variant keys from all themes
---@param themes TerraConfig.ThemeDefinitionMap
---@return TerraConfig.ThemeVariantKey[]
function M.get_sorted_variant_keys(themes)
    local sorted_variant_keys = {}

    for _, theme in pairs(themes) do
        for _, variant in pairs(theme.variants) do
            -- if the variant is not already in the array, add it
            if not vim.tbl_contains(sorted_variant_keys, variant.key) then
                table.insert(sorted_variant_keys, variant.key)
            end
        end
    end

    return sorted_variant_keys
end

---Get a property value from a theme variant
---@param themes TerraConfig.ThemeDefinitionMap
---@param theme_key TerraConfig.ThemeKey
---@param variant_key TerraConfig.ThemeVariantKey
---@param property string
function M.get_variant_value(themes, theme_key, variant_key, property)
    return themes[theme_key].variants[variant_key][property]
end

return M
