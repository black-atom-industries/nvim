local lib = require("black-atom.lib")

local M = {}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    -- Lows
    "#040505",
    "#0e1110",
    "#181b19",
    "#1d201e",

    -- Mids
    "#3e4441",
    "#565f59",
    "#606a65",
    "#79857f",

    -- Highs
    "#91a39a",
    "#abbbb3",
    "#c4d4cc",
    "#dfeae5",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = M.primaries[2],
    gray = M.primaries[5],

    dark_red = "#a89ee3",
    red = "#bbb3e3",

    dark_green = "#7fb464",
    green = "#99c982",

    dark_yellow = "#63b463",
    yellow = "#85c485",

    dark_blue = M.primaries[8],
    blue = M.primaries[10],

    dark_magenta = "#a89ee3",
    magenta = "#bbb3e3",

    dark_cyan = "#66b463",
    cyan = "#87c485",

    light_gray = M.primaries[8],
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
        default = M.primaries[9],
        builtin = M.primaries[9],
        parameter = M.primaries[10],
        member = M.primaries[8],
    },
    property = {
        default = M.primaries[9],
    },
    constant = {
        default = M.palette.white,
        builtin = M.palette.white,
    },
    module = {
        default = M.palette.dark_blue,
    },
    string = {
        default = M.palette.green,
        documentation = M.palette.green,
        regexp = M.palette.dark_green,
        escape = M.palette.magenta,
    },
    boolean = {
        default = M.palette.dark_green,
    },
    number = {
        default = M.palette.dark_green,
    },
    type = {
        default = M.palette.cyan,
        builtin = M.palette.dark_cyan,
    },
    attribute = {
        default = M.palette.dark_yellow,
        builtin = M.palette.dark_yellow,
    },
    func = {
        default = M.palette.yellow,
        builtin = M.palette.yellow,
        method = M.palette.yellow,
    },
    constructor = {
        default = M.palette.blue,
    },
    operator = {
        default = M.palette.white,
    },
    keyword = {
        default = M.palette.red,
    },
    punctuation = {
        default = M.palette.light_gray,
        delimiter = M.palette.light_gray,
        bracket = M.primaries[7],
        special = M.palette.white,
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
        builtin = M.palette.dark_yellow,
        custom = M.palette.yellow,
        attribute = M.primaries[8],
        delimiter = M.primaries[9],
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
    key = "black-atom-engineering",
    label = "Black Atom - Engineering",
    collection = {
        key = "default",
        label = "Default",
    },
    appearance = "dark",
    icon = " 󰖔 ",
    status = "release",
}

return M
