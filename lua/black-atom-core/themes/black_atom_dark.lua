local lib = require("black-atom-core.lib")

local M = {}

---@type BlackAtomCore.Colors.Debug
M.debug = {
    neon_pink = "#FF007A", -- A deeper shade of pink for a more subtle neon effect
    electric_lime = "#A8E05F", -- A less bright, more greenish lime for better readability
    vivid_cyan = "#00D7FF", -- A slightly deeper cyan for better contrast
}

---@type BlackAtomCore.Colors.Primaries
M.primaries = {
    "#151513",
    "#1B1A18",
    "#262623",
    "#2F2E2A",

    "#363531",
    "#3C3B37",
    "#42413C",
    "#787875",

    "#9D9D9B",
    "#BABAB9",
    "#D4D3D3",
    "#EAEAEA",
}

---@type BlackAtomCore.Colors.Palette
M.palette = {
    black = M.primaries[4],
    gray = M.primaries[5],

    dark_red = "#808080",
    red = M.primaries[8],

    dark_green = "#849781",
    green = "#a0c5a0",

    dark_yellow = "#d29d77",
    yellow = "#ceb47e",

    dark_blue = "#81a1b1",
    blue = "#85aaad",

    dark_magenta = M.primaries[9],
    magenta = M.primaries[10],

    dark_cyan = "#87BBA2",
    cyan = "#C9E4CA",

    light_gray = M.primaries[9],
    white = M.primaries[11],
}

---@type BlackAtomCore.Colors.Semantics
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
        active = M.primaries[4],
        match = {
            active = lib.color.darken(M.palette.magenta, 0.25, M.primaries[1]),
            passive = lib.color.darken(M.palette.magenta, 0.15, M.primaries[1]),
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

---@return BlackAtomCore.Colors
M.colors = {
    none = "NONE",
    debug = M.debug,
    primaries = M.primaries,
    palette = M.palette,
    semantics = M.semantics,
}

return M.colors
