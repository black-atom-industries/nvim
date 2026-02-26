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
    m10 = "#735973",
    m20 = "#937593",
    m30 = "#b193b1",
    m40 = "#ccb5cc",
    l10 = "#ead2b2",
    l20 = "#f4e3cd",
    l30 = "#faeede",
    l40 = "#fef2e1",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#5f475f",
    gray = "#735973",
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
    light_gray = "#ead2b2",
    white = "#f4e3cd",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#faeede",
        panel = "#f4e3cd",
        float = "#f4e3cd",
        active = "#fef2e1",
        disabled = "#ccb5cc",
        hover = "#f4e3cd",
        selection = "#f4e3cd",
        search = "#f4e3cd",
        contrast = "#3a2e3a",
        negative = "#f2d1b6",
        warn = "#f6dbb8",
        info = "#eaccc0",
        hint = "#f2d6b6",
        positive = "#e2dab8",
        add = "#e2dab8",
        delete = "#f2d1b6",
        modify = "#eaccc0",
    },
    fg = {
        default = "#3a2e3a",
        subtle = "#b193b1",
        accent = "#ea9d34",
        disabled = "#ccb5cc",
        contrast = "#faeede",
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
        default = "#735973",
        delimiter = "#aa6f83",
        bracket = "#735973",
        special = "#735973",
    },
    comment = {
        default = "#735973",
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
            h4 = "#735973",
            h5 = "#735973",
            h6 = "#735973",
        },
        strong = "#ea9d34",
        italic = "#ea9d34",
        strikethrough = "#ea9d34",
        quote = "#52ad82",
        math = "#428a68",
        link = "#52ad82",
        list = {
            default = "#735973",
            checked = "#52ad82",
            unchecked = "#735973",
        },
        code = {
            fg = "#735973",
            bg = "#f4e3cd",
        },
    },
    tag = {
        default = "#ea9d34",
        builtin = "#de8641",
        attribute = "#735973",
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
