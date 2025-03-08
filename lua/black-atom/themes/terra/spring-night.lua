local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-terra-spring-night",
    label = "Black At•m — TER ∷ Spring Night",
    collection = {
        key = "terra",
        label = "TERRA",
    },
    appearance = "dark",
    icon = "󰧲 󰖔 ",
    status = "release",
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    "#1d201f",
    "#212523",
    "#272c2a",
    "#313634",
    "#394740",
    "#51635a",
    "#677e72",
    "#82978c",
    "#b8aa94",
    "#c3b8a4",
    "#d6d0c2",
    "#e0ddd1",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#272c2a",
    gray = "#394740",
    dark_red = "#b95847",
    red = "#ba6e5f",
    dark_green = "#6a9f60",
    green = "#8ac090",
    dark_yellow = "#e89a61",
    yellow = "#d1a762",
    dark_blue = "#899ddc",
    blue = "#99b9e6",
    dark_magenta = "#d5a9c3",
    magenta = "#c6b3da",
    dark_cyan = "#679980",
    cyan = "#85ad9f",
    light_gray = "#b8aa94",
    white = "#d6d0c2",
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
