local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-mnml-47-dark",
    label = "Black Atom — MNM ∷ 47 Dark",
    appearance = "dark",
    status = "development",
    collection = {
        key = "mnml",
        label = "MNM",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#151712",
    d20 = "#20231b",
    d30 = "#373d2f",
    d40 = "#434b36",
    m10 = "#5d684c",
    m20 = "#6b765a",
    m30 = "#7a8568",
    m40 = "#98a485",
    l10 = "#e5cdad",
    l20 = "#f2daba",
    l30 = "#ffe7c7",
    l40 = "#feefdc",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#5d684c",
    gray = "#5d684c",
    dark_red = "#98a485",
    red = "#98a485",
    dark_green = "#3dc7a9",
    green = "#3dc7a9",
    dark_yellow = "#fa8e3c",
    yellow = "#fa8e3c",
    dark_blue = "#6b765a",
    blue = "#6b765a",
    dark_magenta = "#7a8568",
    magenta = "#7a8568",
    dark_cyan = "#98a485",
    cyan = "#98a485",
    light_gray = "#f2daba",
    white = "#f2daba",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#20231b",
        panel = "#151712",
        float = "#151712",
        active = "#373d2f",
        disabled = "#434b36",
        hover = "#373d2f",
        selection = "#434b36",
        search = "#434b36",
        contrast = "#e5cdad",
        negative = "#2a2b19",
        warn = "#272c1a",
        info = "#242c25",
        hint = "#272c1a",
        positive = "#242d1f",
        add = "#242d1f",
        delete = "#2a2b19",
        modify = "#242c25",
    },
    fg = {
        default = "#ffe7c7",
        subtle = "#7a8568",
        accent = "#3dc7a9",
        disabled = "#6b765a",
        contrast = "#20231b",
        negative = "#fe886a",
        warn = "#ccac16",
        info = "#a4acce",
        hint = "#ccac16",
        positive = "#3dc7a9",
        add = "#3dc7a9",
        delete = "#fe886a",
        modify = "#a4acce",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#f2daba",
        builtin = "#e5cdad",
        member = "#fa8e3c",
        parameter = "#fa8e3c",
    },
    property = {
        default = "#fa8e3c",
    },
    string = {
        default = "#f2daba",
        doc = "#e5cdad",
        regexp = "#feefdc",
        escape = "#feefdc",
    },
    constant = {
        default = "#e5cdad",
        builtin = "#f2daba",
    },
    module = {
        default = "#f2daba",
    },
    boolean = {
        default = "#98a485",
    },
    number = {
        default = "#e5cdad",
    },
    type = {
        default = "#feefdc",
        builtin = "#feefdc",
    },
    attribute = {
        default = "#fa8e3c",
        builtin = "#fa8e3c",
    },
    func = {
        default = "#3dc7a9",
        builtin = "#fa8e3c",
        method = "#fa8e3c",
    },
    constructor = {
        default = "#3dc7a9",
    },
    keyword = {
        default = "#ffe7c7",
        import = "#feefdc",
        export = "#feefdc",
    },
    operator = {
        default = "#ffe7c7",
    },
    punctuation = {
        default = "#e5cdad",
        delimiter = "#e5cdad",
        bracket = "#e5cdad",
        special = "#e5cdad",
    },
    comment = {
        default = "#7a8568",
        doc = "#7a8568",
        todo = "#3dc7a9",
        error = "#fe886a",
        warn = "#ccac16",
        info = "#a4acce",
        hint = "#a4acce",
    },
    markup = {
        heading = {
            h1 = "#3dc7a9",
            h2 = "#3dc7a9",
            h3 = "#3dc7a9",
            h4 = "#98a485",
            h5 = "#98a485",
            h6 = "#98a485",
        },
        strong = "#3dc7a9",
        italic = "#3dc7a9",
        strikethrough = "#3dc7a9",
        quote = "#6b765a",
        math = "#6b765a",
        link = "#fa8e3c",
        list = {
            default = "#98a485",
            checked = "#3dc7a9",
            unchecked = "#98a485",
        },
        code = {
            fg = "#e5cdad",
            bg = "#20231b",
        },
    },
    tag = {
        default = "#3dc7a9",
        builtin = "#fa8e3c",
        attribute = "#7a8568",
        delimiter = "#e5cdad",
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
