local M = {}

---@type TerraConfig
M.default_config = {
    loaded = false,
    debug = false,

    theme = "spring",
    variant = "night",

    -- TODO: resolve
    icons = {
        spring = " ",
        summer = " ",
        fall = " ",
        winter = " ",
        kurzgesagt = " ",
        control = " ",
    },

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
        functions = {
            bold = true,
        },
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
