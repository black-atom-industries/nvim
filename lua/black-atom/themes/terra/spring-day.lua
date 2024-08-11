local ui = require("black-atom.themes.terra.ui_light")
local syntax = require("black-atom.themes.terra.syntax_light")

local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "terra-spring-day",
    label = "Terra Spring Day",
    collection = {
        key = "terra",
        label = "Terra",
    },
    appearance = "light",
    icon = "󰧲  ",
    status = "beta",
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    -- Lows
    "#304a3f",
    "#385547",
    "#416353",
    "#517b67",

    -- Mids
    "#55816a",
    "#62937a",
    "#78a48e",
    "#8bb19e",

    -- Highs
    "#b9c6bf",
    "#c7d1cc",
    "#d4dcd8",
    "#e2eae6",
}

-- TODO: Finetune
---@type BlackAtom.Theme.Palette
M.palette = {
    black = M.primaries[3],
    gray = M.primaries[6],

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
