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
    d10 = "#24180d",
    d20 = "#332619",
    d30 = "#433528",
    d40 = "#534537",
    m10 = "#6e6152",
    m20 = "#83786b",
    m30 = "#9a9185",
    m40 = "#b1aa9f",
    l10 = "#cac3b9",
    l20 = "#d4cdc1",
    l30 = "#dcd3c6",
    l40 = "#e9e0d1",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#534537",
    gray = "#6e6152",
    dark_red = "#b1aa9f",
    red = "#b1aa9f",
    dark_green = "#9a9185",
    green = "#9a9185",
    dark_yellow = "#9a9185",
    yellow = "#9a9185",
    dark_blue = "#b1aa9f",
    blue = "#b1aa9f",
    dark_magenta = "#9a9185",
    magenta = "#9a9185",
    dark_cyan = "#b1aa9f",
    cyan = "#b1aa9f",
    light_gray = "#b1aa9f",
    white = "#b1aa9f",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#332619",
        panel = "#24180d",
        float = "#24180d",
        active = "#433528",
        disabled = "#534537",
        hover = "#433528",
        selection = "#534537",
        search = "#534537",
        contrast = "#cac3b9",
        negative = "#623e3e",
        warn = "#5f523d",
        info = "#3f535b",
        hint = "#5f523d",
        positive = "#4f553f",
        add = "#4f553f",
        delete = "#623e3e",
        modify = "#3f535b",
    },
    fg = {
        default = "#dcd3c6",
        subtle = "#9a9185",
        accent = "#e5ddd0",
        disabled = "#83786b",
        contrast = "#332619",
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
        default = "#d4cdc1",
        builtin = "#cac3b9",
        member = "#b8b0a5",
        parameter = "#b8b0a5",
    },
    property = {
        default = "#b8b0a5",
    },
    string = {
        default = "#d4cdc1",
        doc = "#cac3b9",
        regexp = "#e9e0d1",
        escape = "#e9e0d1",
    },
    constant = {
        default = "#cac3b9",
        builtin = "#d4cdc1",
    },
    module = {
        default = "#d4cdc1",
    },
    boolean = {
        default = "#b1aa9f",
    },
    number = {
        default = "#cac3b9",
    },
    type = {
        default = "#e9e0d1",
        builtin = "#e9e0d1",
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
        default = "#dcd3c6",
        import = "#e9e0d1",
        export = "#e9e0d1",
    },
    operator = {
        default = "#dcd3c6",
    },
    punctuation = {
        default = "#cac3b9",
        delimiter = "#cac3b9",
        bracket = "#cac3b9",
        special = "#cac3b9",
    },
    comment = {
        default = "#9a9185",
        doc = "#9a9185",
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
            h4 = "#b1aa9f",
            h5 = "#b1aa9f",
            h6 = "#b1aa9f",
        },
        strong = "#e5ddd0",
        italic = "#e5ddd0",
        strikethrough = "#e5ddd0",
        quote = "#83786b",
        math = "#83786b",
        link = "#b8b0a5",
        list = {
            default = "#b1aa9f",
            checked = "#a9ba78",
            unchecked = "#b1aa9f",
        },
        code = {
            fg = "#cac3b9",
            bg = "#24180d",
        },
    },
    tag = {
        default = "#e5ddd0",
        builtin = "#b8b0a5",
        attribute = "#9a9185",
        delimiter = "#cac3b9",
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
