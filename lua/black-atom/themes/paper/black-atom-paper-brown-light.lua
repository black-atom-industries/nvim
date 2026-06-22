local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-paper-brown-light",
    label = "Black Atom — PAPER ∷ Brown Light",
    appearance = "light",
    status = "development",
    collection = {
        key = "paper",
        label = "PAPER",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#121110",
    d20 = "#201f1c",
    d30 = "#35332c",
    d40 = "#4c473d",
    m10 = "#777162",
    m20 = "#8d8673",
    m30 = "#a69e8a",
    m40 = "#c0b7a1",
    l10 = "#d9d0ba",
    l20 = "#e3dac3",
    l30 = "#ede4cd",
    l40 = "#f9f1dd",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#4c473d",
    gray = "#777162",
    dark_red = "#c0b7a1",
    red = "#c0b7a1",
    dark_green = "#a69e8a",
    green = "#a69e8a",
    dark_yellow = "#a69e8a",
    yellow = "#a69e8a",
    dark_blue = "#c0b7a1",
    blue = "#c0b7a1",
    dark_magenta = "#a69e8a",
    magenta = "#a69e8a",
    dark_cyan = "#c0b7a1",
    cyan = "#c0b7a1",
    light_gray = "#c0b7a1",
    white = "#c0b7a1",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#ede4cd",
        panel = "#e3dac3",
        float = "#e3dac3",
        active = "#f9f1dd",
        disabled = "#d9d0ba",
        hover = "#e3dac3",
        selection = "#d9d0ba",
        search = "#d9d0ba",
        contrast = "#4c473d",
        negative = "#f8ccc7",
        warn = "#ead4c0",
        info = "#c4def1",
        hint = "#ead4c0",
        positive = "#d3ddc0",
        add = "#d3ddc0",
        delete = "#f8ccc7",
        modify = "#c4def1",
    },
    fg = {
        default = "#201f1c",
        subtle = "#777162",
        accent = "#242424",
        disabled = "#a69e8a",
        contrast = "#e3dac3",
        negative = "#f14d4c",
        warn = "#cd7b00",
        info = "#00a3e9",
        hint = "#cd7b00",
        positive = "#819e00",
        add = "#819e00",
        delete = "#f14d4c",
        modify = "#00a3e9",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#35332c",
        builtin = "#4c473d",
        member = "#4f4d48",
        parameter = "#4f4d48",
    },
    property = {
        default = "#777162",
    },
    string = {
        default = "#8d8673",
        doc = "#4f4d48",
        regexp = "#242424",
        escape = "#242424",
    },
    constant = {
        default = "#201f1c",
        builtin = "#121110",
    },
    module = {
        default = "#35332c",
    },
    boolean = {
        default = "#777162",
    },
    number = {
        default = "#4c473d",
    },
    type = {
        default = "#121110",
        builtin = "#4c473d",
    },
    attribute = {
        default = "#4f4d48",
        builtin = "#4f4d48",
    },
    func = {
        default = "#242424",
        builtin = "#4f4d48",
        method = "#4f4d48",
    },
    constructor = {
        default = "#242424",
    },
    keyword = {
        default = "#4f4d48",
        import = "#4f4d48",
        export = "#4f4d48",
    },
    operator = {
        default = "#201f1c",
    },
    punctuation = {
        default = "#4c473d",
        delimiter = "#4c473d",
        bracket = "#4c473d",
        special = "#4c473d",
    },
    comment = {
        default = "#8d8673",
        doc = "#8d8673",
        todo = "#819e00",
        error = "#f14d4c",
        warn = "#cd7b00",
        info = "#00a3e9",
        hint = "#00a3e9",
    },
    markup = {
        heading = {
            h1 = "#242424",
            h2 = "#242424",
            h3 = "#242424",
            h4 = "#777162",
            h5 = "#777162",
            h6 = "#777162",
        },
        strong = "#242424",
        italic = "#242424",
        strikethrough = "#242424",
        quote = "#a69e8a",
        math = "#8d8673",
        link = "#4f4d48",
        list = {
            default = "#777162",
            checked = "#819e00",
            unchecked = "#777162",
        },
        code = {
            fg = "#4c473d",
            bg = "#e3dac3",
        },
    },
    tag = {
        default = "#4f4d48",
        builtin = "#242424",
        attribute = "#777162",
        delimiter = "#a69e8a",
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

return M
