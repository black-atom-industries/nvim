local lib = require("black-atom-core.lib")

local M = {}

---@type BlackAtomCore.Colors.Primaries
M.primaries = {
    -- Lows
    "#101010",
    "#121212",
    "#191919",
    "#1c1f1e",

    -- Mids
    "#3e4441",
    "#565f5a",
    "#606a65",
    "#79857f",

    -- Highs
    "#a3aba7",
    "#afb7b3",
    "#c9cfcc",
    "#d6dad8",
}

---@type BlackAtomCore.Colors.Palette
M.palette = {
    black = M.primaries[4],
    gray = M.primaries[5],

    dark_red = "#a991d5",
    red = "#b8a7d9",

    dark_green = "#4a9a6c",
    green = "#64b485",

    dark_yellow = "#a7bfb3",
    yellow = "#cee2d8",

    dark_blue = "#86918c",
    blue = "#b0b7b4",

    dark_magenta = "#a498e9",
    magenta = "#beb5ef",

    dark_cyan = "#5eba92",
    cyan = "#79d2ab",

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

---@type BlackAtomCore.ThemeColors
M.colors = {
    none = "NONE",
    primaries = M.primaries,
    palette = M.palette,
    semantics = M.semantics,
}

---@type BlackAtomCore.ThemeMeta
M.meta = {
    key = "black-atom-dark",
    label = "Black Atom Dark",
    collection_key = "default",
    collection_label = "Default",
    appearance = "dark",
    icon = " 󰖔 ",
    status = "beta",
    module_path = "black-atom-core.themes.black-atom-dark",
}

return M
