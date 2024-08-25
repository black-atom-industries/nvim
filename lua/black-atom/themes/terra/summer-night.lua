local ui = require("black-atom.themes.terra.ui_dark")
local syntax = require("black-atom.themes.terra.syntax_dark")

local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "terra-summer-night",
    label = "Terra Summer Night",
    collection = {
        key = "terra",
        label = "Terra",
    },
    appearance = "dark",
    icon = "󰂒 󰖔 ",
    status = "release",
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    -- Lows
    "#1a1c24",
    "#1f2129",
    "#23262f",
    "#282b35",

    -- Mids
    "#47506b",
    "#5b678a",
    "#7581a4",
    "#858fae",

    -- Highs
    "#91a0bc",
    "#9facc6",
    "#bcc9db",
    "#c8d7e8",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = M.primaries[3],
    gray = M.primaries[5],

    dark_red = "#bf5441",
    red = "#c06a59",

    dark_green = "#729e60",
    green = "#85b97e",

    dark_yellow = "#f2a557",
    yellow = "#dca958",

    dark_blue = "#9f99e5",
    blue = "#96b9e9",

    dark_magenta = "#d5a9c3",
    magenta = "#c4acd7",

    dark_cyan = "#619f80",
    cyan = "#7bb7a4",

    light_gray = M.primaries[9],
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
