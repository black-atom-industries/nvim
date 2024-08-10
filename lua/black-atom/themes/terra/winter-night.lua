local lib = require("black-atom.lib")

local M = {}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    -- Lows
    "#0e0f10",
    "#17181a",
    "#1d1e20",
    "#212225",

    -- Mids
    "#3a3d47",
    "#505563",
    "#575f72",
    "#6d7391",

    -- Highs
    "#97a2b6",
    "#a0acc5",
    "#bcc9db",
    "#c9d7e7",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = M.primaries[2],
    gray = M.primaries[4],

    dark_red = "#a65959",
    red = "#b86a6a",

    dark_green = "#507765",
    green = "#5e9e8b",

    dark_yellow = "#eba778",
    yellow = "#d3b17a",

    dark_blue = "#7483a5",
    blue = "#909dbe",

    dark_magenta = "#b793b7",
    magenta = "#c8adc8",

    dark_cyan = "#568383",
    cyan = "#67a5a5",

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
        active = M.palette.cyan,
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
    key = "terra-fall-night",
    label = "Terra Fall Night",
    collection = {
        key = "terra",
        label = "Terra",
    },
    appearance = "dark",
    icon = " 󰖔 ",
    status = "release",
}

return M
