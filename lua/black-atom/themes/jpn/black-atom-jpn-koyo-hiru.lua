local ui = require("black-atom.themes.jpn.ui_light")
local syntax = require("black-atom.themes.jpn.syntax_light")

local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-jpn-koyo-hiru",
    label = "Black Atom - JPN - Koyo [Hiru]",
    collection = {
        key = "jpn",
        label = "JPN",
    },
    appearance = "light",
    icon = " 󰖔 ",
    status = "release",
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    -- Lows
    "#2c2424",
    "#382e2e",
    "#4e4040",
    "#645352",

    -- Mids
    "#848097",
    "#928fa3",
    "#a09dae",
    "#afacbb",

    -- Highs
    "#c2ada3",
    "#ccbbb2",
    "#d6c9c1",
    "#e0d6d0",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = M.primaries[3],
    gray = M.primaries[6],

    dark_red = "#cc4233",
    red = "#e05252",

    dark_green = "#2e6b4e",
    green = "#44a175",

    dark_yellow = "#d77342",
    yellow = "#e58c4d",

    dark_blue = "#a65973",
    blue = "#8859a6",

    dark_magenta = "#de553b",
    magenta = "#f57056",

    dark_cyan = "#458772",
    cyan = "#59a68d",

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
