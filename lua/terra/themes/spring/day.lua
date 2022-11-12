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
    "#EFF0E7",
}

---@class Palette Base theme color pallette
M.palette = {
    black = M.primary[3],
    grey = M.primary[4], -- FIX: grey/gray

    dark_red = "#af4522",
    red = "#d4592f",

    dark_green = "#44913e",
    green = "#47a940",

    dark_yellow = "#e07221",
    yellow = "#e1a122",

    dark_blue = "#2f69a2",
    blue = "#4780ba",

    dark_purple = "#a1619c",
    purple = "#a582cb",

    dark_cyan = "#33995E",
    cyan = "#46ba67",

    light_gray = M.primary[9],
    white = M.primary[11],
}

-- NOTE: Build out and improve and align semantics with vscode
---Second Level Semantics Color Definitions which have to be based on the Palette colors
---@type TerraSemantics
M.semantic = {
    bg = {
        dark,
    },

    bg0 = M.primary[9],
    bg1 = M.palette.white,
    bg2 = M.primary[8],
    bg3 = M.primary[7],

    fg = M.palette.black,
    fg_active = M.palette.yellow,
    fg_dimmed = M.palette.grey,

    diff_add = M.palette.green,
    diff_delete = M.palette.red,
    diff_change = M.palette.blue,
    diff_text = M.palette.dark_blue,
}

---A merged table of the theme primary, palette and semantic colors
---@return TerraColors
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
