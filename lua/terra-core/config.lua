local M = {}

---@type TerraConfig
M.default_config = {
    debug = false,
    theme = "spring",
    variant = "night",
    transparency = "none",
    term_colors = true,
    ending_tildes = false,
    style_presets = {
        cmp_kind_color_mode = "bg",
        dark_sidebars = true,
    },
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
    diagnostics = {
        undercurl = false,
        background = false,
    },
}

return M
