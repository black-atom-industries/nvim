local M = {}

---@type Season[]
M.seasons = {
    "spring",
    "summer",
    "winter",
}

---@type TerraConfig
M.default_config = {
    season = M.seasons[1],
    time = "night",

    icons = {
        spring = " ",
        summer = " ",
        fall = " ",
        winter = " ",
    },

    select_season = "<leader>Ts",
    select_time = "<leader>Tt",

    transparent = false,
    term_colors = true,
    ending_tildes = false,
    cmp_itemkind_reverse = false,

    code_style = {
        comments = {
            italic = true,
        },
        keywords = {
            bold = true,
        },
        functions = {},
        strings = {
            italic = true,
        },
        variables = {},
    },

    colors = {},
    highlights = {},

    diagnostics = {
        darker = false,
        undercurl = false,
        background = false,
    },
}

return M
