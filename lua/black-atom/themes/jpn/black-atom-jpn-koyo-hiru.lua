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
    "#403240",
    "#574457",
    "#664a66",
    "#735673",

    -- Mids
    "#605872",
    "#6e6a86",
    "#908caa",
    "#aaa7be",

    -- Highs
    "#f4e8d9",
    "#f6ede1",
    "#f9f2e9",
    "#f9f2ee",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = M.primaries[2],
    gray = M.primaries[6],

    dark_red = "#c65e53",
    red = "#db7070",

    dark_green = "#428a68",
    green = "#52ad82",

    dark_yellow = "#de8641",
    yellow = "#ea9d34",

    dark_blue = "#aa6f83",
    blue = "#9175a3",

    dark_magenta = "#ec935f",
    magenta = "#f0a274",

    dark_cyan = "#529e86",
    cyan = "#6aaf9a",

    light_gray = M.primaries[8],
    white = M.primaries[11],
}

---@type BlackAtom.Theme.UI
M.ui = require("black-atom.themes.jpn.ui_light")(M.primaries, M.palette)

---@type BlackAtom.Theme.Syntax
M.syntax = require("black-atom.themes.jpn.syntax_light")(M.primaries, M.palette)

---@type BlackAtom.Theme.Colors
M.colors = {
    none = "NONE",
    primaries = M.primaries,
    palette = M.palette,
    ui = M.ui,
    syntax = M.syntax,
}

return M
