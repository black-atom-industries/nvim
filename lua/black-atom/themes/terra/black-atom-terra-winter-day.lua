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
    d10 = "#0e1721",
    d20 = "#1e2a37",
    d30 = "#2d3c4c",
    d40 = "#3c4f62",
    m10 = "#4f667c",
    m20 = "#647d97",
    m30 = "#7c91aa",
    m40 = "#94a6be",
    l10 = "#cfd8e5",
    l20 = "#dfe5ef",
    l30 = "#ebeff5",
    l40 = "#f6f9fc",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#2d3c4c",
    gray = "#647d97",
    dark_red = "#5d5292",
    red = "#6e6ab2",
    dark_green = "#17687d",
    green = "#208295",
    dark_yellow = "#fa6c14",
    yellow = "#fa9916",
    dark_blue = "#2e5e9a",
    blue = "#3578b8",
    dark_magenta = "#665189",
    magenta = "#7968a9",
    dark_cyan = "#007283",
    cyan = "#008c99",
    light_gray = "#cfd8e5",
    white = "#ebeff5",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#ebeff5",
        panel = "#dfe5ef",
        float = "#dfe5ef",
        active = "#cfd8e5",
        disabled = "#7c91aa",
        hover = "#cfd8e5",
        selection = "#f6f9fc",
        search = "#f6f9fc",
        contrast = "#1e2a37",
        negative = "#dae5f2",
        warn = "#e8edff",
        info = "#d9e6f2",
        hint = "#e2eaff",
        positive = "#dae6ef",
        add = "#dae6ef",
        delete = "#dae5f2",
        modify = "#d9e6f2",
    },
    fg = {
        default = "#1e2a37",
        subtle = "#4f667c",
        accent = "#fa9916",
        disabled = "#647d97",
        contrast = "#ebeff5",
        negative = "#6e6ab2",
        warn = "#fa9916",
        info = "#3578b8",
        hint = "#fa6c14",
        positive = "#208295",
        add = "#208295",
        delete = "#6e6ab2",
        modify = "#3578b8",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#3578b8",
        builtin = "#2e5e9a",
        member = "#2e5e9a",
        parameter = "#fa6c14",
    },
    property = {
        default = "#2e5e9a",
    },
    string = {
        default = "#208295",
        doc = "#208295",
        regexp = "#6e6ab2",
        escape = "#6e6ab2",
    },
    constant = {
        default = "#fa6c14",
        builtin = "#fa6c14",
    },
    module = {
        default = "#2e5e9a",
    },
    boolean = {
        default = "#17687d",
    },
    number = {
        default = "#17687d",
    },
    type = {
        default = "#008c99",
        builtin = "#007283",
    },
    attribute = {
        default = "#fa6c14",
        builtin = "#fa6c14",
    },
    func = {
        default = "#fa9916",
        builtin = "#fa9916",
        method = "#fa9916",
    },
    constructor = {
        default = "#fa9916",
    },
    keyword = {
        default = "#7968a9",
        import = "#6e6ab2",
        export = "#6e6ab2",
    },
    operator = {
        default = "#1e2a37",
    },
    punctuation = {
        default = "#647d97",
        delimiter = "#94a6be",
        bracket = "#647d97",
        special = "#647d97",
    },
    comment = {
        default = "#647d97",
        doc = "#17687d",
        todo = "#208295",
        error = "#6e6ab2",
        warn = "#fa9916",
        info = "#3578b8",
        hint = "#fa6c14",
    },
    markup = {
        heading = {
            h1 = "#fa9916",
            h2 = "#fa9916",
            h3 = "#fa9916",
            h4 = "#647d97",
            h5 = "#647d97",
            h6 = "#647d97",
        },
        strong = "#fa9916",
        italic = "#fa9916",
        strikethrough = "#fa9916",
        quote = "#208295",
        math = "#17687d",
        link = "#208295",
        list = {
            default = "#647d97",
            checked = "#208295",
            unchecked = "#647d97",
        },
        code = {
            fg = "#4f667c",
            bg = "#cfd8e5",
        },
    },
    tag = {
        default = "#fa9916",
        builtin = "#fa6c14",
        attribute = "#4f667c",
        delimiter = "#3c4f62",
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
