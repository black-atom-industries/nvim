---@type BlackAtomCore.Config.ThemeDefinitionMap
local themes = {
    spring = {
        order = 1,
        key = "spring",
        label = "Spring",
        icon = "󰧲 ",
        group = "seasons",
        path = "black-atom-core.themes.spring",
        variants = {
            day = {
                key = "day",
                label = "Day",
                icon = " ",
                status = "development",
                colorscheme_name = "terra_spring_day",
                path = "black-atom-core.themes.spring_day",
            },
            night = {
                key = "night",
                label = "Night",
                icon = "󰖔 ",
                status = "release",
                colorscheme_name = "terra_spring_night",
                path = "black-atom-core.themes.spring_night",
            },
        },
    },
    summer = {
        order = 2,
        key = "summer",
        label = "Summer",
        icon = "󰂒 ",
        path = "black-atom-core.themes.summer",
        group = "seasons",
        variants = {
            day = {
                key = "day",
                label = "Day",
                icon = " ",
                status = "development",
                colorscheme_name = "terra_summer_day",
                path = "black-atom-core.themes.summer_day",
            },
            night = {
                key = "night",
                label = "Night",
                icon = "󰖔 ",
                status = "release",
                colorscheme_name = "terra_summer_night",
                path = "black-atom-core.themes.summer_night",
            },
        },
    },
    fall = {
        order = 3,
        label = "Fall",
        key = "fall",
        icon = " ",
        path = "black-atom-core.themes.fall",
        group = "seasons",
        variants = {
            day = {
                key = "day",
                label = "Day",
                icon = " ",
                status = "development",
                colorscheme_name = "terra_fall_day",
                path = "black-atom-core.themes.fall_day",
            },
            night = {
                key = "night",
                label = "Night",
                icon = "󰖔 ",
                status = "release",
                colorscheme_name = "terra_fall_night",
                path = "black-atom-core.themes.fall_night",
            },
        },
    },
    winter = {
        order = 4,
        label = "Winter",
        key = "winter",
        icon = " ",
        path = "black-atom-core.themes.winter",
        group = "seasons",
        variants = {
            day = {
                key = "day",
                label = "Day",
                icon = " ",
                status = "development",
                colorscheme_name = "terra_winter_day",
                path = "black-atom-core.themes.winter_day",
            },
            night = {
                key = "night",
                label = "Night",
                icon = "󰖔 ",
                status = "beta",
                colorscheme_name = "terra_winter_night",
                path = "black-atom-core.themes.winter_night",
            },
        },
    },
}

return themes
