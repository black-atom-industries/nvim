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
    "#0c1210",
    "#111a12",
    "#141e17",

    -- Mids
    "#809890",
    "#8da397",
    "#9daea8",
    "#acbab4",

    -- Highs
    "#b4cdc1",
    "#c2d7ce",
    "#d1e0da",
    "#e2eae8",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = M.primaries[3],
    gray = M.primaries[6],

    dark_red = "#e77593",
    red = "#F49CBB",

    dark_green = "#5dba5d",
    green = "#80c980",

    dark_yellow = "#b6ca4e",
    yellow = "#c6d675",

    dark_blue = M.primaries[8],
    blue = M.primaries[10],

    dark_magenta = "#aaa2e0",
    magenta = "#bdb6e0",

    dark_cyan = "#4C8577",
    cyan = "#7eceba",

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
