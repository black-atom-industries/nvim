local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-terra-fall-day",
    label = "Black Atom — TERRA ∷ Fall Day",
    appearance = "light",
    status = "development",
    collection = {
        key = "terra",
        label = "TERRA",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#280e02",
    d20 = "#422617",
    d30 = "#4f3222",
    d40 = "#694a39",
    m10 = "#815137",
    m20 = "#9b6a4f",
    m30 = "#b78368",
    m40 = "#d39e82",
    l10 = "#e3bfa4",
    l20 = "#eeceb6",
    l30 = "#f8ddc7",
    l40 = "#ffe6d2",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#694a39",
    gray = "#815137",
    dark_red = "#a23125",
    red = "#bf4d3f",
    dark_green = "#546540",
    green = "#6d7e57",
    dark_yellow = "#e16648",
    yellow = "#d9710b",
    dark_blue = "#755644",
    blue = "#956d57",
    dark_magenta = "#864d37",
    magenta = "#a26650",
    dark_cyan = "#35695c",
    cyan = "#4f8375",
    light_gray = "#e3bfa4",
    white = "#f8ddc7",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#f8ddc7",
        panel = "#eeceb6",
        float = "#eeceb6",
        active = "#e3bfa4",
        disabled = "#b78368",
        hover = "#e3bfa4",
        selection = "#ffe6d2",
        search = "#ffe6d2",
        contrast = "#422617",
        negative = "#f0c2a5",
        warn = "#f7caa7",
        info = "#e4c7b1",
        hint = "#f9c9a9",
        positive = "#ddcaad",
        add = "#ddcaad",
        delete = "#f0c2a5",
        modify = "#e4c7b1",
    },
    fg = {
        default = "#422617",
        subtle = "#815137",
        accent = "#d9710b",
        disabled = "#9b6a4f",
        contrast = "#f8ddc7",
        negative = "#bf4d3f",
        warn = "#d9710b",
        info = "#956d57",
        hint = "#e16648",
        positive = "#6d7e57",
        add = "#6d7e57",
        delete = "#bf4d3f",
        modify = "#956d57",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#956d57",
        builtin = "#755644",
        member = "#755644",
        parameter = "#e16648",
    },
    property = {
        default = "#755644",
    },
    string = {
        default = "#6d7e57",
        doc = "#6d7e57",
        regexp = "#bf4d3f",
        escape = "#bf4d3f",
    },
    constant = {
        default = "#e16648",
        builtin = "#e16648",
    },
    module = {
        default = "#755644",
    },
    boolean = {
        default = "#546540",
    },
    number = {
        default = "#546540",
    },
    type = {
        default = "#4f8375",
        builtin = "#35695c",
    },
    attribute = {
        default = "#e16648",
        builtin = "#e16648",
    },
    func = {
        default = "#d9710b",
        builtin = "#d9710b",
        method = "#d9710b",
    },
    constructor = {
        default = "#d9710b",
    },
    keyword = {
        default = "#a26650",
        import = "#bf4d3f",
        export = "#bf4d3f",
    },
    operator = {
        default = "#422617",
    },
    punctuation = {
        default = "#815137",
        delimiter = "#d39e82",
        bracket = "#815137",
        special = "#815137",
    },
    comment = {
        default = "#815137",
        doc = "#546540",
        todo = "#6d7e57",
        error = "#bf4d3f",
        warn = "#d9710b",
        info = "#956d57",
        hint = "#e16648",
    },
    markup = {
        heading = {
            h1 = "#d9710b",
            h2 = "#d9710b",
            h3 = "#d9710b",
            h4 = "#815137",
            h5 = "#815137",
            h6 = "#815137",
        },
        strong = "#d9710b",
        italic = "#d9710b",
        strikethrough = "#d9710b",
        quote = "#6d7e57",
        math = "#546540",
        link = "#6d7e57",
        list = {
            default = "#815137",
            checked = "#6d7e57",
            unchecked = "#815137",
        },
        code = {
            fg = "#815137",
            bg = "#e3bfa4",
        },
    },
    tag = {
        default = "#d9710b",
        builtin = "#e16648",
        attribute = "#815137",
        delimiter = "#694a39",
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
