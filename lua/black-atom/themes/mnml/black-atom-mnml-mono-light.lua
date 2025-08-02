local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-mnml-mono-light",
    label = "Black Atom — MNM ∷ Mono Light",
    appearance = "light",
    status = "development",
    collection = {
        key = "mnml",
        label = "MNM",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#000000",
    d20 = "#242424",
    d30 = "#333333",
    d40 = "#404040",
    m10 = "#5a5a5a",
    m20 = "#666666",
    m30 = "#737373",
    m40 = "#8c8c8c",
    l10 = "#c0c0c0",
    l20 = "#cccccc",
    l30 = "#e1e1e1",
    l40 = "#f3f3f3",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#242424",
    gray = "#5a5a5a",
    dark_red = "#404040",
    red = "#8c8c8c",
    dark_green = "#333333",
    green = "#737373",
    dark_yellow = "#404040",
    yellow = "#737373",
    dark_blue = "#404040",
    blue = "#666666",
    dark_magenta = "#333333",
    magenta = "#737373",
    dark_cyan = "#5a5a5a",
    cyan = "#8c8c8c",
    light_gray = "#8c8c8c",
    white = "#cccccc",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#f3f3f3",
        panel = "#e1e1e1",
        float = "#e1e1e1",
        active = "#cccccc",
        disabled = "#c0c0c0",
        hover = "#cccccc",
        selection = "#c0c0c0",
        search = "#c0c0c0",
        contrast = "#404040",
        negative = "#e74c3c",
        warn = "#eab308",
        info = "#3498db",
        hint = "#eab308",
        positive = "#27ae60",
        add = "#27ae60",
        delete = "#e74c3c",
        modify = "#3498db",
    },
    fg = {
        default = "#242424",
        subtle = "#5a5a5a",
        accent = "#000000",
        disabled = "#737373",
        contrast = "#cccccc",
        negative = "#e74c3c",
        warn = "#eab308",
        info = "#3498db",
        hint = "#eab308",
        positive = "#27ae60",
        add = "#27ae60",
        delete = "#e74c3c",
        modify = "#3498db",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#404040",
        builtin = "#404040",
        member = "#5a5a5a",
        parameter = "#000000",
    },
    property = {
        default = "#333333",
    },
    string = {
        default = "#8c8c8c",
        doc = "#333333",
        regexp = "#000000",
        escape = "#000000",
    },
    constant = {
        default = "#242424",
        builtin = "#000000",
    },
    module = {
        default = "#333333",
    },
    boolean = {
        default = "#5a5a5a",
    },
    number = {
        default = "#404040",
    },
    type = {
        default = "#000000",
        builtin = "#404040",
    },
    attribute = {
        default = "#333333",
        builtin = "#333333",
    },
    func = {
        default = "#000000",
        builtin = "#333333",
        method = "#333333",
    },
    constructor = {
        default = "#000000",
    },
    keyword = {
        default = "#242424",
        import = "#333333",
        export = "#333333",
    },
    operator = {
        default = "#242424",
    },
    punctuation = {
        default = "#404040",
        delimiter = "#404040",
        bracket = "#404040",
        special = "#404040",
    },
    comment = {
        default = "#666666",
        doc = "#666666",
        todo = "#27ae60",
        error = "#e74c3c",
        warn = "#eab308",
        info = "#3498db",
        hint = "#3498db",
    },
    markup = {
        heading = {
            h1 = "#000000",
            h2 = "#000000",
            h3 = "#000000",
            h4 = "#5a5a5a",
            h5 = "#5a5a5a",
            h6 = "#5a5a5a",
        },
        strong = "#000000",
        italic = "#000000",
        strikethrough = "#000000",
        quote = "#737373",
        math = "#666666",
        link = "#333333",
        list = {
            default = "#5a5a5a",
            checked = "#27ae60",
            unchecked = "#5a5a5a",
        },
        code = {
            fg = "#404040",
            bg = "#e1e1e1",
        },
    },
    tag = {
        default = "#333333",
        builtin = "#000000",
        attribute = "#5a5a5a",
        delimiter = "#737373",
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
