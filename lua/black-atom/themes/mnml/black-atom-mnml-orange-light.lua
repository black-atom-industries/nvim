local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-mnml-orange-light",
    label = "Black Atom — MNM ∷ Orange Light",
    appearance = "light",
    status = "development",
    collection = {
        key = "mnml",
        label = "MNM",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#23282a",
    d20 = "#2d3438",
    d30 = "#394145",
    d40 = "#444a53",
    m10 = "#515c62",
    m20 = "#5c6470",
    m30 = "#67767e",
    m40 = "#819098",
    l10 = "#bed2dc",
    l20 = "#cddce4",
    l30 = "#dce9ef",
    l40 = "#edf5f9",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#515c62",
    gray = "#515c62",
    dark_red = "#515c62",
    red = "#819098",
    dark_green = "#515c62",
    green = "#67767e",
    dark_yellow = "#515c62",
    yellow = "#67767e",
    dark_blue = "#515c62",
    blue = "#5c6470",
    dark_magenta = "#515c62",
    magenta = "#67767e",
    dark_cyan = "#515c62",
    cyan = "#819098",
    light_gray = "#515c62",
    white = "#cddce4",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#edf5f9",
        panel = "#dce9ef",
        float = "#dce9ef",
        active = "#cddce4",
        disabled = "#bed2dc",
        hover = "#cddce4",
        selection = "#bed2dc",
        search = "#bed2dc",
        contrast = "#444a53",
        negative = "#FF6513",
        warn = "#ff8c1a",
        info = "#3498db",
        hint = "#ff8c1a",
        positive = "#27ae60",
        add = "#27ae60",
        delete = "#FF6513",
        modify = "#3498db",
    },
    fg = {
        default = "#2d3438",
        subtle = "#515c62",
        accent = "#ff8c1a",
        disabled = "#67767e",
        contrast = "#cddce4",
        negative = "#FF6513",
        warn = "#ff8c1a",
        info = "#3498db",
        hint = "#ff8c1a",
        positive = "#27ae60",
        add = "#27ae60",
        delete = "#FF6513",
        modify = "#3498db",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#444a53",
        builtin = "#444a53",
        member = "#515c62",
        parameter = "#ff8c1a",
    },
    property = {
        default = "#FF6513",
    },
    string = {
        default = "#819098",
        doc = "#FF6513",
        regexp = "#ff8c1a",
        escape = "#ff8c1a",
    },
    constant = {
        default = "#2d3438",
        builtin = "#23282a",
    },
    module = {
        default = "#394145",
    },
    boolean = {
        default = "#515c62",
    },
    number = {
        default = "#444a53",
    },
    type = {
        default = "#23282a",
        builtin = "#444a53",
    },
    attribute = {
        default = "#FF6513",
        builtin = "#FF6513",
    },
    func = {
        default = "#ff8c1a",
        builtin = "#FF6513",
        method = "#FF6513",
    },
    constructor = {
        default = "#ff8c1a",
    },
    keyword = {
        default = "#2d3438",
        import = "#394145",
        export = "#394145",
    },
    operator = {
        default = "#2d3438",
    },
    punctuation = {
        default = "#444a53",
        delimiter = "#444a53",
        bracket = "#444a53",
        special = "#444a53",
    },
    comment = {
        default = "#5c6470",
        doc = "#5c6470",
        todo = "#27ae60",
        error = "#FF6513",
        warn = "#ff8c1a",
        info = "#3498db",
        hint = "#3498db",
    },
    markup = {
        heading = {
            h1 = "#ff8c1a",
            h2 = "#ff8c1a",
            h3 = "#ff8c1a",
            h4 = "#515c62",
            h5 = "#515c62",
            h6 = "#515c62",
        },
        strong = "#ff8c1a",
        italic = "#ff8c1a",
        strikethrough = "#ff8c1a",
        quote = "#67767e",
        math = "#5c6470",
        link = "#FF6513",
        list = {
            default = "#515c62",
            checked = "#27ae60",
            unchecked = "#515c62",
        },
        code = {
            fg = "#444a53",
            bg = "#dce9ef",
        },
    },
    tag = {
        default = "#FF6513",
        builtin = "#ff8c1a",
        attribute = "#515c62",
        delimiter = "#67767e",
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
