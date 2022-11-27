local extend_defaults = require("terra.actions.highlights").extend_defaults

local M = {}

---@class Primary
M.primary = {
    "#141F19",
    "#17251E",
    "#1B2C24",
    "#284336",
    "#4E7E66",
    "#5D9579",
    "#71A78C",
    "#89B69F",
    "#A1C4B2",
    "#B8D3C6",
    "#D0E2D9",
    "#E7F0EC",
}

---@class Palette Base theme color pallette
M.palette = {
    black = M.primary[1],
    gray = M.primary[4],

    dark_red = "#d6582e",
    red = "#da714d",

    dark_green = "#5b9257",
    green = "#83c67f",

    dark_yellow = "#faa04c",
    yellow = "#F2C14E",

    dark_blue = "#6199d1",
    blue = "#7CA6CF",

    dark_purple = "#B07BAC",
    purple = "#BFA9D6",

    dark_cyan = "#5aaf7d",
    cyan = "#75bd93",

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
    fg_dimmed = M.primary[5],

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
