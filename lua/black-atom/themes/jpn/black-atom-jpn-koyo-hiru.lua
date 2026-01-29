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
    d10 = "#292029",
    d20 = "#3a2e3a",
    d30 = "#4b374b",
    d40 = "#5f475f",
    m10 = "#725872",
    m20 = "#8f718f",
    m30 = "#a88aa8",
    m40 = "#bea7be",
    l10 = "#eedcc5",
    l20 = "#f4e8d9",
    l30 = "#f9f2e9",
    l40 = "#fdfbf9",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#5f475f",
    gray = "#725872",
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
    light_gray = "#f4e8d9",
    white = "#f9f2e9",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#f9f2e9",
        panel = "#f4e8d9",
        float = "#f4e8d9",
        active = "#eedcc5",
        disabled = "#bea7be",
        hover = "#eedcc5",
        selection = "#eedcc5",
        search = "#eedcc5",
        contrast = "#3a2e3a",
        negative = "#f1d5be",
        warn = "#f6dec0",
        info = "#e7d0c6",
        hint = "#f1d9be",
        positive = "#e3dcc0",
        add = "#e3dcc0",
        delete = "#f1d5be",
        modify = "#e7d0c6",
    },
    fg = {
        default = "#3a2e3a",
        subtle = "#a88aa8",
        accent = "#ea9d34",
        disabled = "#bea7be",
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
        default = "#9175a3",
        builtin = "#aa6f83",
        member = "#ec935f",
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
        default = "#725872",
        delimiter = "#aa6f83",
        bracket = "#725872",
        special = "#725872",
    },
    comment = {
        default = "#725872",
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
            h4 = "#725872",
            h5 = "#725872",
            h6 = "#725872",
        },
        strong = "#ea9d34",
        italic = "#ea9d34",
        strikethrough = "#ea9d34",
        quote = "#52ad82",
        math = "#428a68",
        link = "#52ad82",
        list = {
            default = "#725872",
            checked = "#52ad82",
            unchecked = "#725872",
        },
        code = {
            fg = "#725872",
            bg = "#f4e8d9",
        },
    },
    tag = {
        default = "#ea9d34",
        builtin = "#de8641",
        attribute = "#725872",
        delimiter = "#5f475f",
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
