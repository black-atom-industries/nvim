local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-terra-fall-night",
    label = "Black Atom — TER ∷ Fall Night",
    appearance = "dark",
    status = "release",
    collection = {
        key = "terra",
        label = "TERRA",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#120e0e",
    d20 = "#1e1815",
    d30 = "#2a2120",
    d40 = "#362a27",
    m10 = "#8a6d58",
    m20 = "#a17d68",
    m30 = "#b59280",
    m40 = "#caa896",
    l10 = "#c7ab96",
    l20 = "#d4bba8",
    l30 = "#e2cdbb",
    l40 = "#efdcce",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#2a2120",
    gray = "#8a6d58",
    dark_red = "#d6815c",
    red = "#F48555",
    dark_green = "#9f745e",
    green = "#c4926e",
    dark_yellow = "#F48555",
    yellow = "#eba546",
    dark_blue = "#A47763",
    blue = "#d1a68f",
    dark_magenta = "#c4997a",
    magenta = "#ecc9a2",
    dark_cyan = "#ef9e74",
    cyan = "#FEBE98",
    light_gray = "#c7ab96",
    white = "#e2cdbb",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#1e1815",
        panel = "#120e0e",
        float = "#120e0e",
        active = "#2a2120",
        disabled = "#8a6d58",
        hover = "#2a2120",
        selection = "#362a27",
        search = "#362a27",
        contrast = "#e2cdbb",
        negative = "#F48555",
        warn = "#eba546",
        info = "#d1a68f",
        hint = "#F48555",
        positive = "#c4926e",
        add = "#c4926e",
        delete = "#F48555",
        modify = "#d1a68f",
    },
    fg = {
        default = "#e2cdbb",
        subtle = "#c7ab96",
        accent = "#eba546",
        disabled = "#b59280",
        contrast = "#1e1815",
        negative = "#F48555",
        warn = "#eba546",
        info = "#d1a68f",
        hint = "#F48555",
        positive = "#c4926e",
        add = "#c4926e",
        delete = "#F48555",
        modify = "#d1a68f",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#d1a68f",
        builtin = "#d1a68f",
        member = "#A47763",
        parameter = "#F48555",
    },
    property = {
        default = "#d1a68f",
    },
    string = {
        default = "#c4926e",
        doc = "#c4926e",
        regexp = "#F48555",
        escape = "#F48555",
    },
    constant = {
        default = "#F48555",
        builtin = "#F48555",
    },
    module = {
        default = "#A47763",
    },
    boolean = {
        default = "#F48555",
    },
    number = {
        default = "#F48555",
    },
    type = {
        default = "#FEBE98",
        builtin = "#ef9e74",
    },
    attribute = {
        default = "#FEBE98",
        builtin = "#FEBE98",
    },
    func = {
        default = "#eba546",
        builtin = "#eba546",
        method = "#eba546",
    },
    constructor = {
        default = "#eba546",
    },
    keyword = {
        default = "#F48555",
        import = "#ecc9a2",
        export = "#ecc9a2",
    },
    operator = {
        default = "#ecc9a2",
    },
    punctuation = {
        default = "#c7ab96",
        delimiter = "#caa896",
        bracket = "#c7ab96",
        special = "#c7ab96",
    },
    comment = {
        default = "#8a6d58",
        doc = "#9f745e",
        todo = "#c4926e",
        error = "#F48555",
        warn = "#eba546",
        info = "#d1a68f",
        hint = "#F48555",
    },
    markup = {
        heading = {
            h1 = "#eba546",
            h2 = "#eba546",
            h3 = "#eba546",
            h4 = "#c7ab96",
            h5 = "#c7ab96",
            h6 = "#c7ab96",
        },
        strong = "#eba546",
        italic = "#eba546",
        strikethrough = "#eba546",
        quote = "#c4926e",
        math = "#9f745e",
        link = "#c4926e",
        list = {
            default = "#c7ab96",
            checked = "#c4926e",
            unchecked = "#c7ab96",
        },
        code = {
            fg = "#c7ab96",
            bg = "#362a27",
        },
    },
    tag = {
        default = "#eba546",
        builtin = "#eba546",
        attribute = "#F48555",
        delimiter = "#F48555",
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
