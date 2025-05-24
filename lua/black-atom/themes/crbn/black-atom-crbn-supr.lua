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
    d10 = "#25292d",
    d20 = "#2d3237",
    d30 = "#363d43",
    d40 = "#444c54",
    m10 = "#617283",
    m20 = "#7a8c9d",
    m30 = "#92a9bb",
    m40 = "#b3c1cd",
    l10 = "#dee6ed",
    l20 = "#e8eff2",
    l30 = "#f2f4f9",
    l40 = "#fafafa",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#2d3237",
    gray = "#617283",
    dark_red = "#e63c19",
    red = "#ff5533",
    dark_green = "#617283",
    green = "#7a8c9d",
    dark_yellow = "#ff7140",
    yellow = "#ff8129",
    dark_blue = "#7a8c9d",
    blue = "#92a9bb",
    dark_magenta = "#617283",
    magenta = "#7a8c9d",
    dark_cyan = "#363d43",
    cyan = "#2d3237",
    light_gray = "#92a9bb",
    white = "#dee6ed",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#f2f4f9",
        panel = "#e8eff2",
        float = "#e8eff2",
        active = "#dee6ed",
        disabled = "#7a8c9d",
        hover = "#dee6ed",
        selection = "#dee6ed",
        search = "#dee6ed",
        contrast = "#2d3237",
        negative = "#ff5533",
        warn = "#ff8129",
        info = "#92a9bb",
        hint = "#ff7140",
        positive = "#7a8c9d",
        add = "#7a8c9d",
        delete = "#ff5533",
        modify = "#92a9bb",
    },
    fg = {
        default = "#2d3237",
        subtle = "#444c54",
        accent = "#ff8129",
        disabled = "#7a8c9d",
        contrast = "#e8eff2",
        negative = "#ff5533",
        warn = "#ff8129",
        info = "#92a9bb",
        hint = "#ff7140",
        positive = "#7a8c9d",
        add = "#7a8c9d",
        delete = "#ff5533",
        modify = "#92a9bb",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#444c54",
        builtin = "#444c54",
        member = "#617283",
        parameter = "#ff7140",
    },
    property = {
        default = "#617283",
    },
    string = {
        default = "#363d43",
        doc = "#444c54",
        regexp = "#25292d",
        escape = "#25292d",
    },
    constant = {
        default = "#2d3237",
        builtin = "#25292d",
    },
    module = {
        default = "#92a9bb",
    },
    boolean = {
        default = "#617283",
    },
    number = {
        default = "#444c54",
    },
    type = {
        default = "#25292d",
        builtin = "#444c54",
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
        default = "#363d43",
        import = "#ff5533",
        export = "#e63c19",
    },
    operator = {
        default = "#2d3237",
    },
    punctuation = {
        default = "#444c54",
        delimiter = "#444c54",
        bracket = "#444c54",
        special = "#444c54",
    },
    comment = {
        default = "#617283",
        doc = "#7a8c9d",
        todo = "#7a8c9d",
        error = "#ff5533",
        warn = "#ff8129",
        info = "#92a9bb",
        hint = "#ff7140",
    },
    markup = {
        heading = {
            h1 = "#ff8129",
            h2 = "#ff8129",
            h3 = "#ff8129",
            h4 = "#617283",
            h5 = "#617283",
            h6 = "#617283",
        },
        strong = "#ff8129",
        italic = "#ff8129",
        strikethrough = "#ff8129",
        quote = "#7a8c9d",
        math = "#617283",
        link = "#7a8c9d",
        list = {
            default = "#617283",
            checked = "#7a8c9d",
            unchecked = "#617283",
        },
        code = {
            fg = "#444c54",
            bg = "#e8eff2",
        },
    },
    tag = {
        default = "#ff8129",
        builtin = "#ff7140",
        attribute = "#617283",
        delimiter = "#444c54",
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

