local utils = require("terra-core.utils")

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
    "#1d1e20",
    "#232427",
    "#27282b",
    "#2b2c30",

    -- Mids
    "#3a3d47",
    "#505563",
    "#575f72",
    "#6d7391",

    -- Highs
    "#97a2b6",
    "#a0acc5",
    "#bcc9db",
    "#c9d7e7",
}

---@type TerraColors.Palette
M.palette = {
    black = M.primaries[4],
    gray = M.primaries[5],

    dark_red = "#a65959",
    red = "#b86a6a",

    dark_green = "#507765",
    green = "#5e9e8b",

    dark_yellow = "#eba778",
    yellow = "#d3b17a",

    dark_blue = "#7483a5",
    blue = "#909dbe",

    dark_magenta = "#b793b7",
    magenta = "#c8adc8",

    dark_cyan = "#568383",
    cyan = "#67a5a5",

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
        active = M.primaries[8],
        match = {
            active = utils.color.darken(M.palette.magenta, 0.35, M.primaries[3]),
            passive = utils.color.darken(M.palette.magenta, 0.15, M.primaries[1]),
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
        active = M.palette.cyan,
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
