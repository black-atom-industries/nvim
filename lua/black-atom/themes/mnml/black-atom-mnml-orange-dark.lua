local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-mnml-orange-dark",
    label = "Black Atom — MNM ∷ Orange Dark",
    appearance = "dark",
    status = "development",
    collection = {
        key = "mnml",
        label = "MNM",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#131517",
    d20 = "#1f2326",
    d30 = "#2d3338",
    d40 = "#3b4249",
    m10 = "#617283",
    m20 = "#7a8c9d",
    m30 = "#92a9bb",
    m40 = "#b3c1cd",
    l10 = "#e5ebf1",
    l20 = "#ebf1f4",
    l30 = "#f9fbfc",
    l40 = "#ffffff",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#1f2326",
    gray = "#617283",
    dark_red = "#eb6247",
    red = "#f7866f",
    dark_green = "#92a9bb",
    green = "#b3c1cd",
    dark_yellow = "#ff8c64",
    yellow = "#ff9c4d",
    dark_blue = "#92a9bb",
    blue = "#b3c1cd",
    dark_magenta = "#617283",
    magenta = "#7a8c9d",
    dark_cyan = "#617283",
    cyan = "#7a8c9d",
    light_gray = "#92a9bb",
    white = "#e5ebf1",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#131517",
        panel = "#1f2326",
        float = "#1f2326",
        active = "#2d3338",
        disabled = "#3b4249",
        hover = "#2d3338",
        selection = "#3b4249",
        search = "#3b4249",
        contrast = "#e5ebf1",
        negative = "#f7866f",
        warn = "#f7866f",
        info = "#b3c1cd",
        hint = "#ff8c64",
        positive = "#b3c1cd",
        add = "#b3c1cd",
        delete = "#f7866f",
        modify = "#b3c1cd",
    },
    fg = {
        default = "#e5ebf1",
        subtle = "#92a9bb",
        accent = "#ff9c4d",
        disabled = "#7a8c9d",
        contrast = "#1f2326",
        negative = "#f7866f",
        warn = "#f7866f",
        info = "#b3c1cd",
        hint = "#ff8c64",
        positive = "#b3c1cd",
        add = "#b3c1cd",
        delete = "#f7866f",
        modify = "#b3c1cd",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#e5ebf1",
        builtin = "#e5ebf1",
        member = "#f7866f",
        parameter = "#ff9c4d",
    },
    property = {
        default = "#f7866f",
    },
    string = {
        default = "#ebf1f4",
        doc = "#e5ebf1",
        regexp = "#ffffff",
        escape = "#ffffff",
    },
    constant = {
        default = "#e5ebf1",
        builtin = "#ebf1f4",
    },
    module = {
        default = "#b3c1cd",
    },
    boolean = {
        default = "#617283",
    },
    number = {
        default = "#e5ebf1",
    },
    type = {
        default = "#ffffff",
        builtin = "#ffffff",
    },
    attribute = {
        default = "#f7866f",
        builtin = "#f7866f",
    },
    func = {
        default = "#ff9c4d",
        builtin = "#f7866f",
        method = "#f7866f",
    },
    constructor = {
        default = "#ff9c4d",
    },
    keyword = {
        default = "#ebf1f4",
        import = "#f7866f",
        export = "#eb6247",
    },
    operator = {
        default = "#f9fbfc",
    },
    punctuation = {
        default = "#e5ebf1",
        delimiter = "#e5ebf1",
        bracket = "#e5ebf1",
        special = "#e5ebf1",
    },
    comment = {
        default = "#617283",
        doc = "#7a8c9d",
        todo = "#b3c1cd",
        error = "#f7866f",
        warn = "#ff9c4d",
        info = "#b3c1cd",
        hint = "#f7866f",
    },
    markup = {
        heading = {
            h1 = "#ff9c4d",
            h2 = "#ff9c4d",
            h3 = "#ff9c4d",
            h4 = "#617283",
            h5 = "#617283",
            h6 = "#617283",
        },
        strong = "#ff9c4d",
        italic = "#ff9c4d",
        strikethrough = "#ff9c4d",
        quote = "#b3c1cd",
        math = "#92a9bb",
        link = "#b3c1cd",
        list = {
            default = "#617283",
            checked = "#b3c1cd",
            unchecked = "#617283",
        },
        code = {
            fg = "#e5ebf1",
            bg = "#3b4249",
        },
    },
    tag = {
        default = "#ff9c4d",
        builtin = "#f7866f",
        attribute = "#92a9bb",
        delimiter = "#e5ebf1",
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