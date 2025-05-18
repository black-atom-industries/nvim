local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-crbn-null",
    label = "Black Atom — CRB ∷ NULL",
    appearance = "dark",
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
    l10 = "#becedb",
    l20 = "#dde9ec",
    l30 = "#eef3f5",
    l40 = "#fbfcfd",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#2d3237",
    gray = "#617283",
    dark_red = "#eb6247",
    red = "#f7866f",
    dark_green = "#92a9bb",
    green = "#b3c1cd",
    dark_yellow = "#ff8f69",
    yellow = "#ff964c",
    dark_blue = "#92a9bb",
    blue = "#b3c1cd",
    dark_magenta = "#617283",
    magenta = "#7a8c9d",
    dark_cyan = "#617283",
    cyan = "#7a8c9d",
    light_gray = "#92a9bb",
    white = "#becedb",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#2d3237",
        panel = "#25292d",
        float = "#25292d",
        active = "#363d43",
        disabled = "#444c54",
        hover = "#363d43",
        selection = "#444c54",
        search = "#444c54",
        contrast = "#becedb",
        negative = "#f7866f",
        warn = "#ff964c",
        info = "#b3c1cd",
        hint = "#ff8f69",
        positive = "#b3c1cd",
        add = "#b3c1cd",
        delete = "#f7866f",
        modify = "#b3c1cd",
    },
    fg = {
        default = "#becedb",
        subtle = "#92a9bb",
        accent = "#ff964c",
        disabled = "#7a8c9d",
        contrast = "#2d3237",
        negative = "#f7866f",
        warn = "#ff964c",
        info = "#b3c1cd",
        hint = "#ff8f69",
        positive = "#b3c1cd",
        add = "#b3c1cd",
        delete = "#f7866f",
        modify = "#b3c1cd",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#becedb",
        builtin = "#becedb",
        member = "#b3c1cd",
        parameter = "#ff8f69",
    },
    property = {
        default = "#b3c1cd",
    },
    string = {
        default = "#dde9ec",
        doc = "#becedb",
        regexp = "#fbfcfd",
        escape = "#fbfcfd",
    },
    constant = {
        default = "#becedb",
        builtin = "#dde9ec",
    },
    module = {
        default = "#b3c1cd",
    },
    boolean = {
        default = "#617283",
    },
    number = {
        default = "#becedb",
    },
    type = {
        default = "#fbfcfd",
        builtin = "#fbfcfd",
    },
    attribute = {
        default = "#ff8f69",
        builtin = "#ff8f69",
    },
    func = {
        default = "#ff964c",
        builtin = "#ff8f69",
        method = "#ff964c",
    },
    constructor = {
        default = "#ff964c",
    },
    keyword = {
        default = "#dde9ec",
        import = "#f7866f",
        export = "#eb6247",
    },
    operator = {
        default = "#eef3f5",
    },
    punctuation = {
        default = "#becedb",
        delimiter = "#becedb",
        bracket = "#becedb",
        special = "#becedb",
    },
    comment = {
        default = "#617283",
        doc = "#7a8c9d",
        todo = "#b3c1cd",
        error = "#f7866f",
        warn = "#ff964c",
        info = "#b3c1cd",
        hint = "#ff8f69",
    },
    markup = {
        heading = {
            h1 = "#ff964c",
            h2 = "#ff964c",
            h3 = "#ff964c",
            h4 = "#617283",
            h5 = "#617283",
            h6 = "#617283",
        },
        strong = "#ff964c",
        italic = "#ff964c",
        strikethrough = "#ff964c",
        quote = "#b3c1cd",
        math = "#92a9bb",
        link = "#b3c1cd",
        list = {
            default = "#617283",
            checked = "#b3c1cd",
            unchecked = "#617283",
        },
        code = {
            fg = "#becedb",
            bg = "#444c54",
        },
    },
    tag = {
        default = "#ff964c",
        builtin = "#ff8f69",
        attribute = "#92a9bb",
        delimiter = "#becedb",
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

