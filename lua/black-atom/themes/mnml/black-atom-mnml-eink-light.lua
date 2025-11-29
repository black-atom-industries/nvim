local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-mnml-eink-light",
    label = "Black Atom — MNM ∷ E-Ink Light",
    appearance = "light",
    status = "development",
    collection = {
        key = "mnml",
        label = "MNM",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#242424",
    d20 = "#2e2e2e",
    d30 = "#383838",
    d40 = "#424242",
    m10 = "#5d5d5d",
    m20 = "#696969",
    m30 = "#747474",
    m40 = "#808080",
    l10 = "#c4c4c4",
    l20 = "#d1d1d1",
    l30 = "#dedede",
    l40 = "#ebebeb",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#5d5d5d",
    gray = "#5d5d5d",
    dark_red = "#808080",
    red = "#808080",
    dark_green = "#747474",
    green = "#747474",
    dark_yellow = "#747474",
    yellow = "#747474",
    dark_blue = "#696969",
    blue = "#696969",
    dark_magenta = "#747474",
    magenta = "#747474",
    dark_cyan = "#808080",
    cyan = "#808080",
    light_gray = "#c4c4c4",
    white = "#d1d1d1",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#dedede",
        panel = "#d1d1d1",
        float = "#d1d1d1",
        active = "#c4c4c4",
        disabled = "#c4c4c4",
        hover = "#d1d1d1",
        selection = "#c4c4c4",
        search = "#c4c4c4",
        contrast = "#424242",
        negative = "#f0d4d1",
        warn = "#e9dfd0",
        info = "#cfddd9",
        hint = "#e9dfd0",
        positive = "#dae0cf",
        add = "#dae0cf",
        delete = "#f0d4d1",
        modify = "#cfddd9",
    },
    fg = {
        default = "#2e2e2e",
        subtle = "#5d5d5d",
        accent = "#5f5155",
        disabled = "#747474",
        contrast = "#d1d1d1",
        negative = "#ea3c3f",
        warn = "#d89700",
        info = "#008f77",
        hint = "#d89700",
        positive = "#839d00",
        add = "#839d00",
        delete = "#ea3c3f",
        modify = "#008f77",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#424242",
        builtin = "#424242",
        member = "#5d5d5d",
        parameter = "#5f5155",
    },
    property = {
        default = "#776f71",
    },
    string = {
        default = "#696969",
        doc = "#776f71",
        regexp = "#5f5155",
        escape = "#5f5155",
    },
    constant = {
        default = "#2e2e2e",
        builtin = "#242424",
    },
    module = {
        default = "#383838",
    },
    boolean = {
        default = "#5d5d5d",
    },
    number = {
        default = "#424242",
    },
    type = {
        default = "#242424",
        builtin = "#424242",
    },
    attribute = {
        default = "#776f71",
        builtin = "#776f71",
    },
    func = {
        default = "#5f5155",
        builtin = "#776f71",
        method = "#776f71",
    },
    constructor = {
        default = "#5f5155",
    },
    keyword = {
        default = "#776f71",
        import = "#776f71",
        export = "#776f71",
    },
    operator = {
        default = "#2e2e2e",
    },
    punctuation = {
        default = "#424242",
        delimiter = "#424242",
        bracket = "#424242",
        special = "#424242",
    },
    comment = {
        default = "#696969",
        doc = "#696969",
        todo = "#839d00",
        error = "#ea3c3f",
        warn = "#d89700",
        info = "#008f77",
        hint = "#008f77",
    },
    markup = {
        heading = {
            h1 = "#5f5155",
            h2 = "#5f5155",
            h3 = "#5f5155",
            h4 = "#5d5d5d",
            h5 = "#5d5d5d",
            h6 = "#5d5d5d",
        },
        strong = "#5f5155",
        italic = "#5f5155",
        strikethrough = "#5f5155",
        quote = "#747474",
        math = "#696969",
        link = "#776f71",
        list = {
            default = "#5d5d5d",
            checked = "#839d00",
            unchecked = "#5d5d5d",
        },
        code = {
            fg = "#424242",
            bg = "#d1d1d1",
        },
    },
    tag = {
        default = "#776f71",
        builtin = "#5f5155",
        attribute = "#5d5d5d",
        delimiter = "#747474",
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
