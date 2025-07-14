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
    d30 = "#333333",
    d40 = "#4d4d4d",
    m10 = "#666666",
    m20 = "#808080",
    m30 = "#999999",
    m40 = "#b3b3b3",
    l10 = "#cccccc",
    l20 = "#e6e6e6",
    l30 = "#f5f5f5",
    l40 = "#ffffff",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#000000",
    gray = "#666666",
    dark_red = "#808080",
    red = "#999999",
    dark_green = "#808080",
    green = "#999999",
    dark_yellow = "#808080",
    yellow = "#999999",
    dark_blue = "#808080",
    blue = "#999999",
    dark_magenta = "#666666",
    magenta = "#808080",
    dark_cyan = "#666666",
    cyan = "#808080",
    light_gray = "#999999",
    white = "#cccccc",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#000000",
        panel = "#1a1a1a",
        float = "#1a1a1a",
        active = "#333333",
        disabled = "#4d4d4d",
        hover = "#333333",
        selection = "#4d4d4d",
        search = "#4d4d4d",
        contrast = "#cccccc",
        negative = "#999999",
        warn = "#f5f5f5",
        info = "#999999",
        hint = "#e6e6e6",
        positive = "#999999",
        add = "#999999",
        delete = "#999999",
        modify = "#999999",
    },
    fg = {
        default = "#cccccc",
        subtle = "#999999",
        accent = "#ffffff",
        disabled = "#808080",
        contrast = "#1a1a1a",
        negative = "#999999",
        warn = "#f5f5f5",
        info = "#999999",
        hint = "#e6e6e6",
        positive = "#999999",
        add = "#999999",
        delete = "#999999",
        modify = "#999999",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#cccccc",
        builtin = "#cccccc",
        member = "#b3b3b3",
        parameter = "#f5f5f5",
    },
    property = {
        default = "#b3b3b3",
    },
    string = {
        default = "#e6e6e6",
        doc = "#cccccc",
        regexp = "#ffffff",
        escape = "#ffffff",
    },
    constant = {
        default = "#cccccc",
        builtin = "#e6e6e6",
    },
    module = {
        default = "#999999",
    },
    boolean = {
        default = "#666666",
    },
    number = {
        default = "#cccccc",
    },
    type = {
        default = "#ffffff",
        builtin = "#ffffff",
    },
    attribute = {
        default = "#f5f5f5",
        builtin = "#f5f5f5",
    },
    func = {
        default = "#ffffff",
        builtin = "#f5f5f5",
        method = "#ffffff",
    },
    constructor = {
        default = "#ffffff",
    },
    keyword = {
        default = "#e6e6e6",
        import = "#999999",
        export = "#808080",
    },
    operator = {
        default = "#f5f5f5",
    },
    punctuation = {
        default = "#cccccc",
        delimiter = "#cccccc",
        bracket = "#cccccc",
        special = "#cccccc",
    },
    comment = {
        default = "#666666",
        doc = "#808080",
        todo = "#999999",
        error = "#999999",
        warn = "#ffffff",
        info = "#999999",
        hint = "#f5f5f5",
    },
    markup = {
        heading = {
            h1 = "#ffffff",
            h2 = "#ffffff",
            h3 = "#ffffff",
            h4 = "#666666",
            h5 = "#666666",
            h6 = "#666666",
        },
        strong = "#ffffff",
        italic = "#ffffff",
        strikethrough = "#ffffff",
        quote = "#999999",
        math = "#808080",
        link = "#999999",
        list = {
            default = "#666666",
            checked = "#999999",
            unchecked = "#666666",
        },
        code = {
            fg = "#cccccc",
            bg = "#4d4d4d",
        },
    },
    tag = {
        default = "#ffffff",
        builtin = "#f5f5f5",
        attribute = "#999999",
        delimiter = "#cccccc",
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