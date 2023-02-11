local extend_defaults = require("terra.actions.highlights").extend_defaults

local M = {}

---@type TerraPrimaryColors
M.primary = {
    -- Lows
    "#222831",
    "#252d38",
    "#2d3644",
    "#323d50",

    -- Mids
    "#47526a",
    "#515d7a",
    "#5b6a88",
    "#7384a3",

    -- Highs
    "#c0c8d6",
    "#ced6e3",
    "#dfe4ec",
    "#eff2f6",
}

---@type TerraPaletteColors
M.palette = {
    black = M.primary[4],
    gray = M.primary[6],

    dark_red = "#d9663f",
    red = "#e5744e",

    dark_green = "#4ca144",
    green = "#85ce7e",

    dark_yellow = "#ffa564",
    yellow = "#ffcc69",

    dark_blue = "#8eb9f2",
    blue = "#69c6e5",

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
        main = M.primary[9],
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
