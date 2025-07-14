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
        default = "#ffffff",
        panel = "#f5f5f5",
        float = "#f5f5f5",
        active = "#cccccc",
        disabled = "#808080",
        hover = "#cccccc",
        selection = "#cccccc",
        search = "#cccccc",
        contrast = "#1a1a1a",
        negative = "#999999",
        warn = "#1a1a1a",
        info = "#999999",
        hint = "#333333",
        positive = "#999999",
        add = "#999999",
        delete = "#999999",
        modify = "#999999",
    },
    fg = {
        default = "#1a1a1a",
        subtle = "#4d4d4d",
        accent = "#000000",
        disabled = "#808080",
        contrast = "#e6e6e6",
        negative = "#999999",
        warn = "#1a1a1a",
        info = "#999999",
        hint = "#333333",
        positive = "#999999",
        add = "#999999",
        delete = "#999999",
        modify = "#999999",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#4d4d4d",
        builtin = "#4d4d4d",
        member = "#666666",
        parameter = "#000000",
    },
    property = {
        default = "#666666",
    },
    string = {
        default = "#333333",
        doc = "#4d4d4d",
        regexp = "#000000",
        escape = "#000000",
    },
    constant = {
        default = "#1a1a1a",
        builtin = "#000000",
    },
    module = {
        default = "#999999",
    },
    boolean = {
        default = "#666666",
    },
    number = {
        default = "#4d4d4d",
    },
    type = {
        default = "#000000",
        builtin = "#4d4d4d",
    },
    attribute = {
        default = "#1a1a1a",
        builtin = "#1a1a1a",
    },
    func = {
        default = "#000000",
        builtin = "#1a1a1a",
        method = "#000000",
    },
    constructor = {
        default = "#000000",
    },
    keyword = {
        default = "#333333",
        import = "#999999",
        export = "#808080",
    },
    operator = {
        default = "#1a1a1a",
    },
    punctuation = {
        default = "#4d4d4d",
        delimiter = "#4d4d4d",
        bracket = "#4d4d4d",
        special = "#4d4d4d",
    },
    comment = {
        default = "#666666",
        doc = "#808080",
        todo = "#999999",
        error = "#999999",
        warn = "#000000",
        info = "#999999",
        hint = "#1a1a1a",
    },
    markup = {
        heading = {
            h1 = "#000000",
            h2 = "#000000",
            h3 = "#000000",
            h4 = "#666666",
            h5 = "#666666",
            h6 = "#666666",
        },
        strong = "#000000",
        italic = "#000000",
        strikethrough = "#000000",
        quote = "#999999",
        math = "#808080",
        link = "#999999",
        list = {
            default = "#666666",
            checked = "#999999",
            unchecked = "#666666",
        },
        code = {
            fg = "#4d4d4d",
            bg = "#e6e6e6",
        },
    },
    tag = {
        default = "#000000",
        builtin = "#1a1a1a",
        attribute = "#666666",
        delimiter = "#4d4d4d",
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