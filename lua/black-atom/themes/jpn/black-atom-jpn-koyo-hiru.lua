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
    d10 = "#29212a",
    d20 = "#3a2e3b",
    d30 = "#4e3b4f",
    d40 = "#634c64",
    m10 = "#725a73",
    m20 = "#907691",
    m30 = "#b19b7c",
    m40 = "#d1ba9b",
    l10 = "#f2daba",
    l20 = "#f8e7d0",
    l30 = "#fef2e1",
    l40 = "#fff5e5",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#634c64",
    gray = "#725a73",
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
    light_gray = "#d1ba9b",
    white = "#f2daba",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#fef2e1",
        panel = "#f8e7d0",
        float = "#f8e7d0",
        active = "#fff5e5",
        disabled = "#d1ba9b",
        hover = "#f8e7d0",
        selection = "#f8e7d0",
        search = "#f8e7d0",
        contrast = "#3a2e3b",
        negative = "#f5d4b8",
        warn = "#f9deba",
        info = "#edcfc2",
        hint = "#f5d9b8",
        positive = "#e4ddba",
        add = "#e4ddba",
        delete = "#f5d4b8",
        modify = "#edcfc2",
    },
    fg = {
        default = "#3a2e3b",
        subtle = "#b19b7c",
        accent = "#ea9d34",
        disabled = "#d1ba9b",
        contrast = "#fef2e1",
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
        default = "#725a73",
        delimiter = "#aa6f83",
        bracket = "#725a73",
        special = "#725a73",
    },
    comment = {
        default = "#725a73",
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
            h4 = "#725a73",
            h5 = "#725a73",
            h6 = "#725a73",
        },
        strong = "#ea9d34",
        italic = "#ea9d34",
        strikethrough = "#ea9d34",
        quote = "#52ad82",
        math = "#428a68",
        link = "#52ad82",
        list = {
            default = "#725a73",
            checked = "#52ad82",
            unchecked = "#725a73",
        },
        code = {
            fg = "#725a73",
            bg = "#f8e7d0",
        },
    },
    tag = {
        default = "#ea9d34",
        builtin = "#de8641",
        attribute = "#725a73",
        delimiter = "#634c64",
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
