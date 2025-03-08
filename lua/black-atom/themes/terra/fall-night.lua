local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-terra-fall-night",
    label = "Black Atom • Terra ∷ Fall Night",
    collection = {
        key = "terra",
        label = "TERRA",
    },
    appearance = "dark",
    icon = " 󰖔 ",
    status = "release",
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    "#0f0e0e",
    "#1a1818",
    "#262423",
    "#2d2926",
    "#665c54",
    "#7c6f64",
    "#928374",
    "#a89984",
    "#ae9685",
    "#b9a495",
    "#ccbeb3",
    "#d6cac2",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#262423",
    gray = "#665c54",
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
    light_gray = "#ae9685",
    white = "#ccbeb3",
}

---@type BlackAtom.Theme.UI
M.ui = require("black-atom.themes.terra.ui_dark")(M.primaries, M.palette)

---@type BlackAtom.Theme.Syntax
M.syntax = require("black-atom.themes.terra.syntax_dark")(M.primaries, M.palette)

---@type BlackAtom.Theme.Colors
M.colors = {
    none = "NONE",
    primaries = M.primaries,
    palette = M.palette,
    ui = M.ui,
    syntax = M.syntax,
}

return M
