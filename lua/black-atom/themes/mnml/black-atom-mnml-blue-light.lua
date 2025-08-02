local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-mnml-blue-light",
    label = "Black Atom — MNM ∷ Blue Light",
    appearance = "light",
    status = "development",
    collection = {
        key = "mnml",
        label = "MNM",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#23262a",
    d20 = "#2a313b",
    d30 = "#363d48",
    d40 = "#404956",
    m10 = "#515862",
    m20 = "#5c6470",
    m30 = "#67707e",
    m40 = "#818a98",
    l10 = "#b8c8e0",
    l20 = "#d2def0",
    l30 = "#e1e9f5",
    l40 = "#ebf1fa",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#2a313b",
    gray = "#515862",
    dark_red = "#404956",
    red = "#818a98",
    dark_green = "#363d48",
    green = "#67707e",
    dark_yellow = "#404956",
    yellow = "#67707e",
    dark_blue = "#404956",
    blue = "#5c6470",
    dark_magenta = "#363d48",
    magenta = "#67707e",
    dark_cyan = "#515862",
    cyan = "#818a98",
    light_gray = "#818a98",
    white = "#d2def0",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#ebf1fa",
        panel = "#e1e9f5",
        float = "#e1e9f5",
        active = "#d2def0",
        disabled = "#b8c8e0",
        hover = "#d2def0",
        selection = "#b8c8e0",
        search = "#b8c8e0",
        contrast = "#404956",
        negative = "#e64433",
        warn = "#f7bd08",
        info = "#3862dc",
        hint = "#f7bd08",
        positive = "#2fd073",
        add = "#2fd073",
        delete = "#e64433",
        modify = "#3862dc",
    },
    fg = {
        default = "#2a313b",
        subtle = "#515862",
        accent = "#1550FF",
        disabled = "#67707e",
        contrast = "#d2def0",
        negative = "#e64433",
        warn = "#f7bd08",
        info = "#3862dc",
        hint = "#f7bd08",
        positive = "#2fd073",
        add = "#2fd073",
        delete = "#e64433",
        modify = "#3862dc",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#404956",
        builtin = "#404956",
        member = "#515862",
        parameter = "#1550FF",
    },
    property = {
        default = "#3862dc",
    },
    string = {
        default = "#818a98",
        doc = "#3862dc",
        regexp = "#1550FF",
        escape = "#1550FF",
    },
    constant = {
        default = "#2a313b",
        builtin = "#23262a",
    },
    module = {
        default = "#363d48",
    },
    boolean = {
        default = "#515862",
    },
    number = {
        default = "#404956",
    },
    type = {
        default = "#23262a",
        builtin = "#404956",
    },
    attribute = {
        default = "#3862dc",
        builtin = "#3862dc",
    },
    func = {
        default = "#1550FF",
        builtin = "#3862dc",
        method = "#3862dc",
    },
    constructor = {
        default = "#1550FF",
    },
    keyword = {
        default = "#2a313b",
        import = "#363d48",
        export = "#363d48",
    },
    operator = {
        default = "#2a313b",
    },
    punctuation = {
        default = "#404956",
        delimiter = "#404956",
        bracket = "#404956",
        special = "#404956",
    },
    comment = {
        default = "#5c6470",
        doc = "#5c6470",
        todo = "#2fd073",
        error = "#e64433",
        warn = "#f7bd08",
        info = "#3862dc",
        hint = "#3862dc",
    },
    markup = {
        heading = {
            h1 = "#1550FF",
            h2 = "#1550FF",
            h3 = "#1550FF",
            h4 = "#515862",
            h5 = "#515862",
            h6 = "#515862",
        },
        strong = "#1550FF",
        italic = "#1550FF",
        strikethrough = "#1550FF",
        quote = "#67707e",
        math = "#5c6470",
        link = "#3862dc",
        list = {
            default = "#515862",
            checked = "#2fd073",
            unchecked = "#515862",
        },
        code = {
            fg = "#404956",
            bg = "#e1e9f5",
        },
    },
    tag = {
        default = "#3862dc",
        builtin = "#1550FF",
        attribute = "#515862",
        delimiter = "#67707e",
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
