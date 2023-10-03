local darken = require("terra-core.actions.color").darken

local M = {}

---@type TerraColors.Debug
M.debug = {
    neon_pink = "#FF69B4",
    electric_lime = "#CCFF00",
    vivid_cyan = "#00FFFF",
}

---@type TerraColors.Primaries
M.primaries = {
    -- Lows
    "#141535",
    "#17193c",
    "#1a1d43",
    "#1a1d4e",

    -- Mids
    "#2e5385",
    "#345d98",
    "#3b6aab",
    "#4176be",

    -- Highs
    "#96deea",
    "#abe6ee",
    "#c0ebf3",
    "#d6f3f7",
}

---@type TerraColors.Palette
M.palette = {
    black = M.primaries[4],
    gray = M.primaries[5],

    dark_red = "#e91538",
    red = "#ee437c",

    dark_green = "#93f30c",
    green = "#ccf20d",

    dark_yellow = "#ff932c",
    yellow = "#fabd3d",

    dark_blue = "#8a7fff",
    blue = "#82acff",

    dark_magenta = "#ff4aa5",
    magenta = "#ff81c3",

    dark_cyan = "#24f58c",
    cyan = "#51fbdc",

    light_gray = M.primaries[9],
    white = M.primaries[11],
}

---@type TerraColors.Semantics
M.semantics = {
    bg = {
        primary = {
            dark = M.primaries[1],
            main = M.primaries[2],
            light = M.primaries[3],
        },
        secondary = {
            dark = M.primaries[4],
            main = M.primaries[5],
            light = M.primaries[6],
        },
        active = M.primaries[5],
        match = {
            active = darken(M.palette.magenta, 0.35, M.primaries[3]),
            passive = darken(M.palette.magenta, 0.15, M.primaries[1]),
        },
        diff = {
            add = M.palette.green,
            delete = M.palette.red,
            change = M.palette.blue,
            text = M.palette.dark_blue,
        },
    },
    fg = {
        primary = {
            dark = M.primaries[10],
            main = M.primaries[11],
            light = M.primaries[12],
        },
        secondary = {
            dark = M.primaries[7],
            main = M.primaries[8],
            light = M.primaries[9],
        },
        active = M.palette.green,
        invert = M.primaries[2],
        neutral = M.primaries[6],
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
        debug = M.debug,
        primaries = M.primaries,
        palette = M.palette,
        semantics = M.semantics,
    }
end

return M
