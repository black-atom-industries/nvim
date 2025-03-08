local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-crbn-supr",
    label = "Black Atom • Carbon ∷ SUPR",
    collection = {
        key = "crbn",
        label = "CRBN",
    },
    appearance = "light",
    icon = " 󰛸 ",
    status = "release",
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    "#1d2730",
    "#344859",
    "#415a70",
    "#566e84",
    "#6c7f92",
    "#8999a8",
    "#a2b5c5",
    "#bfcbd5",
    "#cdd9e4",
    "#d8e2ea",
    "#e8eef2",
    "#eff5fb",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#344859",
    gray = "#6c7f92",
    dark_red = "#f2280d",
    red = "#ff4b33",
    dark_green = "#50b82e",
    green = "#69d148",
    dark_yellow = "#ff4302",
    yellow = "#FF6833",
    dark_blue = "#1661EB",
    blue = "#337AFF",
    dark_magenta = "#6c7f92",
    magenta = "#8999a8",
    dark_cyan = "#415a70",
    cyan = "#344859",
    light_gray = "#a2b5c5",
    white = "#cdd9e4",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#e8eef2",
        panel = "#d8e2ea",
        float = "#d8e2ea",
        active = "#cdd9e4",
        disabled = "#8999a8",
        hover = "#cdd9e4",
        selection = "#cdd9e4",
        search = "#cdd9e4",
        contrast = "#344859",
        negative = "#ff4b33",
        warn = "#FF6833",
        info = "#337AFF",
        hint = "#ff4302",
        positive = "#69d148",
        add = "#69d148",
        delete = "#ff4b33",
        modify = "#337AFF",
    },
    fg = {
        default = "#344859",
        subtle = "#566e84",
        accent = "#FF6833",
        disabled = "#8999a8",
        contrast = "#d8e2ea",
        negative = "#ff4b33",
        warn = "#FF6833",
        info = "#337AFF",
        hint = "#ff4302",
        positive = "#69d148",
        add = "#69d148",
        delete = "#ff4b33",
        modify = "#337AFF",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#566e84",
        builtin = "#566e84",
        member = "#6c7f92",
        parameter = "#ff4302",
    },
    property = {
        default = "#6c7f92",
    },
    string = {
        default = "#6c7f92",
        doc = "#8999a8",
        regexp = "#1d2730",
        escape = "#1d2730",
    },
    constant = {
        default = "#1d2730",
        builtin = "#1d2730",
    },
    module = {
        default = "#337AFF",
    },
    boolean = {
        default = "#6c7f92",
    },
    number = {
        default = "#566e84",
    },
    type = {
        default = "#1d2730",
        builtin = "#566e84",
    },
    attribute = {
        default = "#ff4302",
        builtin = "#ff4302",
    },
    func = {
        default = "#FF6833",
        builtin = "#ff4302",
        method = "#FF6833",
    },
    constructor = {
        default = "#FF6833",
    },
    keyword = {
        default = "#415a70",
        import = "#6c7f92",
        export = "#6c7f92",
    },
    operator = {
        default = "#344859",
    },
    punctuation = {
        default = "#344859",
        delimiter = "#344859",
        bracket = "#344859",
        special = "#344859",
    },
    comment = {
        default = "#6c7f92",
        doc = "#8999a8",
        todo = "#69d148",
        error = "#ff4b33",
        warn = "#FF6833",
        info = "#337AFF",
        hint = "#ff4302",
    },
    markup = {
        heading = {
            h1 = "#FF6833",
            h2 = "#FF6833",
            h3 = "#FF6833",
            h4 = "#6c7f92",
            h5 = "#6c7f92",
            h6 = "#6c7f92",
        },
        strong = "#FF6833",
        italic = "#FF6833",
        strikethrough = "#FF6833",
        quote = "#69d148",
        math = "#50b82e",
        link = "#69d148",
        list = {
            default = "#6c7f92",
            checked = "#69d148",
            unchecked = "#6c7f92",
        },
        code = {
            fg = "#566e84",
            bg = "#d8e2ea",
        },
    },
    tag = {
        default = "#FF6833",
        builtin = "#ff4302",
        attribute = "#6c7f92",
        delimiter = "#566e84",
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
