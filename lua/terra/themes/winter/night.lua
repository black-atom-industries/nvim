local extend_defaults = require("terra.actions.highlights").extend_defaults

local M = {}

---@type TerraPrimaryColors
M.primary = {
    "#1a1e25",
    "#1f232b",
    "#232831",
    "#272d38",
    "#2E3440",
    "#3B4252",
    "#434C5E",
    "#4C566A",
    "#5B6A89",
    "#D8DEE9",
    "#E5E9F0",
    "#ECEFF4",
}

---@type TerraPaletteColors
M.palette = {
    black = M.primary[4],
    gray = M.primary[6],

    dark_red = "#d9663f",
    red = "#db7958",

    dark_green = "#529a4b",
    green = "#83C57D",

    dark_yellow = "#ffa869",
    yellow = "#fbc967",

    dark_blue = "#45b2d1",
    blue = "#76c9e2",

    dark_magenta = "#c280b6",
    magenta = "#bfa3dc",

    dark_cyan = "#40bfa0",
    cyan = "#75d7bf",

    light_gray = M.primary[9],
    white = M.primary[11],
}

---@type TerraSemanticColors
M.semantic = {
    bg = {
        dark = M.primary[1],
        main = M.primary[2],
        light = M.primary[3],
        active = M.primary[5],
        diff = {
            add = M.palette.green,
            delete = M.palette.red,
            change = M.palette.blue,
            text = M.palette.dark_blue,
        },
    },
    fg = {
        dark = M.primary[9],
        main = M.primary[10],
        light = M.primary[11],
        active = M.palette.yellow,
        neutral = M.primary[5],
        diff = {
            add = M.palette.green,
            delete = M.palette.red,
            change = M.palette.blue,
            text = M.palette.dark_blue,
        },
    },
}

---@return TerraColors
M.colors = function()
    return {
        none = "none",
        primary = M.primary,
        palette = M.palette,
        semantic = M.semantic,
    }
end

M.highlights = extend_defaults(M.colors(), {})

return M
