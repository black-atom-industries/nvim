local extend_defaults = require("terra.actions.highlights").extend_defaults

local M = {}

---@type TerraPrimaryColors
M.primary = {
    -- Lows
    "#192125",
    "#1d272c",
    "#212c31",
    "#24333a",

    -- Mids
    "#475e6a",
    "#516c7a",
    "#5b7988",
    "#7393a3",

    -- Highs
    "#d3cec5",
    "#dfdbd3",
    "#e9e6e1",
    "#f4f3f1",
}

---@type TerraPaletteColors
M.palette = {
    black = M.primary[4],
    gray = M.primary[5],

    dark_red = "#d9663f",
    red = "#e5744e",

    dark_green = "#4ca144",
    green = "#83C57D",

    dark_yellow = "#ffa564",
    yellow = "#ffcc69",

    dark_blue = "#8fb7ef",
    blue = "#78cfec",

    dark_magenta = "#c77bb9",
    magenta = "#bf9de2",

    dark_cyan = "#40bfa0",
    cyan = "#6ce0c4",

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
        dark = M.primary[7],
        main = M.primary[10],
        light = M.primary[12],
        active = M.palette.cyan,
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
