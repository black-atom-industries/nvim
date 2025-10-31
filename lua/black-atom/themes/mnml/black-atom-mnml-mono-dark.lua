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
    d10 = "#000000",
    d20 = "#1a1a1a",
    d30 = "#2c2c2c",
    d40 = "#404040",
    m10 = "#676767",
    m20 = "#737373",
    m30 = "#7f7f7f",
    m40 = "#999999",
    l10 = "#c0c0c0",
    l20 = "#cccccc",
    l30 = "#d9d9d9",
    l40 = "#e6e6e6",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#676767",
    gray = "#676767",
    dark_red = "#676767",
    red = "#999999",
    dark_green = "#676767",
    green = "#7f7f7f",
    dark_yellow = "#676767",
    yellow = "#7f7f7f",
    dark_blue = "#676767",
    blue = "#737373",
    dark_magenta = "#676767",
    magenta = "#7f7f7f",
    dark_cyan = "#676767",
    cyan = "#999999",
    light_gray = "#d9d9d9",
    white = "#e6e6e6",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#000000",
        panel = "#1a1a1a",
        float = "#1a1a1a",
        active = "#2c2c2c",
        disabled = "#404040",
        hover = "#2c2c2c",
        selection = "#404040",
        search = "#404040",
        contrast = "#c0c0c0",
        negative = "#090101",
        warn = "#090500",
        info = "#000308",
        hint = "#090500",
        positive = "#000501",
        add = "#000501",
        delete = "#090101",
        modify = "#000308",
    },
    fg = {
        default = "#d9d9d9",
        subtle = "#999999",
        accent = "#e6e6e6",
        disabled = "#737373",
        contrast = "#1a1a1a",
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
        default = "#cccccc",
        builtin = "#c0c0c0",
        member = "#d9d9d9",
        parameter = "#d9d9d9",
    },
    property = {
        default = "#d9d9d9",
    },
    string = {
        default = "#cccccc",
        doc = "#c0c0c0",
        regexp = "#e6e6e6",
        escape = "#e6e6e6",
    },
    constant = {
        default = "#c0c0c0",
        builtin = "#cccccc",
    },
    module = {
        default = "#cccccc",
    },
    boolean = {
        default = "#999999",
    },
    number = {
        default = "#c0c0c0",
    },
    type = {
        default = "#e6e6e6",
        builtin = "#e6e6e6",
    },
    attribute = {
        default = "#d9d9d9",
        builtin = "#d9d9d9",
    },
    func = {
        default = "#e6e6e6",
        builtin = "#d9d9d9",
        method = "#d9d9d9",
    },
    constructor = {
        default = "#e6e6e6",
    },
    keyword = {
        default = "#d9d9d9",
        import = "#e6e6e6",
        export = "#e6e6e6",
    },
    operator = {
        default = "#d9d9d9",
    },
    punctuation = {
        default = "#c0c0c0",
        delimiter = "#c0c0c0",
        bracket = "#c0c0c0",
        special = "#c0c0c0",
    },
    comment = {
        default = "#7f7f7f",
        doc = "#7f7f7f",
        todo = "#27ae60",
        error = "#e74c3c",
        warn = "#eab308",
        info = "#3498db",
        hint = "#3498db",
    },
    markup = {
        heading = {
            h1 = "#e6e6e6",
            h2 = "#e6e6e6",
            h3 = "#e6e6e6",
            h4 = "#999999",
            h5 = "#999999",
            h6 = "#999999",
        },
        strong = "#e6e6e6",
        italic = "#e6e6e6",
        strikethrough = "#e6e6e6",
        quote = "#737373",
        math = "#737373",
        link = "#d9d9d9",
        list = {
            default = "#999999",
            checked = "#27ae60",
            unchecked = "#999999",
        },
        code = {
            fg = "#c0c0c0",
            bg = "#1a1a1a",
        },
    },
    tag = {
        default = "#e6e6e6",
        builtin = "#d9d9d9",
        attribute = "#7f7f7f",
        delimiter = "#c0c0c0",
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
