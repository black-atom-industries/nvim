local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-stations-research",
    label = "Black Atom - Research Stations",
    collection = {
        key = "stations",
        label = "Stations",
    },
    appearance = "light",
    icon = " 󰖔 ",
    status = "release",
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    -- Lows
    "#1e2229",
    "#2b3b33",
    "#384b42",
    "#425953",

    -- Mids
    "#51796d",
    "#5b8972",
    "#75a490",
    "#95b8ac",

    -- Highs
    "#c4d3cc",
    "#d2ded8",
    "#e3ebe7",
    "#eef4f2",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = M.primaries[3],
    gray = M.primaries[6],

    dark_red = "#db577c",
    red = "#ec7aa2",

    dark_green = "#4a9a4a",
    green = "#53aa53",

    dark_yellow = "#e69d0c",
    yellow = "#66ad1f",

    dark_blue = M.primaries[6],
    blue = M.primaries[5],

    dark_magenta = "#887bd3",
    magenta = "#998ed9",

    dark_cyan = "#459f55",
    cyan = "#4db15e",

    light_gray = M.primaries[8],
    white = M.primaries[11],
}

---@type BlackAtom.Theme.UI
M.ui = require("black-atom.themes.stations.ui_light")(M.primaries, M.palette)

---@type BlackAtom.Theme.Syntax
M.syntax = require("black-atom.themes.stations.syntax_light")(M.primaries, M.palette)

---@type BlackAtom.Theme.Colors
M.colors = {
    none = "NONE",
    primaries = M.primaries,
    palette = M.palette,
    ui = M.ui,
    syntax = M.syntax,
}

return M
