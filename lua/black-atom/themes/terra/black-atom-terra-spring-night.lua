local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-terra-spring-night",
    label = "Black Atom — TER ∷ Spring Night",
    appearance = "dark",
    status = "release",
    collection = {
        key = "terra",
        label = "TERRA",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#1d201f",
    d20 = "#212523",
    d30 = "#272c2a",
    d40 = "#313634",
    m10 = "#394740",
    m20 = "#51635a",
    m30 = "#677e72",
    m40 = "#82978c",
    l10 = "#b8aa94",
    l20 = "#c3b8a4",
    l30 = "#d6d0c2",
    l40 = "#e0ddd1",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#272c2a",
    gray = "#394740",
    dark_red = "#b95847",
    red = "#ba6e5f",
    dark_green = "#73b268",
    green = "#92d49a",
    dark_yellow = "#e89a61",
    yellow = "#d1a762",
    dark_blue = "#899ddc",
    blue = "#99b9e6",
    dark_magenta = "#d5a9c3",
    magenta = "#c6b3da",
    dark_cyan = "#679980",
    cyan = "#85ad9f",
    light_gray = "#b8aa94",
    white = "#d6d0c2",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#212523",
        panel = "#1d201f",
        float = "#1d201f",
        active = "#272c2a",
        disabled = "#394740",
        hover = "#272c2a",
        selection = "#313634",
        search = "#313634",
        contrast = "#d6d0c2",
        negative = "#ba6e5f",
        warn = "#d1a762",
        info = "#99b9e6",
        hint = "#e89a61",
        positive = "#92d49a",
        add = "#92d49a",
        delete = "#ba6e5f",
        modify = "#99b9e6",
    },
    fg = {
        default = "#d6d0c2",
        subtle = "#b8aa94",
        accent = "#d1a762",
        disabled = "#677e72",
        contrast = "#212523",
        negative = "#ba6e5f",
        warn = "#d1a762",
        info = "#99b9e6",
        hint = "#e89a61",
        positive = "#92d49a",
        add = "#92d49a",
        delete = "#ba6e5f",
        modify = "#99b9e6",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#99b9e6",
        builtin = "#99b9e6",
        member = "#899ddc",
        parameter = "#e89a61",
    },
    property = {
        default = "#99b9e6",
    },
    string = {
        default = "#92d49a",
        doc = "#92d49a",
        regexp = "#e89a61",
        escape = "#ba6e5f",
    },
    constant = {
        default = "#e89a61",
        builtin = "#e89a61",
    },
    module = {
        default = "#899ddc",
    },
    boolean = {
        default = "#e89a61",
    },
    number = {
        default = "#e89a61",
    },
    type = {
        default = "#85ad9f",
        builtin = "#679980",
    },
    attribute = {
        default = "#85ad9f",
        builtin = "#85ad9f",
    },
    func = {
        default = "#d1a762",
        builtin = "#d1a762",
        method = "#d1a762",
    },
    constructor = {
        default = "#d1a762",
    },
    keyword = {
        default = "#ba6e5f",
        import = "#c6b3da",
        export = "#c6b3da",
    },
    operator = {
        default = "#c6b3da",
    },
    punctuation = {
        default = "#b8aa94",
        delimiter = "#82978c",
        bracket = "#b8aa94",
        special = "#b8aa94",
    },
    comment = {
        default = "#394740",
        doc = "#73b268",
        todo = "#92d49a",
        error = "#ba6e5f",
        warn = "#d1a762",
        info = "#99b9e6",
        hint = "#e89a61",
    },
    markup = {
        heading = {
            h1 = "#d1a762",
            h2 = "#d1a762",
            h3 = "#d1a762",
            h4 = "#b8aa94",
            h5 = "#b8aa94",
            h6 = "#b8aa94",
        },
        strong = "#d1a762",
        italic = "#d1a762",
        strikethrough = "#d1a762",
        quote = "#92d49a",
        math = "#73b268",
        link = "#92d49a",
        list = {
            default = "#b8aa94",
            checked = "#92d49a",
            unchecked = "#b8aa94",
        },
        code = {
            fg = "#b8aa94",
            bg = "#313634",
        },
    },
    tag = {
        default = "#d1a762",
        builtin = "#d1a762",
        attribute = "#e89a61",
        delimiter = "#e89a61",
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
