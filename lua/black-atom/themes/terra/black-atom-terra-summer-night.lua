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
    d10 = "#001111",
    d20 = "#001b1a",
    d30 = "#042824",
    d40 = "#14342f",
    m10 = "#3c5444",
    m20 = "#516b56",
    m30 = "#6c816c",
    m40 = "#849581",
    l10 = "#c8bda1",
    l20 = "#dcd0b8",
    l30 = "#eae0cf",
    l40 = "#f7ede0",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#14342f",
    gray = "#3c5444",
    dark_red = "#c16d45",
    red = "#e2805e",
    dark_green = "#59985b",
    green = "#69ba7c",
    dark_yellow = "#ea9941",
    yellow = "#f3b94c",
    dark_blue = "#00848b",
    blue = "#00a5a6",
    dark_magenta = "#ba6c78",
    magenta = "#d88095",
    dark_cyan = "#339a83",
    cyan = "#51bb9a",
    light_gray = "#c8bda1",
    white = "#eae0cf",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#001b1a",
        panel = "#001111",
        float = "#001111",
        active = "#042824",
        disabled = "#3c5444",
        hover = "#042824",
        selection = "#14342f",
        search = "#14342f",
        contrast = "#eae0cf",
        negative = "#133521",
        warn = "#113d2e",
        info = "#003131",
        hint = "#0f3827",
        positive = "#043631",
        add = "#043631",
        delete = "#133521",
        modify = "#003131",
    },
    fg = {
        default = "#eae0cf",
        subtle = "#849581",
        accent = "#f3b94c",
        disabled = "#6c816c",
        contrast = "#001b1a",
        negative = "#e2805e",
        warn = "#f3b94c",
        info = "#00a5a6",
        hint = "#ea9941",
        positive = "#69ba7c",
        add = "#69ba7c",
        delete = "#e2805e",
        modify = "#00a5a6",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#00a5a6",
        builtin = "#00848b",
        member = "#00848b",
        parameter = "#ea9941",
    },
    property = {
        default = "#00848b",
    },
    string = {
        default = "#69ba7c",
        doc = "#69ba7c",
        regexp = "#ea9941",
        escape = "#e2805e",
    },
    constant = {
        default = "#ea9941",
        builtin = "#ea9941",
    },
    module = {
        default = "#00848b",
    },
    boolean = {
        default = "#ea9941",
    },
    number = {
        default = "#ea9941",
    },
    type = {
        default = "#51bb9a",
        builtin = "#339a83",
    },
    attribute = {
        default = "#51bb9a",
        builtin = "#51bb9a",
    },
    func = {
        default = "#f3b94c",
        builtin = "#f3b94c",
        method = "#f3b94c",
    },
    constructor = {
        default = "#f3b94c",
    },
    keyword = {
        default = "#d88095",
        import = "#e2805e",
        export = "#e2805e",
    },
    operator = {
        default = "#d88095",
    },
    punctuation = {
        default = "#c8bda1",
        delimiter = "#849581",
        bracket = "#c8bda1",
        special = "#c8bda1",
    },
    comment = {
        default = "#3c5444",
        doc = "#59985b",
        todo = "#69ba7c",
        error = "#e2805e",
        warn = "#f3b94c",
        info = "#00a5a6",
        hint = "#ea9941",
    },
    markup = {
        heading = {
            h1 = "#f3b94c",
            h2 = "#f3b94c",
            h3 = "#f3b94c",
            h4 = "#c8bda1",
            h5 = "#c8bda1",
            h6 = "#c8bda1",
        },
        strong = "#f3b94c",
        italic = "#f3b94c",
        strikethrough = "#f3b94c",
        quote = "#69ba7c",
        math = "#59985b",
        link = "#69ba7c",
        list = {
            default = "#c8bda1",
            checked = "#69ba7c",
            unchecked = "#c8bda1",
        },
        code = {
            fg = "#c8bda1",
            bg = "#042824",
        },
    },
    tag = {
        default = "#f3b94c",
        builtin = "#f3b94c",
        attribute = "#ea9941",
        delimiter = "#ea9941",
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
