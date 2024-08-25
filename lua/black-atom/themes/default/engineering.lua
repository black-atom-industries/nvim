local ui = require("black-atom.themes.default.ui_dark")
local syntax = require("black-atom.themes.default.syntax_dark")

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
    "#090c0c",
    "#101815",
    "#19261b",
    "#203125",

    -- Mids
    "#51796d",
    "#5b8972",
    "#75a490",
    "#91bcad",

    -- Highs
    "#a5c3b4",
    "#b3cdc0",
    "#c2d6cc",
    "#cce3d9",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = M.primaries[3],
    gray = M.primaries[6],

    dark_red = "#e77593",
    red = "#F49CBB",

    dark_green = "#5dba5d",
    green = "#80c980",

    dark_yellow = "#8cbf59",
    yellow = "#a6d675",

    dark_blue = M.primaries[8],
    blue = M.primaries[10],

    dark_magenta = "#aaa2e0",
    magenta = "#bdb6e0",

    dark_cyan = "#4C8577",
    cyan = "#7dd278",

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
