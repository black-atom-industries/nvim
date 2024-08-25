local ui = require("black-atom.themes.terra.ui_light")
local syntax = require("black-atom.themes.terra.syntax_light")

local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "terra-fall-day",
    label = "Terra Fall Day",
    collection = {
        key = "terra",
        label = "Terra",
    },
    appearance = "light",
    icon = "  ",
    status = "development",
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    -- Lows
    "#1e1e1e",
    "#232323",
    "#2c2928",
    "#322e2b",

    -- Mids
    "#665c54",
    "#7c6f64",
    "#928374",
    "#a89984",

    -- Highs
    "#ccc5b2",
    "#d7d2c3",
    "#e4decd",
    "#eeeadf",
}

-- TODO: Finetune
---@type BlackAtom.Theme.Palette
M.palette = {
    black = M.primaries[3],
    gray = M.primaries[6],

    dark_red = "#ca6d4c",
    red = "#dd7e5d",

    dark_green = "#4a7126",
    green = "#58852c",

    dark_yellow = "#cc764b",
    yellow = "#d19845",

    dark_blue = "#3d668e",
    blue = "#5980a6",

    dark_magenta = "#ab80a8",
    magenta = "#a58bc1",

    dark_cyan = "#296a50",
    cyan = "#348764",

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
