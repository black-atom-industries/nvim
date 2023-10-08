local map = require("terra-core.actions.utils").map

local M = {}

---@type TerraConfig.ThemeDefinitionMap
M.themes = {
    spring = {
        order = 1,
        key = "spring",
        label = "Spring",
        icon = "󰧲 ",
        group = "seasons",
        path = "terra-core.themes.spring",
        variants = {
            day = {
                key = "day",
                label = "Day",
                icon = " ",
                status = "development",
                colorscheme_name = "terra_spring_day",
                path = "terra-core.themes.spring.day",
            },
            night = {
                key = "night",
                label = "Night",
                icon = "󰖔 ",
                status = "release",
                colorscheme_name = "terra_spring_night",
                path = "terra-core.themes.spring.night",
            },
        },
    },
    summer = {
        order = 2,
        key = "summer",
        label = "Summer",
        icon = "󰂒 ",
        path = "terra-core.themes.summer",
        group = "seasons",
        variants = {
            day = {
                key = "day",
                label = "Day",
                icon = " ",
                status = "development",
                colorscheme_name = "terra_summer_day",
                path = "terra-core.themes.summer.day",
            },
            night = {
                key = "night",
                label = "Night",
                icon = "󰖔 ",
                status = "release",
                colorscheme_name = "terra_summer_night",
                path = "terra-core.themes.summer.night",
            },
        },
    },
    fall = {
        order = 3,
        label = "Fall",
        key = "fall",
        icon = " ",
        path = "terra-core.themes.fall",
        group = "seasons",
        variants = {
            day = {
                key = "day",
                label = "Day",
                icon = " ",
                status = "development",
                colorscheme_name = "terra_fall_day",
                path = "terra-core.themes.fall.day",
            },
            night = {
                key = "night",
                label = "Night",
                icon = "󰖔 ",
                status = "release",
                colorscheme_name = "terra_fall_night",
                path = "terra-core.themes.fall.night",
            },
        },
    },
    winter = {
        order = 4,
        label = "Winter",
        key = "winter",
        icon = " ",
        path = "terra-core.themes.winter",
        group = "seasons",
        variants = {
            day = {
                key = "day",
                label = "Day",
                icon = " ",
                status = "development",
                colorscheme_name = "terra_winter_day",
                path = "terra-core.themes.winter.day",
            },
            night = {
                key = "night",
                label = "Night",
                icon = "󰖔 ",
                status = "beta",
                colorscheme_name = "terra_winter_night",
                path = "terra-core.themes.winter.night",
            },
        },
    },
}

--- Get all unique variant keys from all themes
---@return TerraConfig.ThemeVariantKey[]
function M.get_sorted_variant_keys()
    local sorted_variant_keys = {}

    for _, theme in pairs(M.themes) do
        for _, variant in pairs(theme.variants) do
            -- if the variant is not already in the array, add it
            if not vim.tbl_contains(sorted_variant_keys, variant.key) then
                table.insert(sorted_variant_keys, variant.key)
            end
        end
    end

    return sorted_variant_keys
end

function M.get_sorted_theme_keys()
    ---Convert themes to a sorted array of themes without the theme key
    local function get_sorted_themes()
        local themesArray = {}

        -- Insert each theme into the array
        for _, v in pairs(M.themes) do
            table.insert(themesArray, v)
        end

        -- Sort the array based on the 'order' field of each theme
        table.sort(themesArray, function(a, b)
            return a.order < b.order
        end)

        return themesArray
    end

    local sorted_theme_keys = map(get_sorted_themes(), function(theme)
        return theme.key
    end)

    return sorted_theme_keys
end

---Get a property value from a theme variant
---@param theme_key TerraConfig.ThemeKey
---@param variant_key TerraConfig.ThemeVariantKey
---@param property string
function M.get_variant_value(theme_key, variant_key, property)
    return M.themes[theme_key].variants[variant_key][property]
end

return M
