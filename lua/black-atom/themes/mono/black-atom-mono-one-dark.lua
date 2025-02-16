local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-mono-one-dark",
    label = "Black Atom - MONO - 1 [DARK]",
    collection = {
        key = "default",
        label = "Default",
    },
    appearance = "dark",
    icon = "󰒲 ", -- You might want to change this icon
    status = "release",
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    -- Lows (darker)
    "#171c19",
    "#212724",
    "#2f3734",
    "#38423e",

    -- Mids
    "#51615a",
    "#687d74",
    "#81978e",
    "#9daea7",

    -- Highs
    "#b3cccc",
    "#c2d6d6",
    "#d9e5e5",
    "#eef3f3",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = M.primaries[3],
    gray = "#708090", -- lack

    dark_red = "#ab5353", -- darker red
    red = "#bc7676", -- red

    dark_green = "#679967", -- darker green
    green = "#81b381", -- green

    dark_yellow = "#9e9e5f", -- darker yellow
    yellow = "#b7b77a", -- yellow

    dark_blue = "#667699", -- darker blue
    blue = "#8191b1", -- blue

    dark_magenta = "#d29079", -- darker orange
    magenta = "#f9a786", -- orange

    dark_cyan = "#669999", -- mix of lack and green
    cyan = "#8ba79f", -- mix of lack and green

    light_gray = M.primaries[8],
    white = M.primaries[11],
}

---@type BlackAtom.Theme.Syntax
M.syntax = require("black-atom.themes.mono.syntax_dark")(M.primaries, M.palette)

---@typ BlackAtom.Theme.UI
M.ui = require("black-atom.themes.mono.ui_dark")(M.primaries, M.palette)

---@type BlackAtom.Theme.Colors
M.colors = {
    none = "NONE",
    primaries = M.primaries,
    palette = M.palette,
    ui = M.ui,
    syntax = M.syntax,
}

return M
