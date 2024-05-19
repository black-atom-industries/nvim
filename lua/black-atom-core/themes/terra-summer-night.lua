local lib = require("black-atom-core.lib")

local M = {}

---@type BlackAtomCore.Colors.Primaries
M.primaries = {
    -- Lows
    "#1a1c24",
    "#1f2129",
    "#23262f",
    "#282b35",

    -- Mids
    "#47506b",
    "#5b678a",
    "#7581a4",
    "#858fae",

    -- Highs
    "#91a0bc",
    "#9facc6",
    "#bcc9db",
    "#c8d7e8",
}

---@type BlackAtomCore.Colors.Palette
M.palette = {
    black = M.primaries[2],
    gray = M.primaries[4],

    dark_red = "#bf5441",
    red = "#c06a59",

    dark_green = "#729e60",
    green = "#85b97e",

    dark_yellow = "#f2a557",
    yellow = "#dca958",

    dark_blue = "#9f99e5",
    blue = "#96b9e9",

    dark_magenta = "#d5a9c3",
    magenta = "#c4acd7",

    dark_cyan = "#619f80",
    cyan = "#7bb7a4",

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
        active = M.palette.yellow,
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
    key = "terra-summer-night",
    label = "Terra Summer Night",
    collection_key = "terra",
    collection_label = "Terra",
    appearance = "dark",
    icon = "󰂒 󰖔 ",
    status = "release",
    module_path = "black-atom-core.themes.terra-summer-night",
}

return M
