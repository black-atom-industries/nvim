local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-jpn-koyo-hiru",
    label = "Black Atom — JPN ∷ Koyo Hiru",
    appearance = "light",
    status = "release",
    collection = {
        key = "jpn",
        label = "JPN",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#403240",
    d20 = "#574457",
    d30 = "#664a66",
    d40 = "#735673",
    m10 = "#605872",
    m20 = "#6e6a86",
    m30 = "#908caa",
    m40 = "#aaa7be",
    l10 = "#eedcc5",
    l20 = "#f4e8d9",
    l30 = "#f9f2e9",
    l40 = "#fdfbf9",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#574457",
    gray = "#6e6a86",
    dark_red = "#c65e53",
    red = "#db7070",
    dark_green = "#428a68",
    green = "#52ad82",
    dark_yellow = "#de8641",
    yellow = "#ea9d34",
    dark_blue = "#aa6f83",
    blue = "#9175a3",
    dark_magenta = "#ec935f",
    magenta = "#f0a274",
    dark_cyan = "#529e86",
    cyan = "#6aaf9a",
    light_gray = "#aaa7be",
    white = "#eedcc5",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#f9f2e9",
        panel = "#f4e8d9",
        float = "#f4e8d9",
        active = "#eedcc5",
        disabled = "#aaa7be",
        hover = "#eedcc5",
        selection = "#eedcc5",
        search = "#eedcc5",
        contrast = "#574457",
        negative = "#db7070",
        warn = "#ea9d34",
        info = "#9175a3",
        hint = "#de8641",
        positive = "#52ad82",
        add = "#52ad82",
        delete = "#db7070",
        modify = "#9175a3",
    },
    fg = {
        default = "#574457",
        subtle = "#735673",
        accent = "#ea9d34",
        disabled = "#6e6a86",
        contrast = "#f9f2e9",
        negative = "#db7070",
        warn = "#ea9d34",
        info = "#9175a3",
        hint = "#de8641",
        positive = "#52ad82",
        add = "#52ad82",
        delete = "#db7070",
        modify = "#9175a3",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#605872",
        builtin = "#908caa",
        member = "#9175a3",
        parameter = "#ec935f",
    },
    property = {
        default = "#9175a3",
    },
    string = {
        default = "#52ad82",
        doc = "#52ad82",
        regexp = "#db7070",
        escape = "#db7070",
    },
    constant = {
        default = "#aa6f83",
        builtin = "#c65e53",
    },
    module = {
        default = "#aa6f83",
    },
    boolean = {
        default = "#428a68",
    },
    number = {
        default = "#428a68",
    },
    type = {
        default = "#6aaf9a",
        builtin = "#529e86",
    },
    attribute = {
        default = "#de8641",
        builtin = "#de8641",
    },
    func = {
        default = "#ea9d34",
        builtin = "#ea9d34",
        method = "#ea9d34",
    },
    constructor = {
        default = "#ea9d34",
    },
    keyword = {
        default = "#f0a274",
        import = "#db7070",
        export = "#db7070",
    },
    operator = {
        default = "#aa6f83",
    },
    punctuation = {
        default = "#6e6a86",
        delimiter = "#aa6f83",
        bracket = "#6e6a86",
        special = "#6e6a86",
    },
    comment = {
        default = "#6e6a86",
        doc = "#428a68",
        todo = "#52ad82",
        error = "#db7070",
        warn = "#ea9d34",
        info = "#9175a3",
        hint = "#de8641",
    },
    markup = {
        heading = {
            h1 = "#ea9d34",
            h2 = "#ea9d34",
            h3 = "#ea9d34",
            h4 = "#6e6a86",
            h5 = "#6e6a86",
            h6 = "#6e6a86",
        },
        strong = "#ea9d34",
        italic = "#ea9d34",
        strikethrough = "#ea9d34",
        quote = "#52ad82",
        math = "#428a68",
        link = "#52ad82",
        list = {
            default = "#6e6a86",
            checked = "#52ad82",
            unchecked = "#6e6a86",
        },
        code = {
            fg = "#6e6a86",
            bg = "#f4e8d9",
        },
    },
    tag = {
        default = "#ea9d34",
        builtin = "#de8641",
        attribute = "#605872",
        delimiter = "#735673",
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
