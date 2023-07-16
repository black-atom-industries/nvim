local M = {}

---@type TerraConfig.Variant[]
M.variants = {
    "night",
    "day",
}

---The name of a theme needs to be equal to the name of the folder in `lua/terra/themes/`!
---@type TerraConfig.Theme[]
M.themes = {
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

    theme = M.themes[1],
    variant = M.variants[1],

    icons = {
        spring = " ",
        summer = " ",
        fall = " ",
        winter = " ",
        kurzgesagt_beta = " ",
        control_beta = " ",
    },

    select_theme = "<leader>Tt",
    select_variant = "<leader>Tv",

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
