local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-mnml-mono-light",
    label = "Black Atom — MNM ∷ Mono Light",
    appearance = "light",
    status = "development",
    collection = {
        key = "mnml",
        label = "MNM",
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
        negative = "#f2e0ba",
        warn = "#eae3c5",
        info = "#d7ebd2",
        hint = "#eae3c5",
        positive = "#e3e5c5",
        add = "#e3e5c5",
        delete = "#f2e0ba",
        modify = "#d7ebd2",
    },
    fg = {
        default = "#181614",
        subtle = "#8e8c89",
        accent = "#2e2e2e",
        disabled = "#b3b0ae",
        contrast = "#f1eeeb",
        negative = "#f14d4c",
        warn = "#cd7b00",
        info = "#00a3e9",
        hint = "#cd7b00",
        positive = "#819e00",
        add = "#819e00",
        delete = "#f14d4c",
        modify = "#00a3e9",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#3f3d3a",
        builtin = "#3f3d3a",
        member = "#8e8c89",
        parameter = "#2e2e2e",
    },
    property = {
        default = "#8e8c89",
    },
    string = {
        default = "#a09e9b",
        doc = "#4d4d4d",
        regexp = "#2e2e2e",
        escape = "#2e2e2e",
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
        default = "#4d4d4d",
        builtin = "#4d4d4d",
    },
    func = {
        default = "#2e2e2e",
        builtin = "#4d4d4d",
        method = "#4d4d4d",
    },
    constructor = {
        default = "#2e2e2e",
    },
    keyword = {
        default = "#4d4d4d",
        import = "#4d4d4d",
        export = "#4d4d4d",
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
        todo = "#819e00",
        error = "#f14d4c",
        warn = "#cd7b00",
        info = "#00a3e9",
        hint = "#00a3e9",
    },
    markup = {
        heading = {
            h1 = "#2e2e2e",
            h2 = "#2e2e2e",
            h3 = "#2e2e2e",
            h4 = "#8e8c89",
            h5 = "#8e8c89",
            h6 = "#8e8c89",
        },
        strong = "#2e2e2e",
        italic = "#2e2e2e",
        strikethrough = "#2e2e2e",
        quote = "#b3b0ae",
        math = "#a09e9b",
        link = "#4d4d4d",
        list = {
            default = "#8e8c89",
            checked = "#819e00",
            unchecked = "#8e8c89",
        },
        code = {
            fg = "#3f3d3a",
            bg = "#f1eeeb",
        },
    },
    tag = {
        default = "#4d4d4d",
        builtin = "#2e2e2e",
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
