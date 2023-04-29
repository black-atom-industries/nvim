local darken = require("terra.actions.color").darken

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
    "#0b1014",
    "#131a1e",
    "#1d262c",
    "#29353d",

    -- Mids
    "#405058",
    "#51636a",
    "#62777c",
    "#738a8e",

    -- Highs
    "#94a3a9",
    "#a6b4bf",
    "#b8c6d4",
    "#cae7ea",
}

---@type TerraColors.Palette
M.palette = {
    black = M.primaries[4],
    gray = M.primaries[5],

    dark_red = "#d24c4c",
    red = "#f07575",

    dark_green = "#57a95e",
    green = "#78cc7e",

    dark_yellow = "#fd9a68",
    yellow = "#f2bc6a",

    dark_blue = "#7ca6e6",
    blue = "#8acbf9",

    dark_magenta = "#c688dd",
    magenta = "#e994d4",

    dark_cyan = "#47a9b8",
    cyan = "#75d0d7",

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
        match = darken(M.palette.magenta, 0.25, M.primaries[1]),
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
        neutral = M.primaries[5],
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
