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
    dark_yellow = "#ff4700",
    yellow = "#FF6513",
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
        negative = "#d1e7ff",
        warn = "#d5e8ff",
        info = "#d2e8f4",
        hint = "#d5e8ff",
        positive = "#cdeaf3",
        add = "#cdeaf3",
        delete = "#d1e7ff",
        modify = "#d2e8f4",
    },
    fg = {
        default = "#2d3438",
        subtle = "#515c62",
        accent = "#FF6513",
        disabled = "#67767e",
        contrast = "#cddce4",
        negative = "#ff4700",
        warn = "#FF6513",
        info = "#3498db",
        hint = "#FF6513",
        positive = "#27ae60",
        add = "#27ae60",
        delete = "#ff4700",
        modify = "#3498db",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#444a53",
        builtin = "#444a53",
        member = "#515c62",
        parameter = "#FF6513",
    },
    property = {
        default = "#ff4700",
    },
    string = {
        default = "#819098",
        doc = "#ff4700",
        regexp = "#FF6513",
        escape = "#FF6513",
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
        default = "#ff4700",
        builtin = "#ff4700",
    },
    func = {
        default = "#FF6513",
        builtin = "#ff4700",
        method = "#ff4700",
    },
    constructor = {
        default = "#FF6513",
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
        error = "#ff4700",
        warn = "#FF6513",
        info = "#3498db",
        hint = "#3498db",
    },
    markup = {
        heading = {
            h1 = "#FF6513",
            h2 = "#FF6513",
            h3 = "#FF6513",
            h4 = "#515c62",
            h5 = "#515c62",
            h6 = "#515c62",
        },
        strong = "#FF6513",
        italic = "#FF6513",
        strikethrough = "#FF6513",
        quote = "#67767e",
        math = "#5c6470",
        link = "#ff4700",
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
        default = "#ff4700",
        builtin = "#FF6513",
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
