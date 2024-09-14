local ui = require("black-atom.themes.jpn.ui_dark")
local syntax = require("black-atom.themes.jpn.syntax_dark")

local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-jpn-koyo-yoru",
    label = "Black Atom - JPN - Koyo [Yoru]",
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
    "#9a907d",
    "#a89e8a",
    "#b8ab93",
    "#c3b9a5",

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

    dark_red = "#c2564b",
    red = "#d6675c",

    dark_green = "#4db382",
    green = "#70c29b",

    dark_yellow = "#cca766",
    yellow = "#ecc579",

    dark_blue = "#a88a94",
    blue = "#a095a8",

    dark_magenta = "#efa376",
    magenta = "#FEBE98",

    dark_cyan = "#68b19a",
    cyan = "#8cc1b0",

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
