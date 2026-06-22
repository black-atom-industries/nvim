local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-paper-brown-dark",
    label = "Black Atom — PAPER ∷ Brown Dark",
    appearance = "dark",
    status = "development",
    collection = {
        key = "paper",
        label = "PAPER",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#131110",
    d20 = "#211f1c",
    d30 = "#37322c",
    d40 = "#4e463d",
    m10 = "#6c6154",
    m20 = "#83796a",
    m30 = "#9b9082",
    m40 = "#b4a99a",
    l10 = "#cec2b3",
    l20 = "#dbcfbf",
    l30 = "#e8dccc",
    l40 = "#f5e9d9",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#4e463d",
    gray = "#6c6154",
    dark_red = "#b4a99a",
    red = "#b4a99a",
    dark_green = "#9b9082",
    green = "#9b9082",
    dark_yellow = "#9b9082",
    yellow = "#9b9082",
    dark_blue = "#b4a99a",
    blue = "#b4a99a",
    dark_magenta = "#9b9082",
    magenta = "#9b9082",
    dark_cyan = "#b4a99a",
    cyan = "#b4a99a",
    light_gray = "#b4a99a",
    white = "#b4a99a",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#211f1c",
        panel = "#131110",
        float = "#131110",
        active = "#37322c",
        disabled = "#4e463d",
        hover = "#37322c",
        selection = "#4e463d",
        search = "#4e463d",
        contrast = "#cec2b3",
        negative = "#5b3737",
        warn = "#574b36",
        info = "#384c54",
        hint = "#574b36",
        positive = "#484e37",
        add = "#484e37",
        delete = "#5b3737",
        modify = "#384c54",
    },
    fg = {
        default = "#e8dccc",
        subtle = "#9b9082",
        accent = "#e5ddd0",
        disabled = "#83796a",
        contrast = "#211f1c",
        negative = "#dd7577",
        warn = "#d6b174",
        info = "#79b5cc",
        hint = "#d6b174",
        positive = "#a9ba78",
        add = "#a9ba78",
        delete = "#dd7577",
        modify = "#79b5cc",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#dbcfbf",
        builtin = "#cec2b3",
        member = "#b8b0a5",
        parameter = "#b8b0a5",
    },
    property = {
        default = "#b8b0a5",
    },
    string = {
        default = "#dbcfbf",
        doc = "#cec2b3",
        regexp = "#f5e9d9",
        escape = "#f5e9d9",
    },
    constant = {
        default = "#cec2b3",
        builtin = "#dbcfbf",
    },
    module = {
        default = "#dbcfbf",
    },
    boolean = {
        default = "#b4a99a",
    },
    number = {
        default = "#cec2b3",
    },
    type = {
        default = "#f5e9d9",
        builtin = "#f5e9d9",
    },
    attribute = {
        default = "#b8b0a5",
        builtin = "#b8b0a5",
    },
    func = {
        default = "#e5ddd0",
        builtin = "#b8b0a5",
        method = "#b8b0a5",
    },
    constructor = {
        default = "#e5ddd0",
    },
    keyword = {
        default = "#e8dccc",
        import = "#f5e9d9",
        export = "#f5e9d9",
    },
    operator = {
        default = "#e8dccc",
    },
    punctuation = {
        default = "#cec2b3",
        delimiter = "#cec2b3",
        bracket = "#cec2b3",
        special = "#cec2b3",
    },
    comment = {
        default = "#9b9082",
        doc = "#9b9082",
        todo = "#a9ba78",
        error = "#dd7577",
        warn = "#d6b174",
        info = "#79b5cc",
        hint = "#79b5cc",
    },
    markup = {
        heading = {
            h1 = "#e5ddd0",
            h2 = "#e5ddd0",
            h3 = "#e5ddd0",
            h4 = "#b4a99a",
            h5 = "#b4a99a",
            h6 = "#b4a99a",
        },
        strong = "#e5ddd0",
        italic = "#e5ddd0",
        strikethrough = "#e5ddd0",
        quote = "#83796a",
        math = "#83796a",
        link = "#b8b0a5",
        list = {
            default = "#b4a99a",
            checked = "#a9ba78",
            unchecked = "#b4a99a",
        },
        code = {
            fg = "#cec2b3",
            bg = "#131110",
        },
    },
    tag = {
        default = "#e5ddd0",
        builtin = "#b8b0a5",
        attribute = "#9b9082",
        delimiter = "#cec2b3",
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
