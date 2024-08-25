local ui = require("black-atom.themes.terra.ui_dark")
local syntax = require("black-atom.themes.terra.syntax_dark")

local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "terra-fall-night",
    label = "Terra Fall Night",
    collection = {
        key = "terra",
        label = "Terra",
    },
    appearance = "dark",
    icon = " 󰖔 ",
    status = "release",
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    -- Lows
    "#0f0e0e",
    "#1a1818",
    "#262423",
    "#2d2926",

    -- Mids
    "#665c54",
    "#7c6f64",
    "#928374",
    "#a89984",

    -- Highs
    "#ae9685",
    "#b9a495",
    "#ccbeb3",
    "#d6cac2",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = M.primaries[3],
    gray = M.primaries[5],

    dark_red = "#c0603f",
    red = "#c57054",

    dark_green = "#7a895c",
    green = "#a6bc90",

    dark_yellow = "#ef9e74",
    yellow = "#e0a66d",

    dark_blue = "#a4a0df",
    blue = "#90acd5",

    dark_magenta = "#d2acc3",
    magenta = "#c4b2d1",

    dark_cyan = "#6a9b86",
    cyan = "#7fb395",

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
