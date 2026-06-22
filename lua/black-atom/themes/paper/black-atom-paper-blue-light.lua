local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-paper-blue-light",
    label = "Black Atom — PAPER ∷ Blue Light",
    appearance = "light",
    status = "development",
    collection = {
        key = "paper",
        label = "PAPER",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#001e4c",
    d20 = "#002469",
    d30 = "#003777",
    d40 = "#004f8b",
    m10 = "#32669a",
    m20 = "#497eb3",
    m30 = "#558ac0",
    m40 = "#679dd4",
    l10 = "#c5cbd2",
    l20 = "#dadee3",
    l30 = "#eff2f6",
    l40 = "#fafcfe",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#004f8b",
    gray = "#32669a",
    dark_red = "#679dd4",
    red = "#679dd4",
    dark_green = "#558ac0",
    green = "#558ac0",
    dark_yellow = "#558ac0",
    yellow = "#558ac0",
    dark_blue = "#679dd4",
    blue = "#679dd4",
    dark_magenta = "#558ac0",
    magenta = "#558ac0",
    dark_cyan = "#679dd4",
    cyan = "#679dd4",
    light_gray = "#679dd4",
    white = "#679dd4",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#eff2f6",
        panel = "#dadee3",
        float = "#dadee3",
        active = "#fafcfe",
        disabled = "#c5cbd2",
        hover = "#dadee3",
        selection = "#c5cbd2",
        search = "#c5cbd2",
        contrast = "#004f8b",
        negative = "#ffd4cf",
        warn = "#f2dcc8",
        info = "#cce7f9",
        hint = "#f2dcc8",
        positive = "#dce5c8",
        add = "#dce5c8",
        delete = "#ffd4cf",
        modify = "#cce7f9",
    },
    fg = {
        default = "#002469",
        subtle = "#32669a",
        accent = "#002469",
        disabled = "#558ac0",
        contrast = "#dadee3",
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
        default = "#003777",
        builtin = "#004f8b",
        member = "#004f8b",
        parameter = "#004f8b",
    },
    property = {
        default = "#32669a",
    },
    string = {
        default = "#497eb3",
        doc = "#004f8b",
        regexp = "#002469",
        escape = "#002469",
    },
    constant = {
        default = "#002469",
        builtin = "#001e4c",
    },
    module = {
        default = "#003777",
    },
    boolean = {
        default = "#32669a",
    },
    number = {
        default = "#004f8b",
    },
    type = {
        default = "#001e4c",
        builtin = "#004f8b",
    },
    attribute = {
        default = "#004f8b",
        builtin = "#004f8b",
    },
    func = {
        default = "#002469",
        builtin = "#004f8b",
        method = "#004f8b",
    },
    constructor = {
        default = "#002469",
    },
    keyword = {
        default = "#004f8b",
        import = "#004f8b",
        export = "#004f8b",
    },
    operator = {
        default = "#002469",
    },
    punctuation = {
        default = "#004f8b",
        delimiter = "#004f8b",
        bracket = "#004f8b",
        special = "#004f8b",
    },
    comment = {
        default = "#497eb3",
        doc = "#497eb3",
        todo = "#819e00",
        error = "#f14d4c",
        warn = "#cd7b00",
        info = "#00a3e9",
        hint = "#00a3e9",
    },
    markup = {
        heading = {
            h1 = "#002469",
            h2 = "#002469",
            h3 = "#002469",
            h4 = "#32669a",
            h5 = "#32669a",
            h6 = "#32669a",
        },
        strong = "#002469",
        italic = "#002469",
        strikethrough = "#002469",
        quote = "#558ac0",
        math = "#497eb3",
        link = "#004f8b",
        list = {
            default = "#32669a",
            checked = "#819e00",
            unchecked = "#32669a",
        },
        code = {
            fg = "#004f8b",
            bg = "#dadee3",
        },
    },
    tag = {
        default = "#004f8b",
        builtin = "#002469",
        attribute = "#32669a",
        delimiter = "#558ac0",
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
