local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-terra-summer-day",
    label = "Black Atom - Terra Summer Day",
    collection = {
        key = "terra",
        label = "TERRA",
    },
    appearance = "light",
    icon = "󰂒  ",
    status = "development",
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    "#29323d",
    "#343e4d",
    "#3e4b5c",
    "#47576c",
    "#506d95",
    "#5979a6",
    "#7b94b8",
    "#8BA1C1",
    "#b7beca",
    "#c6cbd5",
    "#d1d6e1",
    "#e0e4eb",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#3e4b5c",
    gray = "#5979a6",
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
    light_gray = "#b7beca",
    white = "#d1d6e1",
}

---@type BlackAtom.Theme.UI
M.ui = require("black-atom.themes.terra.ui_light")(M.primaries, M.palette)

---@type BlackAtom.Theme.Syntax
M.syntax = require("black-atom.themes.terra.syntax_light")(M.primaries, M.palette)

---@type BlackAtom.Theme.Colors
M.colors = {
    none = "NONE",
    primaries = M.primaries,
    palette = M.palette,
    ui = M.ui,
    syntax = M.syntax,
}

return M
