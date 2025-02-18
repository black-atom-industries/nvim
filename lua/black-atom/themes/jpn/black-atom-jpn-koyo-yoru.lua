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
    "#271f27",
    "#332733",
    "#3f2f3f",
    "#4a384a",

    -- Mids
    "#605872",
    "#6e6a86",
    "#908caa",
    "#aaa7be",

    -- Highs
    "#dab18c",
    "#e0be9f",
    "#e6cbb2",
    "#ecd8c5",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = M.primaries[3],
    gray = M.primaries[6],

    dark_red = "#b46371",
    red = "#eb6f84",

    dark_green = "#53ad82",
    green = "#7ab89b",

    dark_yellow = "#ee9c6b",
    yellow = "#e9b162",

    dark_blue = "#ad8593",
    blue = "#a095a8",

    dark_magenta = "#ef9d6c",
    magenta = "#ffb488",

    dark_cyan = "#68b19a",
    cyan = "#8cc1b0",

    light_gray = M.primaries[8],
    white = M.primaries[11],
}

---@type BlackAtom.Theme.UI
M.ui = require("black-atom.themes.jpn.ui_dark")(M.primaries, M.palette)

---@type BlackAtom.Theme.Syntax
M.syntax = require("black-atom.themes.jpn.syntax_dark")(M.primaries, M.palette)

---@type BlackAtom.Theme.Colors
M.colors = {
    none = "NONE",
    primaries = M.primaries,
    palette = M.palette,
    ui = M.ui,
    syntax = M.syntax,
}

return M
