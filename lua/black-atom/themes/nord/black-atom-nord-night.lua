local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-nord-night",
    label = "Black Atom — NRD ∷ Night",
    appearance = "dark",
    status = "development",
    collection = {
        key = "nord",
        label = "NORD",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#2E3440",
    d20 = "#3B4252",
    d30 = "#434C5E",
    d40 = "#4C566A",
    m10 = "#5E81AC",
    m20 = "#81A1C1",
    m30 = "#88C0D0",
    m40 = "#8FBCBB",
    l10 = "#D8DEE9",
    l20 = "#E5E9F0",
    l30 = "#ECEFF4",
    l40 = "#ECEFF4",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#434C5E",
    gray = "#81A1C1",
    dark_red = "#BF616A",
    red = "#BF616A",
    dark_green = "#A3BE8C",
    green = "#A3BE8C",
    dark_yellow = "#D08770",
    yellow = "#EBCB8B",
    dark_blue = "#5E81AC",
    blue = "#81A1C1",
    dark_magenta = "#B48EAD",
    magenta = "#B48EAD",
    dark_cyan = "#88C0D0",
    cyan = "#8FBCBB",
    light_gray = "#D8DEE9",
    white = "#ECEFF4",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#3B4252",
        panel = "#2E3440",
        float = "#2E3440",
        active = "#434C5E",
        disabled = "#5E81AC",
        hover = "#434C5E",
        selection = "#4C566A",
        search = "#4C566A",
        contrast = "#ECEFF4",
        negative = "#BF616A",
        warn = "#EBCB8B",
        info = "#81A1C1",
        hint = "#D08770",
        positive = "#A3BE8C",
        add = "#A3BE8C",
        delete = "#BF616A",
        modify = "#81A1C1",
    },
    fg = {
        default = "#ECEFF4",
        subtle = "#D8DEE9",
        accent = "#EBCB8B",
        disabled = "#88C0D0",
        contrast = "#3B4252",
        negative = "#BF616A",
        warn = "#EBCB8B",
        info = "#81A1C1",
        hint = "#D08770",
        positive = "#A3BE8C",
        add = "#A3BE8C",
        delete = "#BF616A",
        modify = "#81A1C1",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#D8DEE9",
        builtin = "#81A1C1",
        member = "#D8DEE9",
        parameter = "#E5E9F0",
    },
    property = {
        default = "#D8DEE9",
    },
    string = {
        default = "#A3BE8C",
        doc = "#A3BE8C",
        regexp = "#8FBCBB",
        escape = "#88C0D0",
    },
    constant = {
        default = "#E5E9F0",
        builtin = "#81A1C1",
    },
    module = {
        default = "#5E81AC",
    },
    boolean = {
        default = "#81A1C1",
    },
    number = {
        default = "#B48EAD",
    },
    type = {
        default = "#8FBCBB",
        builtin = "#88C0D0",
    },
    attribute = {
        default = "#88C0D0",
        builtin = "#8FBCBB",
    },
    func = {
        default = "#81A1C1",
        builtin = "#5E81AC",
        method = "#81A1C1",
    },
    constructor = {
        default = "#81A1C1",
    },
    keyword = {
        default = "#81A1C1",
        import = "#5E81AC",
        export = "#5E81AC",
    },
    operator = {
        default = "#8FBCBB",
    },
    punctuation = {
        default = "#88C0D0",
        delimiter = "#81A1C1",
        bracket = "#88C0D0",
        special = "#8FBCBB",
    },
    comment = {
        default = "#4C566A",
        doc = "#5E81AC",
        todo = "#EBCB8B",
        error = "#BF616A",
        warn = "#EBCB8B",
        info = "#81A1C1",
        hint = "#8FBCBB",
    },
    markup = {
        heading = {
            h1 = "#81A1C1",
            h2 = "#81A1C1",
            h3 = "#81A1C1",
            h4 = "#D8DEE9",
            h5 = "#D8DEE9",
            h6 = "#D8DEE9",
        },
        strong = "#81A1C1",
        italic = "#8FBCBB",
        strikethrough = "#81A1C1",
        quote = "#A3BE8C",
        math = "#8FBCBB",
        link = "#8FBCBB",
        list = {
            default = "#D8DEE9",
            checked = "#A3BE8C",
            unchecked = "#88C0D0",
        },
        code = {
            fg = "#E5E9F0",
            bg = "#2E3440",
        },
    },
    tag = {
        default = "#81A1C1",
        builtin = "#5E81AC",
        attribute = "#8FBCBB",
        delimiter = "#81A1C1",
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
