local extend_defaults = require("terra.actions.highlights").extend_defaults

local M = {}

---@class Primary
M.primary = {
    "#141F19",
    "#17251E",
    "#123524",
    "#1B5037",
    "#256C49",
    "#50946A",
    "#79B791",
    "#ADE3C9",
    "#D6F1E4",
}

---@class Palette Base theme color pallette
M.palette = {
    black = M.primary[1],
    grey = "#455F56",

    dark_red = "#DA5B50",
    red = "#D67676",

    dark_green = M.primary[5],
    green = "#619B8A",

    dark_yellow = "#DD9046",
    yellow = "#F2C14E",

    dark_blue = "#629AD2",
    blue = "#7CA6CF",

    dark_purple = "#B07BAC",
    purple = "#BFA9D6",

    dark_cyan = "#47945D",
    cyan = "#7CC08F",

    light_grey = "#9EB6A5",
    white = "#F1E5D6",
}

-- TODO: Build out semantics
---Second Level Semantics Color Definitions which have to be based on the Palette colors
---@class Semantic
M.semantic = {
    bg0 = M.primary[9],
    bg1 = M.palette.white,
    bg2 = M.primary[7],
    bg3 = M.primary[6],

    fg = M.palette.black,
    fg_active = M.palette.yellow,
    fg_dimmed = M.palette.grey,

    diff_add = M.palette.green,
    diff_delete = M.palette.red,
    diff_change = M.palette.blue,
    diff_text = M.palette.dark_blue,
}

---A merged table of the theme primary, palette and semantic colors
---@return Colors
function M.colors()
    return {
        none = "none",
        primary = M.primary,
        palette = M.palette,
        semantic = M.semantic,
    }
end

M.highlights = extend_defaults(M.colors(), {})

return M
