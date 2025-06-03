local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-nord-dark-night",
    label = "Black Atom — NRD ∷ Dark Night",
    appearance = "dark",
    status = "development",
    collection = {
        key = "nord",
        label = "NORD",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#1c1f26",
    d20 = "#242933",
    d30 = "#2E3440",
    d40 = "#3B4252",
    m10 = "#434C5E",
    m20 = "#4C566A",
    m30 = "#5E81AC",
    m40 = "#81A1C1",
    l10 = "#88C0D0",
    l20 = "#8FBCBB",
    l30 = "#D8DEE9",
    l40 = "#E5E9F0",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#242933",
    gray = "#4C566A",
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
    light_gray = "#88C0D0",
    white = "#D8DEE9",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#242933",
        panel = "#1c1f26",
        float = "#1c1f26",
        active = "#2E3440",
        disabled = "#434C5E",
        hover = "#2E3440",
        selection = "#3B4252",
        search = "#3B4252",
        contrast = "#D8DEE9",
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
        default = "#D8DEE9",
        subtle = "#88C0D0",
        accent = "#EBCB8B",
        disabled = "#5E81AC",
        contrast = "#242933",
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
        default = "#88C0D0",
        builtin = "#81A1C1",
        member = "#88C0D0",
        parameter = "#8FBCBB",
    },
    property = {
        default = "#88C0D0",
    },
    string = {
        default = "#A3BE8C",
        doc = "#A3BE8C",
        regexp = "#8FBCBB",
        escape = "#88C0D0",
    },
    constant = {
        default = "#8FBCBB",
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
        default = "#5E81AC",
        delimiter = "#4C566A",
        bracket = "#5E81AC",
        special = "#8FBCBB",
    },
    comment = {
        default = "#3B4252",
        doc = "#434C5E",
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
            h4 = "#88C0D0",
            h5 = "#88C0D0",
            h6 = "#88C0D0",
        },
        strong = "#81A1C1",
        italic = "#8FBCBB",
        strikethrough = "#4C566A",
        quote = "#A3BE8C",
        math = "#8FBCBB",
        link = "#8FBCBB",
        list = {
            default = "#88C0D0",
            checked = "#A3BE8C",
            unchecked = "#5E81AC",
        },
        code = {
            fg = "#8FBCBB",
            bg = "#1c1f26",
        },
    },
    tag = {
        default = "#81A1C1",
        builtin = "#5E81AC",
        attribute = "#8FBCBB",
        delimiter = "#4C566A",
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