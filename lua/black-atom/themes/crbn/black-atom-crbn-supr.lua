local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-crbn-supr",
    label = "Black Atom — CRB ∷ SUPR",
    appearance = "light",
    status = "release",
    collection = {
        key = "crbn",
        label = "CRBN",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#1d2730",
    d20 = "#344859",
    d30 = "#415a70",
    d40 = "#566e84",
    m10 = "#6c7f92",
    m20 = "#8999a8",
    m30 = "#a2b5c5",
    m40 = "#bfcbd5",
    l10 = "#dee6ed",
    l20 = "#e8eff2",
    l30 = "#f2f4f9",
    l40 = "#fafafa",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#344859",
    gray = "#6c7f92",
    dark_red = "#e63c19",
    red = "#ff5533",
    dark_green = "#a2b5c5",
    green = "#bfcbd5",
    dark_yellow = "#ff7140",
    yellow = "#ff8129",
    dark_blue = "#a2b5c5",
    blue = "#bfcbd5",
    dark_magenta = "#6c7f92",
    magenta = "#8999a8",
    dark_cyan = "#415a70",
    cyan = "#344859",
    light_gray = "#a2b5c5",
    white = "#dee6ed",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#f2f4f9",
        panel = "#e8eff2",
        float = "#e8eff2",
        active = "#dee6ed",
        disabled = "#8999a8",
        hover = "#dee6ed",
        selection = "#dee6ed",
        search = "#dee6ed",
        contrast = "#344859",
        negative = "#ff5533",
        warn = "#ff8129",
        info = "#bfcbd5",
        hint = "#ff7140",
        positive = "#bfcbd5",
        add = "#bfcbd5",
        delete = "#ff5533",
        modify = "#bfcbd5",
    },
    fg = {
        default = "#344859",
        subtle = "#566e84",
        accent = "#ff8129",
        disabled = "#8999a8",
        contrast = "#e8eff2",
        negative = "#ff5533",
        warn = "#ff8129",
        info = "#bfcbd5",
        hint = "#ff7140",
        positive = "#bfcbd5",
        add = "#bfcbd5",
        delete = "#ff5533",
        modify = "#bfcbd5",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#566e84",
        builtin = "#566e84",
        member = "#6c7f92",
        parameter = "#ff7140",
    },
    property = {
        default = "#6c7f92",
    },
    string = {
        default = "#415a70",
        doc = "#566e84",
        regexp = "#1d2730",
        escape = "#1d2730",
    },
    constant = {
        default = "#344859",
        builtin = "#1d2730",
    },
    module = {
        default = "#bfcbd5",
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
        default = "#ff7140",
        builtin = "#ff7140",
    },
    func = {
        default = "#ff8129",
        builtin = "#ff7140",
        method = "#ff8129",
    },
    constructor = {
        default = "#ff8129",
    },
    keyword = {
        default = "#415a70",
        import = "#ff5533",
        export = "#e63c19",
    },
    operator = {
        default = "#344859",
    },
    punctuation = {
        default = "#566e84",
        delimiter = "#566e84",
        bracket = "#566e84",
        special = "#566e84",
    },
    comment = {
        default = "#6c7f92",
        doc = "#8999a8",
        todo = "#bfcbd5",
        error = "#ff5533",
        warn = "#ff8129",
        info = "#bfcbd5",
        hint = "#ff7140",
    },
    markup = {
        heading = {
            h1 = "#ff8129",
            h2 = "#ff8129",
            h3 = "#ff8129",
            h4 = "#6c7f92",
            h5 = "#6c7f92",
            h6 = "#6c7f92",
        },
        strong = "#ff8129",
        italic = "#ff8129",
        strikethrough = "#ff8129",
        quote = "#bfcbd5",
        math = "#a2b5c5",
        link = "#bfcbd5",
        list = {
            default = "#6c7f92",
            checked = "#bfcbd5",
            unchecked = "#6c7f92",
        },
        code = {
            fg = "#566e84",
            bg = "#e8eff2",
        },
    },
    tag = {
        default = "#ff8129",
        builtin = "#ff7140",
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

