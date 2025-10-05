local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-terra-fall-day",
    label = "Black Atom — TER ∷ Fall Day",
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
    black = "#4f3222",
    gray = "#9b6a4f",
    dark_red = "#a23125",
    red = "#bf4d3f",
    dark_green = "#546540",
    green = "#6d7e57",
    dark_yellow = "#e16648",
    yellow = "#d9710a",
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
        negative = "#efc7b3",
        warn = "#f3cdab",
        info = "#e9ccb6",
        hint = "#f5cbb4",
        positive = "#e3cfb6",
        add = "#e3cfb6",
        delete = "#efc7b3",
        modify = "#e9ccb6",
    },
    fg = {
        default = "#422617",
        subtle = "#815137",
        accent = "#d9710a",
        disabled = "#9b6a4f",
        contrast = "#f8ddc7",
        negative = "#bf4d3f",
        warn = "#d9710a",
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
        default = "#d9710a",
        builtin = "#d9710a",
        method = "#d9710a",
    },
    constructor = {
        default = "#d9710a",
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
        default = "#9b6a4f",
        delimiter = "#d39e82",
        bracket = "#9b6a4f",
        special = "#9b6a4f",
    },
    comment = {
        default = "#9b6a4f",
        doc = "#546540",
        todo = "#6d7e57",
        error = "#bf4d3f",
        warn = "#d9710a",
        info = "#956d57",
        hint = "#e16648",
    },
    markup = {
        heading = {
            h1 = "#d9710a",
            h2 = "#d9710a",
            h3 = "#d9710a",
            h4 = "#9b6a4f",
            h5 = "#9b6a4f",
            h6 = "#9b6a4f",
        },
        strong = "#d9710a",
        italic = "#d9710a",
        strikethrough = "#d9710a",
        quote = "#6d7e57",
        math = "#546540",
        link = "#6d7e57",
        list = {
            default = "#9b6a4f",
            checked = "#6d7e57",
            unchecked = "#9b6a4f",
        },
        code = {
            fg = "#815137",
            bg = "#e3bfa4",
        },
    },
    tag = {
        default = "#d9710a",
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
