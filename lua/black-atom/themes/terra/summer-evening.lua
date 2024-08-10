local lib = require("black-atom.lib")

local M = {}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    -- Lows
    "#24242e",
    "#2C2E3A",
    "#353746",
    "#424558",

    -- Mids
    "#47506b",
    "#5b678a",
    "#7581a4",
    "#858fae",

    -- Highs
    "#91a0bc",
    "#9facc6",
    "#bcc9db",
    "#c8d7e8",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = M.primaries[2],
    gray = M.primaries[4],

    dark_red = "#f04c41",
    red = "#F37067",

    dark_green = "#729e60",
    green = "#85b97e",

    dark_yellow = "#FFAA57",
    yellow = "#F5BB46",

    dark_blue = "#6FBCFF",
    blue = "#A6D7FF",

    dark_magenta = "#d5a9c3",
    magenta = "#c4acd7",

    dark_cyan = "#619f80",
    cyan = "#7bb7a4",

    light_gray = M.primaries[9],
    white = M.primaries[11],
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
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
        active = M.primaries[4],
        match = {
            active = lib.color.darken(M.palette.magenta, 0.25, M.primaries[1]),
            passive = lib.color.darken(M.palette.magenta, 0.15, M.primaries[1]),
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
            dark = M.primaries[10],
            main = M.primaries[11],
            light = M.primaries[12],
        },
        secondary = {
            dark = M.primaries[7],
            main = M.primaries[8],
            light = M.primaries[9],
        },
        active = M.palette.yellow,
        invert = M.primaries[2],
        neutral = M.primaries[6],
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
        default = M.palette.yellow,
        builtin = M.palette.yellow,
        parameter = M.palette.dark_blue,
        member = M.palette.dark_blue,
    },
    constant = {
        default = M.palette.dark_yellow,
        builtin = M.palette.dark_yellow,
    },
    module = {
        default = M.palette.dark_blue,
    },
    string = {
        default = M.palette.blue,
        documentation = M.palette.blue,
        regexp = M.palette.blue,
        escape = M.palette.blue,
    },
    boolean = {
        default = M.palette.dark_yellow,
    },
    number = {
        default = M.palette.dark_yellow,
    },
    type = {
        default = M.palette.blue,
        builtin = M.palette.dark_blue,
    },
    attribute = {
        default = M.palette.dark_yellow,
        builtin = M.palette.dark_yellow,
    },
    func = {
        default = M.palette.dark_yellow,
        builtin = M.palette.dark_yellow,
        method = M.palette.dark_yellow,
    },
    constructor = {
        default = M.palette.blue,
    },
    operator = {
        default = M.palette.red,
    },
    keyword = {
        default = M.palette.red,
    },
    punctuation = {
        default = M.palette.red,
        delimiter = M.palette.light_gray,
        bracket = M.palette.light_gray,
        special = M.palette.red,
    },
    comment = {
        default = M.palette.gray,
        documentation = M.palette.green,
    },
    markup = {
        default = M.palette.gray,
        heading = {
            default = M.palette.dark_yellow,
            h1 = M.palette.dark_yellow,
            h2 = M.palette.dark_yellow,
            h3 = M.palette.dark_yellow,
            h4 = M.palette.dark_yellow,
            h5 = M.palette.dark_yellow,
            h6 = M.palette.dark_yellow,
        },
        strong = M.palette.dark_yellow,
        italic = M.palette.dark_yellow,
        strikethrough = M.palette.dark_yellow,
        underline = M.palette.dark_yellow,
        quote = M.palette.dark_yellow,
        math = M.palette.dark_yellow,
        link = {
            default = M.palette.blue,
            label = M.palette.green,
            url = M.palette.blue,
        },
        code = {
            default = M.palette.cyan,
            inline = M.palette.cyan,
            block = M.palette.cyan,
        },
        list = {
            default = M.palette.dark_yellow,
            checked = M.palette.dark_yellow,
            unchecked = M.palette.dark_yellow,
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
    key = "terra-summer-evening",
    label = "Terra Summer Evening",
    collection = {
        key = "terra",
        label = "Terra",
    },
    appearance = "dark",
    icon = "󰂒 󰖔 ",
    status = "release",
}

return M
