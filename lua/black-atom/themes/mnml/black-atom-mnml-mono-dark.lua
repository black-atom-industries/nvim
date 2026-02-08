local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-mnml-mono-dark",
    label = "Black Atom — MNM ∷ Mono Dark",
    appearance = "dark",
    status = "development",
    collection = {
        key = "mnml",
        label = "MNM",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#030303",
    d20 = "#090909",
    d30 = "#161616",
    d40 = "#242424",
    m10 = "#484848",
    m20 = "#636363",
    m30 = "#808080",
    m40 = "#9e9e9e",
    l10 = "#c4c4c4",
    l20 = "#d7d7d7",
    l30 = "#ebebeb",
    l40 = "#f8f8f8",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#242424",
    gray = "#484848",
    dark_red = "#9e9e9e",
    red = "#9e9e9e",
    dark_green = "#808080",
    green = "#808080",
    dark_yellow = "#808080",
    yellow = "#808080",
    dark_blue = "#9e9e9e",
    blue = "#9e9e9e",
    dark_magenta = "#808080",
    magenta = "#808080",
    dark_cyan = "#9e9e9e",
    cyan = "#9e9e9e",
    light_gray = "#9e9e9e",
    white = "#9e9e9e",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#090909",
        panel = "#030303",
        float = "#030303",
        active = "#161616",
        disabled = "#242424",
        hover = "#161616",
        selection = "#242424",
        search = "#242424",
        contrast = "#c4c4c4",
        negative = "#301515",
        warn = "#2c220f",
        info = "#10242c",
        hint = "#2c220f",
        positive = "#182717",
        add = "#182717",
        delete = "#301515",
        modify = "#10242c",
    },
    fg = {
        default = "#ebebeb",
        subtle = "#808080",
        accent = "#e4e4e4",
        disabled = "#636363",
        contrast = "#090909",
        negative = "#e85760",
        warn = "#d9a02c",
        info = "#30add6",
        hint = "#d9a02c",
        positive = "#6eba66",
        add = "#6eba66",
        delete = "#e85760",
        modify = "#30add6",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#d7d7d7",
        builtin = "#c4c4c4",
        member = "#b7b7b7",
        parameter = "#b7b7b7",
    },
    property = {
        default = "#b7b7b7",
    },
    string = {
        default = "#d7d7d7",
        doc = "#c4c4c4",
        regexp = "#f8f8f8",
        escape = "#f8f8f8",
    },
    constant = {
        default = "#c4c4c4",
        builtin = "#d7d7d7",
    },
    module = {
        default = "#d7d7d7",
    },
    boolean = {
        default = "#9e9e9e",
    },
    number = {
        default = "#c4c4c4",
    },
    type = {
        default = "#f8f8f8",
        builtin = "#f8f8f8",
    },
    attribute = {
        default = "#b7b7b7",
        builtin = "#b7b7b7",
    },
    func = {
        default = "#e4e4e4",
        builtin = "#b7b7b7",
        method = "#b7b7b7",
    },
    constructor = {
        default = "#e4e4e4",
    },
    keyword = {
        default = "#ebebeb",
        import = "#f8f8f8",
        export = "#f8f8f8",
    },
    operator = {
        default = "#ebebeb",
    },
    punctuation = {
        default = "#c4c4c4",
        delimiter = "#c4c4c4",
        bracket = "#c4c4c4",
        special = "#c4c4c4",
    },
    comment = {
        default = "#808080",
        doc = "#808080",
        todo = "#6eba66",
        error = "#e85760",
        warn = "#d9a02c",
        info = "#30add6",
        hint = "#30add6",
    },
    markup = {
        heading = {
            h1 = "#e4e4e4",
            h2 = "#e4e4e4",
            h3 = "#e4e4e4",
            h4 = "#9e9e9e",
            h5 = "#9e9e9e",
            h6 = "#9e9e9e",
        },
        strong = "#e4e4e4",
        italic = "#e4e4e4",
        strikethrough = "#e4e4e4",
        quote = "#636363",
        math = "#636363",
        link = "#b7b7b7",
        list = {
            default = "#9e9e9e",
            checked = "#6eba66",
            unchecked = "#9e9e9e",
        },
        code = {
            fg = "#c4c4c4",
            bg = "#030303",
        },
    },
    tag = {
        default = "#e4e4e4",
        builtin = "#b7b7b7",
        attribute = "#808080",
        delimiter = "#c4c4c4",
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
