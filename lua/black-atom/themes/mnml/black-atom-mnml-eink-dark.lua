local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-mnml-eink-dark",
    label = "Black Atom — MNM ∷ E-Ink Dark",
    appearance = "dark",
    status = "development",
    collection = {
        key = "mnml",
        label = "MNM",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#090909",
    d20 = "#161616",
    d30 = "#242424",
    d40 = "#2e2e2e",
    m10 = "#5d5d5d",
    m20 = "#7a7a7a",
    m30 = "#8c8c8c",
    m40 = "#a4a4a4",
    l10 = "#c4c4c4",
    l20 = "#d1d1d1",
    l30 = "#dedede",
    l40 = "#ebebeb",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#2e2e2e",
    gray = "#5d5d5d",
    dark_red = "#a4a4a4",
    red = "#a4a4a4",
    dark_green = "#8c8c8c",
    green = "#8c8c8c",
    dark_yellow = "#8c8c8c",
    yellow = "#8c8c8c",
    dark_blue = "#7a7a7a",
    blue = "#7a7a7a",
    dark_magenta = "#8c8c8c",
    magenta = "#8c8c8c",
    dark_cyan = "#a4a4a4",
    cyan = "#a4a4a4",
    light_gray = "#d1d1d1",
    white = "#dedede",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#161616",
        panel = "#090909",
        float = "#090909",
        active = "#242424",
        disabled = "#2e2e2e",
        hover = "#242424",
        selection = "#2e2e2e",
        search = "#2e2e2e",
        contrast = "#c4c4c4",
        negative = "#362121",
        warn = "#342d21",
        info = "#222d32",
        hint = "#342d21",
        positive = "#2b2e22",
        add = "#2b2e22",
        delete = "#362121",
        modify = "#222d32",
    },
    fg = {
        default = "#dedede",
        subtle = "#8c8c8c",
        accent = "#d2b5bd",
        disabled = "#7a7a7a",
        contrast = "#161616",
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
        default = "#d1d1d1",
        builtin = "#c4c4c4",
        member = "#bca8ad",
        parameter = "#bca8ad",
    },
    property = {
        default = "#bca8ad",
    },
    string = {
        default = "#d1d1d1",
        doc = "#c4c4c4",
        regexp = "#ebebeb",
        escape = "#ebebeb",
    },
    constant = {
        default = "#c4c4c4",
        builtin = "#d1d1d1",
    },
    module = {
        default = "#d1d1d1",
    },
    boolean = {
        default = "#a4a4a4",
    },
    number = {
        default = "#c4c4c4",
    },
    type = {
        default = "#ebebeb",
        builtin = "#ebebeb",
    },
    attribute = {
        default = "#bca8ad",
        builtin = "#bca8ad",
    },
    func = {
        default = "#d2b5bd",
        builtin = "#bca8ad",
        method = "#bca8ad",
    },
    constructor = {
        default = "#d2b5bd",
    },
    keyword = {
        default = "#dedede",
        import = "#ebebeb",
        export = "#ebebeb",
    },
    operator = {
        default = "#dedede",
    },
    punctuation = {
        default = "#c4c4c4",
        delimiter = "#c4c4c4",
        bracket = "#c4c4c4",
        special = "#c4c4c4",
    },
    comment = {
        default = "#8c8c8c",
        doc = "#8c8c8c",
        todo = "#a9ba78",
        error = "#dd7577",
        warn = "#d6b174",
        info = "#79b5cc",
        hint = "#79b5cc",
    },
    markup = {
        heading = {
            h1 = "#d2b5bd",
            h2 = "#d2b5bd",
            h3 = "#d2b5bd",
            h4 = "#a4a4a4",
            h5 = "#a4a4a4",
            h6 = "#a4a4a4",
        },
        strong = "#d2b5bd",
        italic = "#d2b5bd",
        strikethrough = "#d2b5bd",
        quote = "#7a7a7a",
        math = "#7a7a7a",
        link = "#bca8ad",
        list = {
            default = "#a4a4a4",
            checked = "#a9ba78",
            unchecked = "#a4a4a4",
        },
        code = {
            fg = "#c4c4c4",
            bg = "#090909",
        },
    },
    tag = {
        default = "#d2b5bd",
        builtin = "#bca8ad",
        attribute = "#8c8c8c",
        delimiter = "#c4c4c4",
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
