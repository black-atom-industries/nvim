local M = {}

---@type TerraConfig.Time[]
M.times = {
    "night",
    "day",
}

---The name of a theme needs to be equal to the name of the folder in `lua/terra/themes/`!
---@type TerraConfig.Season[]
M.seasons = {
    "spring",
    "summer",
    "fall",
    "winter",
    "control_beta",
    "kurzgesagt_beta",
}

---@type TerraConfig
M.default_config = {
    debug = false,

    season = M.seasons[1],
    time = M.times[1],

    icons = {
        spring = " ",
        summer = " ",
        fall = " ",
        winter = " ",
        kurzgesagt_beta = " ",
        control_beta = " ",
    },

    select_season = "<leader>Ts",
    select_time = "<leader>Tt",

    transparent = false,
    dim_inactive_panes = false,
    term_colors = true,
    ending_tildes = false,

    code_style = {
        comments = {
            italic = true,
        },
        keywords = {
            bold = true,
            italic = true,
        },
        functions = {},
        strings = {
            italic = true,
        },
        variables = {},
        messages = {
            bold = true,
        },
    },

    colors = {},

    diagnostics = {
        darker = false,
        undercurl = false,
        background = false,
    },
}

return M
