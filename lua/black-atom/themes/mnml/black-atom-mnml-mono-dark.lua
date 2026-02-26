local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-mnml-mono-dark",
    label = "Black Atom — MNML ∷ Mono Dark",
    appearance = "dark",
    status = "development",
    collection = {
        key = "mnml",
        label = "MNML",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#070504",
    d20 = "#0f0d0b",
    d30 = "#1c1a18",
    d40 = "#2b2826",
    m10 = "#4a4745",
    m20 = "#656360",
    m30 = "#82807d",
    m40 = "#a09e9b",
    l10 = "#c6c3c1",
    l20 = "#dad7d4",
    l30 = "#edeae8",
    l40 = "#fbf8f5",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#2b2826",
    gray = "#4a4745",
    dark_red = "#a09e9b",
    red = "#a09e9b",
    dark_green = "#82807d",
    green = "#82807d",
    dark_yellow = "#82807d",
    yellow = "#82807d",
    dark_blue = "#a09e9b",
    blue = "#a09e9b",
    dark_magenta = "#82807d",
    magenta = "#82807d",
    dark_cyan = "#a09e9b",
    cyan = "#a09e9b",
    light_gray = "#a09e9b",
    white = "#a09e9b",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#0f0d0b",
        panel = "#070504",
        float = "#070504",
        active = "#1c1a18",
        disabled = "#2b2826",
        hover = "#1c1a18",
        selection = "#2b2826",
        search = "#2b2826",
        contrast = "#c6c3c1",
        negative = "#35190d",
        warn = "#362213",
        info = "#2a2510",
        hint = "#362213",
        positive = "#31230e",
        add = "#31230e",
        delete = "#35190d",
        modify = "#2a2510",
    },
    fg = {
        default = "#edeae8",
        subtle = "#82807d",
        accent = "#e4e4e4",
        disabled = "#656360",
        contrast = "#0f0d0b",
        negative = "#e85760",
        warn = "#d9a02c",
        info = "#30add6",
        hint = "#d9a02c",
        positive = "#6eba66",
        add = "#6eba66",
        delete = "#e85760",
        modify = "#30add6",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#dad7d4",
        builtin = "#c6c3c1",
        member = "#b7b7b7",
        parameter = "#b7b7b7",
    },
    property = {
        default = "#b7b7b7",
    },
    string = {
        default = "#dad7d4",
        doc = "#c6c3c1",
        regexp = "#fbf8f5",
        escape = "#fbf8f5",
    },
    constant = {
        default = "#c6c3c1",
        builtin = "#dad7d4",
    },
    module = {
        default = "#dad7d4",
    },
    boolean = {
        default = "#a09e9b",
    },
    number = {
        default = "#c6c3c1",
    },
    type = {
        default = "#fbf8f5",
        builtin = "#fbf8f5",
    },
    attribute = {
        default = "#b7b7b7",
        builtin = "#b7b7b7",
    },
    func = {
        default = "#e4e4e4",
        builtin = "#b7b7b7",
        method = "#b7b7b7",
    },
    constructor = {
        default = "#e4e4e4",
    },
    keyword = {
        default = "#edeae8",
        import = "#fbf8f5",
        export = "#fbf8f5",
    },
    operator = {
        default = "#edeae8",
    },
    punctuation = {
        default = "#c6c3c1",
        delimiter = "#c6c3c1",
        bracket = "#c6c3c1",
        special = "#c6c3c1",
    },
    comment = {
        default = "#82807d",
        doc = "#82807d",
        todo = "#6eba66",
        error = "#e85760",
        warn = "#d9a02c",
        info = "#30add6",
        hint = "#30add6",
    },
    markup = {
        heading = {
            h1 = "#e4e4e4",
            h2 = "#e4e4e4",
            h3 = "#e4e4e4",
            h4 = "#a09e9b",
            h5 = "#a09e9b",
            h6 = "#a09e9b",
        },
        strong = "#e4e4e4",
        italic = "#e4e4e4",
        strikethrough = "#e4e4e4",
        quote = "#656360",
        math = "#656360",
        link = "#b7b7b7",
        list = {
            default = "#a09e9b",
            checked = "#6eba66",
            unchecked = "#a09e9b",
        },
        code = {
            fg = "#c6c3c1",
            bg = "#070504",
        },
    },
    tag = {
        default = "#e4e4e4",
        builtin = "#b7b7b7",
        attribute = "#82807d",
        delimiter = "#c6c3c1",
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
