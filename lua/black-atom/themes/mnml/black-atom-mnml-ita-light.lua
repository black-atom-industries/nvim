local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-mnml-ita-light",
    label = "Black Atom — MNML ∷ ITA Light",
    appearance = "light",
    status = "development",
    collection = {
        key = "mnml",
        label = "MNML",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#0a0907",
    d20 = "#181614",
    d30 = "#2b2826",
    d40 = "#3f3d3a",
    m10 = "#8e8c89",
    m20 = "#a09e9b",
    m30 = "#b3b0ae",
    m40 = "#c6c3c1",
    l10 = "#e0ddda",
    l20 = "#f1eeeb",
    l30 = "#fefbf8",
    l40 = "#fffffc",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#3f3d3a",
    gray = "#8e8c89",
    dark_red = "#c6c3c1",
    red = "#c6c3c1",
    dark_green = "#b3b0ae",
    green = "#b3b0ae",
    dark_yellow = "#b3b0ae",
    yellow = "#b3b0ae",
    dark_blue = "#c6c3c1",
    blue = "#c6c3c1",
    dark_magenta = "#b3b0ae",
    magenta = "#b3b0ae",
    dark_cyan = "#c6c3c1",
    cyan = "#c6c3c1",
    light_gray = "#c6c3c1",
    white = "#c6c3c1",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#fefbf8",
        panel = "#f1eeeb",
        float = "#f1eeeb",
        active = "#fffffc",
        disabled = "#e0ddda",
        hover = "#f1eeeb",
        selection = "#e0ddda",
        search = "#e0ddda",
        contrast = "#3f3d3a",
        negative = "#f1deb4",
        warn = "#e2dabf",
        info = "#cee0ca",
        hint = "#e2dabf",
        positive = "#dce3c0",
        add = "#dce3c0",
        delete = "#f1deb4",
        modify = "#cee0ca",
    },
    fg = {
        default = "#181614",
        subtle = "#8e8c89",
        accent = "#199c38",
        disabled = "#b3b0ae",
        contrast = "#f1eeeb",
        negative = "#ef343b",
        warn = "#ae5700",
        info = "#0c79b4",
        hint = "#ae5700",
        positive = "#199c38",
        add = "#199c38",
        delete = "#ef343b",
        modify = "#0c79b4",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#3f3d3a",
        builtin = "#3f3d3a",
        member = "#8e8c89",
        parameter = "#199c38",
    },
    property = {
        default = "#8e8c89",
    },
    string = {
        default = "#a09e9b",
        doc = "#ef343b",
        regexp = "#199c38",
        escape = "#199c38",
    },
    constant = {
        default = "#181614",
        builtin = "#0a0907",
    },
    module = {
        default = "#2b2826",
    },
    boolean = {
        default = "#8e8c89",
    },
    number = {
        default = "#3f3d3a",
    },
    type = {
        default = "#0a0907",
        builtin = "#3f3d3a",
    },
    attribute = {
        default = "#ef343b",
        builtin = "#ef343b",
    },
    func = {
        default = "#199c38",
        builtin = "#ef343b",
        method = "#ef343b",
    },
    constructor = {
        default = "#199c38",
    },
    keyword = {
        default = "#ef343b",
        import = "#ef343b",
        export = "#ef343b",
    },
    operator = {
        default = "#181614",
    },
    punctuation = {
        default = "#3f3d3a",
        delimiter = "#3f3d3a",
        bracket = "#3f3d3a",
        special = "#3f3d3a",
    },
    comment = {
        default = "#a09e9b",
        doc = "#a09e9b",
        todo = "#199c38",
        error = "#ef343b",
        warn = "#ae5700",
        info = "#0c79b4",
        hint = "#0c79b4",
    },
    markup = {
        heading = {
            h1 = "#199c38",
            h2 = "#199c38",
            h3 = "#199c38",
            h4 = "#8e8c89",
            h5 = "#8e8c89",
            h6 = "#8e8c89",
        },
        strong = "#199c38",
        italic = "#199c38",
        strikethrough = "#199c38",
        quote = "#b3b0ae",
        math = "#a09e9b",
        link = "#ef343b",
        list = {
            default = "#8e8c89",
            checked = "#199c38",
            unchecked = "#8e8c89",
        },
        code = {
            fg = "#3f3d3a",
            bg = "#f1eeeb",
        },
    },
    tag = {
        default = "#ef343b",
        builtin = "#199c38",
        attribute = "#8e8c89",
        delimiter = "#b3b0ae",
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
