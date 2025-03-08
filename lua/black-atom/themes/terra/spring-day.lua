local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-terra-spring-day",
    label = "Black Atom • Terra ∷ Spring Day",
    collection = {
        key = "terra",
        label = "TERRA",
    },
    appearance = "light",
    icon = "󰧲  ",
    status = "beta",
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    "#304a3f",
    "#385547",
    "#416353",
    "#517b67",
    "#55816a",
    "#62937a",
    "#78a48e",
    "#8bb19e",
    "#b9c6bf",
    "#c7d1cc",
    "#d4dcd8",
    "#e2eae6",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#416353",
    gray = "#62937a",
    dark_red = "#ca6d4c",
    red = "#dd7e5d",
    dark_green = "#0d8a4e",
    green = "#0f9d58",
    dark_yellow = "#de7b1f",
    yellow = "#e49f19",
    dark_blue = "#3473b2",
    blue = "#588dc1",
    dark_magenta = "#B07BAC",
    magenta = "#a586c6",
    dark_cyan = "#0e945d",
    cyan = "#10ab6a",
    light_gray = "#b9c6bf",
    white = "#d4dcd8",
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
