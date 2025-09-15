local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-terra-winter-day",
    label = "Black Atom — TER ∷ Winter Day",
    appearance = "light",
    status = "development",
    collection = {
        key = "terra",
        label = "TERRA",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#3a3f47",
    d20 = "#434851",
    d30 = "#4f555e",
    d40 = "#5a606b",
    m10 = "#6b7080",
    m20 = "#7a8394",
    m30 = "#8c96a8",
    m40 = "#a0aabc",
    l10 = "#bbc5d3",
    l20 = "#ccd6e0",
    l30 = "#dde6ed",
    l40 = "#eef4f7",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#4f555e",
    gray = "#7a8394",
    dark_red = "#8A7B5C",
    red = "#A6926F",
    dark_green = "#6B7080",
    green = "#8696A8",
    dark_yellow = "#A6926F",
    yellow = "#C4B89C",
    dark_blue = "#4A6785",
    blue = "#5D7CA0",
    dark_magenta = "#7A8394",
    magenta = "#9CACC0",
    dark_cyan = "#556B7A",
    cyan = "#6B8296",
    light_gray = "#bbc5d3",
    white = "#dde6ed",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#dde6ed",
        panel = "#ccd6e0",
        float = "#ccd6e0",
        active = "#bbc5d3",
        disabled = "#8c96a8",
        hover = "#bbc5d3",
        selection = "#eef4f7",
        search = "#eef4f7",
        contrast = "#434851",
        negative = "#A6926F",
        warn = "#C4B89C",
        info = "#5D7CA0",
        hint = "#A6926F",
        positive = "#8696A8",
        add = "#8696A8",
        delete = "#A6926F",
        modify = "#5D7CA0",
    },
    fg = {
        default = "#434851",
        subtle = "#6b7080",
        accent = "#C4B89C",
        disabled = "#7a8394",
        contrast = "#dde6ed",
        negative = "#A6926F",
        warn = "#C4B89C",
        info = "#5D7CA0",
        hint = "#A6926F",
        positive = "#8696A8",
        add = "#8696A8",
        delete = "#A6926F",
        modify = "#5D7CA0",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#5D7CA0",
        builtin = "#4A6785",
        member = "#4A6785",
        parameter = "#A6926F",
    },
    property = {
        default = "#4A6785",
    },
    string = {
        default = "#8696A8",
        doc = "#8696A8",
        regexp = "#A6926F",
        escape = "#A6926F",
    },
    constant = {
        default = "#A6926F",
        builtin = "#A6926F",
    },
    module = {
        default = "#4A6785",
    },
    boolean = {
        default = "#6B7080",
    },
    number = {
        default = "#6B7080",
    },
    type = {
        default = "#6B8296",
        builtin = "#556B7A",
    },
    attribute = {
        default = "#A6926F",
        builtin = "#A6926F",
    },
    func = {
        default = "#C4B89C",
        builtin = "#C4B89C",
        method = "#C4B89C",
    },
    constructor = {
        default = "#C4B89C",
    },
    keyword = {
        default = "#A6926F",
        import = "#6B7080",
        export = "#8A7B5C",
    },
    operator = {
        default = "#434851",
    },
    punctuation = {
        default = "#7a8394",
        delimiter = "#a0aabc",
        bracket = "#7a8394",
        special = "#7a8394",
    },
    comment = {
        default = "#7a8394",
        doc = "#6B7080",
        todo = "#8696A8",
        error = "#A6926F",
        warn = "#C4B89C",
        info = "#5D7CA0",
        hint = "#A6926F",
    },
    markup = {
        heading = {
            h1 = "#C4B89C",
            h2 = "#C4B89C",
            h3 = "#C4B89C",
            h4 = "#7a8394",
            h5 = "#7a8394",
            h6 = "#7a8394",
        },
        strong = "#C4B89C",
        italic = "#C4B89C",
        strikethrough = "#C4B89C",
        quote = "#8696A8",
        math = "#6B7080",
        link = "#8696A8",
        list = {
            default = "#7a8394",
            checked = "#8696A8",
            unchecked = "#7a8394",
        },
        code = {
            fg = "#6b7080",
            bg = "#bbc5d3",
        },
    },
    tag = {
        default = "#C4B89C",
        builtin = "#A6926F",
        attribute = "#6b7080",
        delimiter = "#5a606b",
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
