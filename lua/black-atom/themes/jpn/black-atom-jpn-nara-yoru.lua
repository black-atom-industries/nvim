local ui = require("black-atom.themes.jpn.ui_dark")
local syntax = require("black-atom.themes.jpn.syntax_dark")

local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-jpn-nara-yoru",
    label = "Black Atom - JPN - Nara Yoru",
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
    "#18181a",
    "#222225",
    "#2f2f35",
    "#3b3b48",

    -- Mids
    "#444453",
    "#5d5d71",
    "#71718b",
    "#8f8fa3",

    -- Highs
    "#ababba",
    "#b9b9c6",
    "#c7c7d1",
    "#e3e3e8",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = M.primaries[3],
    gray = M.primaries[5],

    dark_red = "#EA83A5",
    red = "#E29ECA",

    dark_green = "#80af91",
    green = "#90B99F",

    dark_yellow = "#F5A191",
    yellow = "#E6B99D",

    dark_blue = "#8d99c0",
    blue = "#9da7c9",

    dark_magenta = "#9789c3",
    magenta = "#ACA1CF",

    dark_cyan = "#6ea4ad",
    cyan = "#85B5BA",

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
