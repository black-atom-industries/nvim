local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "terra-spring-night",
    label = "Terra Spring Night",
    collection = {
        key = "terra",
        label = "Terra",
    },
    appearance = "dark",
    icon = "󰧲 󰖔 ",
    status = "release",
    module_path = "black-atom.themes.terra-spring-night",
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    -- Lows
    "#1d201f",
    "#212523",
    "#272c2a",
    "#313634",

    -- Mids
    "#394740",
    "#51635a",
    "#677e72",
    "#82978c",

    -- Highs
    "#b8aa94",
    "#c3b8a4",
    "#d6d0c2",
    "#e0ddd1",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = M.primaries[3],
    gray = M.primaries[5],

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

    light_gray = M.primaries[9],
    white = M.primaries[11],
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
