local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-nord-day",
    label = "Black Atom — NRD ∷ Day",
    appearance = "light",
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
        default = "#ECEFF4",
        panel = "#E5E9F0",
        float = "#E5E9F0",
        active = "#D8DEE9",
        disabled = "#88C0D0",
        hover = "#D8DEE9",
        selection = "#ECEFF4",
        search = "#ECEFF4",
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
    fg = {
        default = "#3B4252",
        subtle = "#5E81AC",
        accent = "#EBCB8B",
        disabled = "#81A1C1",
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
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#434C5E",
        builtin = "#5E81AC",
        member = "#434C5E",
        parameter = "#3B4252",
    },
    property = {
        default = "#434C5E",
    },
    string = {
        default = "#A3BE8C",
        doc = "#A3BE8C",
        regexp = "#88C0D0",
        escape = "#8FBCBB",
    },
    constant = {
        default = "#3B4252",
        builtin = "#5E81AC",
    },
    module = {
        default = "#81A1C1",
    },
    boolean = {
        default = "#5E81AC",
    },
    number = {
        default = "#B48EAD",
    },
    type = {
        default = "#88C0D0",
        builtin = "#8FBCBB",
    },
    attribute = {
        default = "#8FBCBB",
        builtin = "#88C0D0",
    },
    func = {
        default = "#5E81AC",
        builtin = "#81A1C1",
        method = "#5E81AC",
    },
    constructor = {
        default = "#5E81AC",
    },
    keyword = {
        default = "#5E81AC",
        import = "#81A1C1",
        export = "#81A1C1",
    },
    operator = {
        default = "#88C0D0",
    },
    punctuation = {
        default = "#5E81AC",
        delimiter = "#81A1C1",
        bracket = "#5E81AC",
        special = "#88C0D0",
    },
    comment = {
        default = "#88C0D0",
        doc = "#81A1C1",
        todo = "#D08770",
        error = "#BF616A",
        warn = "#D08770",
        info = "#5E81AC",
        hint = "#88C0D0",
    },
    markup = {
        heading = {
            h1 = "#5E81AC",
            h2 = "#5E81AC",
            h3 = "#5E81AC",
            h4 = "#434C5E",
            h5 = "#434C5E",
            h6 = "#434C5E",
        },
        strong = "#5E81AC",
        italic = "#88C0D0",
        strikethrough = "#81A1C1",
        quote = "#A3BE8C",
        math = "#88C0D0",
        link = "#88C0D0",
        list = {
            default = "#434C5E",
            checked = "#A3BE8C",
            unchecked = "#5E81AC",
        },
        code = {
            fg = "#3B4252",
            bg = "#ECEFF4",
        },
    },
    tag = {
        default = "#5E81AC",
        builtin = "#81A1C1",
        attribute = "#88C0D0",
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