local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-mnml-47-dark",
    label = "Black Atom — MNM ∷ 47 Dark",
    appearance = "dark",
    status = "development",
    collection = {
        key = "mnml",
        label = "MNM",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#1c1a17",
    d20 = "#232019",
    d30 = "#2e2b22",
    d40 = "#454133",
    m10 = "#5d7065",
    m20 = "#687e71",
    m30 = "#728c7c",
    m40 = "#8fa397",
    l10 = "#d3c3ad",
    l20 = "#dbcfbc",
    l30 = "#e7dccb",
    l40 = "#f2f2da",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#232019",
    gray = "#5d7065",
    dark_red = "#454133",
    red = "#8fa397",
    dark_green = "#2e2b22",
    green = "#728c7c",
    dark_yellow = "#454133",
    yellow = "#728c7c",
    dark_blue = "#454133",
    blue = "#687e71",
    dark_magenta = "#2e2b22",
    magenta = "#728c7c",
    dark_cyan = "#5d7065",
    cyan = "#8fa397",
    light_gray = "#8fa397",
    white = "#dbcfbc",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#1c1a17",
        panel = "#232019",
        float = "#232019",
        active = "#2e2b22",
        disabled = "#454133",
        hover = "#2e2b22",
        selection = "#454133",
        search = "#454133",
        contrast = "#d3c3ad",
        negative = "#f77b63",
        warn = "#e4ae67",
        info = "#6eb7cf",
        hint = "#e4ae67",
        positive = "#34cca7",
        add = "#34cca7",
        delete = "#f77b63",
        modify = "#6eb7cf",
    },
    fg = {
        default = "#e7dccb",
        subtle = "#8fa397",
        accent = "#02b193",
        disabled = "#687e71",
        contrast = "#232019",
        negative = "#f77b63",
        warn = "#e4ae67",
        info = "#6eb7cf",
        hint = "#e4ae67",
        positive = "#34cca7",
        add = "#34cca7",
        delete = "#f77b63",
        modify = "#6eb7cf",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#d3c3ad",
        builtin = "#d3c3ad",
        member = "#ff8b4d",
        parameter = "#02b193",
    },
    property = {
        default = "#ff8b4d",
    },
    string = {
        default = "#dbcfbc",
        doc = "#d3c3ad",
        regexp = "#f2f2da",
        escape = "#f2f2da",
    },
    constant = {
        default = "#d3c3ad",
        builtin = "#dbcfbc",
    },
    module = {
        default = "#dbcfbc",
    },
    boolean = {
        default = "#8fa397",
    },
    number = {
        default = "#d3c3ad",
    },
    type = {
        default = "#f2f2da",
        builtin = "#f2f2da",
    },
    attribute = {
        default = "#ff8b4d",
        builtin = "#ff8b4d",
    },
    func = {
        default = "#02b193",
        builtin = "#ff8b4d",
        method = "#ff8b4d",
    },
    constructor = {
        default = "#02b193",
    },
    keyword = {
        default = "#dbcfbc",
        import = "#e7dccb",
        export = "#e7dccb",
    },
    operator = {
        default = "#e7dccb",
    },
    punctuation = {
        default = "#d3c3ad",
        delimiter = "#d3c3ad",
        bracket = "#d3c3ad",
        special = "#d3c3ad",
    },
    comment = {
        default = "#728c7c",
        doc = "#728c7c",
        todo = "#34cca7",
        error = "#f77b63",
        warn = "#e4ae67",
        info = "#6eb7cf",
        hint = "#6eb7cf",
    },
    markup = {
        heading = {
            h1 = "#02b193",
            h2 = "#02b193",
            h3 = "#02b193",
            h4 = "#8fa397",
            h5 = "#8fa397",
            h6 = "#8fa397",
        },
        strong = "#02b193",
        italic = "#02b193",
        strikethrough = "#02b193",
        quote = "#687e71",
        math = "#687e71",
        link = "#ff8b4d",
        list = {
            default = "#8fa397",
            checked = "#34cca7",
            unchecked = "#8fa397",
        },
        code = {
            fg = "#d3c3ad",
            bg = "#232019",
        },
    },
    tag = {
        default = "#02b193",
        builtin = "#ff8b4d",
        attribute = "#728c7c",
        delimiter = "#d3c3ad",
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
