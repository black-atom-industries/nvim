local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-terra-summer-night",
    label = "Black Atom — TERRA ∷ Summer Night",
    appearance = "dark",
    status = "release",
    collection = {
        key = "terra",
        label = "TERRA",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#001113",
    d20 = "#001b1a",
    d30 = "#092520",
    d40 = "#2a433a",
    m10 = "#2e503e",
    m20 = "#4f6c54",
    m30 = "#71886c",
    m40 = "#94a585",
    l10 = "#baad8a",
    l20 = "#cdbc9a",
    l30 = "#dfcbaa",
    l40 = "#f9e1c0",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#2a433a",
    gray = "#2e503e",
    dark_red = "#c88b94",
    red = "#c88f7b",
    dark_green = "#6c8c4a",
    green = "#96a85e",
    dark_yellow = "#dba06f",
    yellow = "#bcb067",
    dark_blue = "#6b8971",
    blue = "#89a88e",
    dark_magenta = "#92768f",
    magenta = "#ba929d",
    dark_cyan = "#4b8f7e",
    cyan = "#6aae9c",
    light_gray = "#baad8a",
    white = "#dfcbaa",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#001b1a",
        panel = "#001113",
        float = "#001113",
        active = "#092520",
        disabled = "#2e503e",
        hover = "#092520",
        selection = "#2a433a",
        search = "#2a433a",
        contrast = "#dfcbaa",
        negative = "#503d36",
        warn = "#4c4830",
        info = "#3b453c",
        hint = "#574332",
        positive = "#3f452d",
        add = "#3f452d",
        delete = "#503d36",
        modify = "#3b453c",
    },
    fg = {
        default = "#dfcbaa",
        subtle = "#94a585",
        accent = "#bcb067",
        disabled = "#71886c",
        contrast = "#001b1a",
        negative = "#c88f7b",
        warn = "#bcb067",
        info = "#89a88e",
        hint = "#dba06f",
        positive = "#96a85e",
        add = "#96a85e",
        delete = "#c88f7b",
        modify = "#89a88e",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#89a88e",
        builtin = "#6b8971",
        member = "#6b8971",
        parameter = "#dba06f",
    },
    property = {
        default = "#6b8971",
    },
    string = {
        default = "#96a85e",
        doc = "#96a85e",
        regexp = "#dba06f",
        escape = "#c88f7b",
    },
    constant = {
        default = "#dba06f",
        builtin = "#dba06f",
    },
    module = {
        default = "#6b8971",
    },
    boolean = {
        default = "#dba06f",
    },
    number = {
        default = "#dba06f",
    },
    type = {
        default = "#6aae9c",
        builtin = "#4b8f7e",
    },
    attribute = {
        default = "#6aae9c",
        builtin = "#6aae9c",
    },
    func = {
        default = "#bcb067",
        builtin = "#bcb067",
        method = "#bcb067",
    },
    constructor = {
        default = "#bcb067",
    },
    keyword = {
        default = "#ba929d",
        import = "#c88f7b",
        export = "#c88f7b",
    },
    operator = {
        default = "#ba929d",
    },
    punctuation = {
        default = "#baad8a",
        delimiter = "#94a585",
        bracket = "#baad8a",
        special = "#baad8a",
    },
    comment = {
        default = "#2e503e",
        doc = "#6c8c4a",
        todo = "#96a85e",
        error = "#c88f7b",
        warn = "#bcb067",
        info = "#89a88e",
        hint = "#dba06f",
    },
    markup = {
        heading = {
            h1 = "#bcb067",
            h2 = "#bcb067",
            h3 = "#bcb067",
            h4 = "#baad8a",
            h5 = "#baad8a",
            h6 = "#baad8a",
        },
        strong = "#bcb067",
        italic = "#bcb067",
        strikethrough = "#bcb067",
        quote = "#96a85e",
        math = "#6c8c4a",
        link = "#96a85e",
        list = {
            default = "#baad8a",
            checked = "#96a85e",
            unchecked = "#baad8a",
        },
        code = {
            fg = "#baad8a",
            bg = "#092520",
        },
    },
    tag = {
        default = "#bcb067",
        builtin = "#bcb067",
        attribute = "#dba06f",
        delimiter = "#dba06f",
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
