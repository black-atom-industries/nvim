local ui = require("black-atom.themes.jpn.ui_dark")
local syntax = require("black-atom.themes.jpn.syntax_dark")

local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-jpn-koyo",
    label = "Black Atom - JPN Koyo",
    collection = {
        key = "jpn",
        label = "JPN",
    },
    appearance = "dark",
    icon = " 󰖔 ",
    status = "release",
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    -- Lows
    "#1b1616",
    "#272020",
    "#372d2d",
    "#534544",

    -- Mids
    "#a98b8b",
    "#b29898",
    "#c2a4a2",
    "#cdb6b4",

    -- Highs
    "#dcd2be",
    "#eadfc9",
    "#f5ebd7",
    "#faf5eb",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = M.primaries[3],
    gray = M.primaries[6],

    dark_red = "#ee6369",
    red = "#f18187",

    dark_green = "#53ac90",
    green = "#66ccaa",

    dark_yellow = "#db998b",
    yellow = "#e6cd9a",

    dark_blue = M.primaries[8],
    blue = M.primaries[10],

    dark_magenta = "#c991a2",
    magenta = "#d9a5b5",

    dark_cyan = "#79baa5",
    cyan = "#9dcabb",

    light_gray = M.primaries[8],
    white = M.primaries[11],
}

---@type BlackAtom.Theme.Colors
M.colors = {
    none = "NONE",
    primaries = M.primaries,
    palette = M.palette,
    ui = ui(M.primaries, M.palette),
    syntax = syntax(M.primaries, M.palette),
}

return M
