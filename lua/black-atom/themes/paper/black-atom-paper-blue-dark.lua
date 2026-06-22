local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-paper-blue-dark",
    label = "Black Atom — PAPER ∷ Blue Dark",
    appearance = "dark",
    status = "development",
    collection = {
        key = "paper",
        label = "PAPER",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#001a41",
    d20 = "#002b51",
    d30 = "#053b5e",
    d40 = "#224c6a",
    m10 = "#446883",
    m20 = "#5f7f95",
    m30 = "#839caf",
    m40 = "#a7bac9",
    l10 = "#d1d9df",
    l20 = "#e0e5e9",
    l30 = "#eef2f5",
    l40 = "#f9fcfe",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#224c6a",
    gray = "#446883",
    dark_red = "#a7bac9",
    red = "#a7bac9",
    dark_green = "#839caf",
    green = "#839caf",
    dark_yellow = "#839caf",
    yellow = "#839caf",
    dark_blue = "#a7bac9",
    blue = "#a7bac9",
    dark_magenta = "#839caf",
    magenta = "#839caf",
    dark_cyan = "#a7bac9",
    cyan = "#a7bac9",
    light_gray = "#a7bac9",
    white = "#a7bac9",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#002b51",
        panel = "#001a41",
        float = "#001a41",
        active = "#053b5e",
        disabled = "#224c6a",
        hover = "#053b5e",
        selection = "#224c6a",
        search = "#224c6a",
        contrast = "#d1d9df",
        negative = "#633e3e",
        warn = "#5f533e",
        info = "#40545c",
        hint = "#5f533e",
        positive = "#50563f",
        add = "#50563f",
        delete = "#633e3e",
        modify = "#40545c",
    },
    fg = {
        default = "#eef2f5",
        subtle = "#839caf",
        accent = "#f2f6f9",
        disabled = "#5f7f95",
        contrast = "#002b51",
        negative = "#dd7577",
        warn = "#d6b174",
        info = "#79b5cc",
        hint = "#d6b174",
        positive = "#a9ba78",
        add = "#a9ba78",
        delete = "#dd7577",
        modify = "#79b5cc",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#e0e5e9",
        builtin = "#d1d9df",
        member = "#b3c7d6",
        parameter = "#b3c7d6",
    },
    property = {
        default = "#b3c7d6",
    },
    string = {
        default = "#e0e5e9",
        doc = "#d1d9df",
        regexp = "#f9fcfe",
        escape = "#f9fcfe",
    },
    constant = {
        default = "#d1d9df",
        builtin = "#e0e5e9",
    },
    module = {
        default = "#e0e5e9",
    },
    boolean = {
        default = "#a7bac9",
    },
    number = {
        default = "#d1d9df",
    },
    type = {
        default = "#f9fcfe",
        builtin = "#f9fcfe",
    },
    attribute = {
        default = "#b3c7d6",
        builtin = "#b3c7d6",
    },
    func = {
        default = "#f2f6f9",
        builtin = "#b3c7d6",
        method = "#b3c7d6",
    },
    constructor = {
        default = "#f2f6f9",
    },
    keyword = {
        default = "#eef2f5",
        import = "#f9fcfe",
        export = "#f9fcfe",
    },
    operator = {
        default = "#eef2f5",
    },
    punctuation = {
        default = "#d1d9df",
        delimiter = "#d1d9df",
        bracket = "#d1d9df",
        special = "#d1d9df",
    },
    comment = {
        default = "#839caf",
        doc = "#839caf",
        todo = "#a9ba78",
        error = "#dd7577",
        warn = "#d6b174",
        info = "#79b5cc",
        hint = "#79b5cc",
    },
    markup = {
        heading = {
            h1 = "#f2f6f9",
            h2 = "#f2f6f9",
            h3 = "#f2f6f9",
            h4 = "#a7bac9",
            h5 = "#a7bac9",
            h6 = "#a7bac9",
        },
        strong = "#f2f6f9",
        italic = "#f2f6f9",
        strikethrough = "#f2f6f9",
        quote = "#5f7f95",
        math = "#5f7f95",
        link = "#b3c7d6",
        list = {
            default = "#a7bac9",
            checked = "#a9ba78",
            unchecked = "#a7bac9",
        },
        code = {
            fg = "#d1d9df",
            bg = "#001a41",
        },
    },
    tag = {
        default = "#f2f6f9",
        builtin = "#b3c7d6",
        attribute = "#839caf",
        delimiter = "#d1d9df",
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
