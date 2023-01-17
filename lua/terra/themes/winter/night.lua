local extend_defaults = require("terra.actions.highlights").extend_defaults

local M = {}

---@class Primary
M.primary = {
    "#14171C",
    "#191C22",
    "#1d2128",
    "#21262f",
    "#2E3440",
    "#3B4252",
    "#434C5E",
    "#4C566A",
    "#5B6A89",
    "#D8DEE9",
    "#E5E9F0",
    "#ECEFF4",
}

---@class Palette Base theme color pallette
M.palette = {
    black = M.primary[4],
    gray = M.primary[6],

    dark_red = "#D5552A",
    red = "#D96E4A",

    dark_green = "#5B8F56",
    green = "#83C57D",

    dark_yellow = "#F99B48",
    yellow = "#F1BF4B",

    dark_blue = "#6299D0",
    blue = "#79A3CD",

    dark_purple = "#AF79AB",
    purple = "#BFA9D6",

    dark_cyan = "#56AE89",
    cyan = "#75BD93",

    light_gray = M.primary[9],
    white = M.primary[11],
}

-- NOTE: Build out and improve and align semantics with vscode
---Second Level Semantics Color Definitions which have to be based on the Palette colors
---@class Semantic
M.semantic = {
    bg0 = M.primary[1],
    bg1 = M.primary[2],
    bg2 = M.primary[3],
    bg3 = M.primary[5],

    fg = M.palette.white,
    fg_active = M.palette.yellow,
    fg_dimmed = M.palette.gray,

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
