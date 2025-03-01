local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "<%= theme.meta.key %>",
    label = "<%= theme.meta.label %>",
    collection = {
        key = "<%= theme.meta.collection.key %>",
        label = "<%= theme.meta.collection.label %>",
    },
    appearance = "<%= theme.meta.appearance %>",
    icon = "󰂒 󰖔 ",
    status = "<%= theme.meta.status %>",
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    "<%= theme.primaries[0] %>",
    "<%= theme.primaries[1] %>",
    "<%= theme.primaries[2] %>",
    "<%= theme.primaries[3] %>",
    "<%= theme.primaries[4] %>",
    "<%= theme.primaries[5] %>",
    "<%= theme.primaries[6] %>",
    "<%= theme.primaries[7] %>",
    "<%= theme.primaries[8] %>",
    "<%= theme.primaries[9] %>",
    "<%= theme.primaries[10] %>",
    "<%= theme.primaries[11] %>",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "<%= theme.palette.black %>",
    gray = "<%= theme.palette.gray %>",
    dark_red = "<%= theme.palette.darkRed %>",
    red = "<%= theme.palette.red %>",
    dark_green = "<%= theme.palette.darkGreen %>",
    green = "<%= theme.palette.green %>",
    dark_yellow = "<%= theme.palette.darkYellow %>",
    yellow = "<%= theme.palette.yellow %>",
    dark_blue = "<%= theme.palette.darkBlue %>",
    blue = "<%= theme.palette.blue %>",
    dark_magenta = "<%= theme.palette.darkMagenta %>",
    magenta = "<%= theme.palette.magenta %>",
    dark_cyan = "<%= theme.palette.darkCyan %>",
    cyan = "<%= theme.palette.cyan %>",
    light_gray = "<%= theme.palette.lightGray %>",
    white = "<%= theme.palette.white %>",
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
