local lib = require("black-atom.lib")

local M = {}

---@type BlackAtom.Colors.Primaries
M.primaries = {
    -- Lows
    "#304a3f",
    "#385547",
    "#416353",
    "#517b67",

    -- Mids
    "#55816a",
    "#62937a",
    "#78a48e",
    "#8bb19e",

    -- Highs
    "#d3cec5",
    "#dad6cd",
    "#e4e1db",
    "#eae7e2",
}

---@type BlackAtom.Colors.Palette
M.palette = {
    black = M.primaries[1],
    gray = M.primaries[4],

    dark_red = "#d6582e",
    red = "#da714d",

    dark_green = "#0d8a4e",
    green = "#0f9d58",

    dark_yellow = "#ea7b14",
    yellow = "#e0a618",

    dark_blue = "#3473b2",
    blue = "#588dc1",

    dark_magenta = "#B07BAC",
    magenta = "#a586c6",

    dark_cyan = "#0d8a76",
    cyan = "#0f9d6d",

    light_gray = M.primaries[9],
    white = M.primaries[11],
}

---@type BlackAtom.Colors.Semantics
M.semantics = {
    bg = {
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
        active = M.primaries[5],
        match = {
            active = lib.color.darken(M.palette.magenta, 0.25, M.primaries[12]),
            passive = lib.color.darken(M.palette.magenta, 0.15, M.primaries[12]),
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
            dark = M.primaries[1],
            main = M.primaries[2],
            light = M.primaries[3],
        },
        secondary = {
            dark = M.primaries[4],
            main = M.primaries[5],
            light = M.primaries[6],
        },
        active = M.palette.yellow,
        invert = M.primaries[11],
        -- this is a comment
        neutral = M.primaries[7],
        diff = {
            add = M.palette.green,
            delete = M.palette.red,
            change = M.palette.blue,
            text = M.palette.dark_blue,
        },
    },
}

---@type BlackAtom.ThemeColors
M.colors = {
    none = "NONE",
    primaries = M.primaries,
    palette = M.palette,
    semantics = M.semantics,
}

---@type BlackAtom.ThemeMeta
M.meta = {
    key = "terra-spring-day",
    label = "Terra Spring Day",
    collection_key = "terra",
    collection_label = "Terra",
    appearance = "light",
    icon = "󰧲  ",
    status = "beta",
    module_path = "black-atom.themes.terra-spring-day",
}

return M
