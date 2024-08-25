local ui = require("black-atom.themes.terra.ui_light")
local syntax = require("black-atom.themes.terra.syntax_light")

local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "terra-summer-day",
    label = "Terra Summer Day",
    collection = {
        key = "terra",
        label = "Terra",
    },
    appearance = "light",
    icon = "󰂒  ",
    status = "development",
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    -- Lows
    "#29323d",
    "#343e4d",
    "#3e4b5c",
    "#47576c",

    -- Mids
    "#506d95",
    "#5979a6",
    "#7b94b8",
    "#8BA1C1",

    -- Highs
    "#b7beca",
    "#c6cbd5",
    "#d1d6e1",
    "#e0e4eb",
}

-- TODO: Finetune
---@type BlackAtom.Theme.Palette
M.palette = {
    black = M.primaries[3],
    gray = M.primaries[6],

    dark_red = "#ca6d4c",
    red = "#dd7e5d",

    dark_green = "#729e60",
    green = "#72ae6a",

    dark_yellow = "#e3913d",
    yellow = "#dca958",

    dark_blue = "#5c72d6",
    blue = "#578fdc",

    dark_magenta = "#8253c5",
    magenta = "#c65295",

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
