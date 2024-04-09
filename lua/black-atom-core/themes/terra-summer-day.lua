local lib = require("black-atom-core.lib")

local M = {}

---@type BlackAtomCore.Colors.Primaries
M.primaries = {
    -- Lows
    "#29323d",
    "#343e4d",
    "#3e4b5c",
    "#47576c",

    -- Mids
    "#506d95",
    "#5979a6",
    "#7b94b8",
    "#8BA1C1",

    -- Highs
    "#c3cad7",
    "#ccd2dd",
    "#d8dce5",
    "#e1e4eb",
}

---@type BlackAtomCore.Colors.Palette
M.palette = {
    black = M.primaries[4],
    gray = M.primaries[5],

    dark_red = "#bf5441",
    red = "#c06a59",

    dark_green = "#729e60",
    green = "#72ae6a",

    dark_yellow = "#e3913d",
    yellow = "#dca958",

    dark_blue = "#5c72d6",
    blue = "#578fdc",

    dark_magenta = "#8253c5",
    magenta = "#c65295",

    dark_cyan = "#619f80",
    cyan = "#7bb7a4",

    light_gray = M.primaries[9],
    white = M.primaries[11],
}

---@type BlackAtomCore.Colors.Semantics
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
        neutral = M.primaries[5],
        diff = {
            add = M.palette.green,
            delete = M.palette.red,
            change = M.palette.blue,
            text = M.palette.dark_blue,
        },
    },
}

---@return BlackAtomCore.ThemeColors
M.colors = {
    none = "NONE",
    primaries = M.primaries,
    palette = M.palette,
    semantics = M.semantics,
}

---@type BlackAtomCore.ThemeMeta
M.meta = {
    key = "terra-summer-day",
    label = "Terra Summer Day",
    collection_key = "terra",
    collection_label = "Terra",
    appearance = "light",
    icon = "󰂒  ",
    status = "development",
    module_path = "black-atom-core.themes.terra-summer-day",
}

return M
