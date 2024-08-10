local lib = require("black-atom.lib")

local M = {}

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
    "#d3cec5",
    "#dad6cd",
    "#e4e1db",
    "#eae7e2",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = M.primaries[1],
    gray = M.primaries[4],

    dark_red = "#d6582e",
    red = "#da714d",

    dark_green = "#0d8a4e",
    green = "#0f9d58",

    dark_yellow = "#ea7b14",
    yellow = "#e0a618",

    dark_blue = "#3473b2",
    blue = "#588dc1",

    dark_magenta = "#B07BAC",
    magenta = "#a586c6",

    dark_cyan = "#0d8a76",
    cyan = "#0f9d6d",

    light_gray = M.primaries[9],
    white = M.primaries[11],
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        primary = {
            dark = M.primaries[10],
            main = M.primaries[11],
            light = M.primaries[12],
        },
        secondary = {
            dark = M.primaries[7],
            main = M.primaries[8],
            light = M.primaries[9],
        },
        active = M.primaries[5],
        match = {
            active = lib.color.darken(M.palette.magenta, 0.25, M.primaries[12]),
            passive = lib.color.darken(M.palette.magenta, 0.15, M.primaries[12]),
        },
        diff = {
            add = M.palette.green,
            delete = M.palette.red,
            change = M.palette.blue,
            text = M.palette.dark_blue,
        },
    },
    fg = {
        primary = {
            dark = M.primaries[1],
            main = M.primaries[2],
            light = M.primaries[3],
        },
        secondary = {
            dark = M.primaries[4],
            main = M.primaries[5],
            light = M.primaries[6],
        },
        active = M.palette.yellow,
        invert = M.primaries[11],
        -- this is a comment
        neutral = M.primaries[7],
        diff = {
            add = M.palette.green,
            delete = M.palette.red,
            change = M.palette.blue,
            text = M.palette.dark_blue,
        },
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    default = M.palette.gray,
    variable = {
        default = M.palette.blue,
        builtin = M.palette.blue,
        parameter = M.palette.dark_yellow,
        member = M.palette.blue,
    },
    constant = {
        default = M.palette.dark_yellow,
        builtin = M.palette.dark_yellow,
    },
    module = {
        default = M.palette.dark_blue,
    },
    string = {
        default = M.palette.green,
        documentation = M.palette.green,
        regexp = M.palette.dark_yellow,
        escape = M.palette.red,
    },
    boolean = {
        default = M.palette.dark_yellow,
    },
    number = {
        default = M.palette.dark_yellow,
    },
    type = {
        default = M.palette.cyan,
        builtin = M.palette.dark_cyan,
    },
    attribute = {
        default = M.palette.cyan,
        builtin = M.palette.cyan,
    },
    func = {
        default = M.palette.yellow,
        builtin = M.palette.yellow,
        method = M.palette.yellow,
    },
    constructor = {
        default = M.palette.yellow,
    },
    operator = {
        default = M.ui.fg.primary.main,
    },
    keyword = {
        default = M.palette.magenta,
    },
    punctuation = {
        default = M.ui.fg.primary.main,
        delimiter = M.ui.fg.primary.main,
        bracket = M.ui.fg.primary.main,
        special = M.ui.fg.primary.main,
    },
    comment = {
        default = M.ui.fg.primary.main,
        documentation = M.ui.fg.primary.main,
    },
    markup = {
        default = M.ui.fg.primary.main,
        heading = {
            default = M.palette.dark_yellow,
            h1 = M.palette.dark_yellow,
            h2 = M.palette.dark_yellow,
            h3 = M.palette.dark_yellow,
            h4 = M.palette.dark_yellow,
            h5 = M.palette.dark_yellow,
            h6 = M.palette.dark_yellow,
        },
        strong = M.ui.fg.primary.main,
        italic = M.ui.fg.primary.main,
        strikethrough = M.ui.fg.primary.main,
        underline = M.ui.fg.primary.main,
        quote = M.ui.fg.primary.main,
        math = M.ui.fg.primary.main,
        link = {
            default = M.palette.blue,
            label = M.palette.green,
            url = M.palette.blue,
        },
        code = {
            default = M.palette.green,
            inline = M.palette.green,
            block = M.palette.green,
        },
        list = {
            default = M.ui.fg.primary.main,
            checked = M.ui.fg.active,
            unchecked = M.ui.fg.neutral,
        },
    },
    tag = {
        default = M.palette.yellow,
        builtin = M.palette.yellow,
        custom = M.palette.yellow,
        attribute = M.palette.dark_yellow,
        delimiter = M.palette.dark_yellow,
    },
}

---@type BlackAtom.Theme.Colors
M.colors = {
    none = "NONE",
    primaries = M.primaries,
    palette = M.palette,
    ui = M.ui,
    syntax = M.syntax,
}

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

return M
