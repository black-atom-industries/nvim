local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-engineering",
    label = "Black Atom - Engineering",
    collection = {
        key = "default",
        label = "Default",
    },
    appearance = "dark",
    icon = "󱁤 󰖔 ",
    status = "release",
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    -- Lows
    "#202b2b",
    "#23332f",
    "#2d423c",
    "#375149",

    -- Mids
    "#51796d",
    "#5b8972",
    "#75a490",
    "#91bcad",

    -- Highs
    "#9bdebe",
    "#abe7ca",
    "#c1efd5",
    "#cef6de",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = M.primaries[3],
    gray = M.primaries[6],

    dark_red = "#ef95ba",
    red = "#f4acc9",

    dark_green = "#5dba5d",
    green = "#80c980",

    dark_yellow = "#c6db6e",
    yellow = "#a6dc6e",

    dark_blue = M.primaries[8],
    blue = M.primaries[10],

    dark_magenta = "#a2b0e0",
    magenta = "#b6bee0",

    dark_cyan = "#59bf6f",
    cyan = "#75d689",

    light_gray = M.primaries[8],
    white = M.primaries[11],
}

---@type BlackAtom.Theme.UI
M.ui = require("black-atom.themes.default.ui_dark")(M.primaries, M.palette)

---@type BlackAtom.Theme.Syntax
M.syntax = require("black-atom.themes.default.syntax_dark")(M.primaries, M.palette)

---@type BlackAtom.Theme.Colors
M.colors = {
    none = "NONE",
    primaries = M.primaries,
    palette = M.palette,
    ui = M.ui,
    syntax = M.syntax,
}

return M
