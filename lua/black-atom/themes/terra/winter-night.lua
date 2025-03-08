local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-terra-winter-night",
    label = "Black Atom • Terra ∷ Winter Night",
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
    "#18191b",
    "#212225",
    "#2c2d30",
    "#34363b",
    "#454955",
    "#5b6171",
    "#707a92",
    "#8a8fa7",
    "#a6afc1",
    "#c0c8d8",
    "#cdd6e4",
    "#dbe4ef",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#2c2d30",
    gray = "#5b6171",
    dark_red = "#a65959",
    red = "#b86a6a",
    dark_green = "#507765",
    green = "#5e9e8b",
    dark_yellow = "#eba778",
    yellow = "#d3b17a",
    dark_blue = "#94acb8",
    blue = "#8c9bc2",
    dark_magenta = "#b793b7",
    magenta = "#c8adc8",
    dark_cyan = "#568383",
    cyan = "#67a5a5",
    light_gray = "#a6afc1",
    white = "#cdd6e4",
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
