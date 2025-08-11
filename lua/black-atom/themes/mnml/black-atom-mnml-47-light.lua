local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-mnml-47-light",
    label = "Black Atom — MNM ∷ 47 Light",
    appearance = "light",
    status = "development",
    collection = {
        key = "mnml",
        label = "MNM",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#2a2723",
    d20 = "#3b362a",
    d30 = "#484436",
    d40 = "#655f4b",
    m10 = "#516258",
    m20 = "#5c7064",
    m30 = "#677e70",
    m40 = "#81988a",
    l10 = "#d3c3ad",
    l20 = "#dbcfbc",
    l30 = "#ece3d5",
    l40 = "#f9f9ed",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#516258",
    gray = "#516258",
    dark_red = "#516258",
    red = "#81988a",
    dark_green = "#516258",
    green = "#677e70",
    dark_yellow = "#516258",
    yellow = "#677e70",
    dark_blue = "#516258",
    blue = "#5c7064",
    dark_magenta = "#516258",
    magenta = "#677e70",
    dark_cyan = "#516258",
    cyan = "#81988a",
    light_gray = "#516258",
    white = "#dbcfbc",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#f9f9ed",
        panel = "#ece3d5",
        float = "#ece3d5",
        active = "#dbcfbc",
        disabled = "#d3c3ad",
        hover = "#dbcfbc",
        selection = "#d3c3ad",
        search = "#d3c3ad",
        contrast = "#655f4b",
        negative = "#f44624",
        warn = "#b57520",
        info = "#3b94b1",
        hint = "#b57520",
        positive = "#2aa889",
        add = "#2aa889",
        delete = "#f44624",
        modify = "#3b94b1",
    },
    fg = {
        default = "#3b362a",
        subtle = "#516258",
        accent = "#016F5C",
        disabled = "#677e70",
        contrast = "#dbcfbc",
        negative = "#f44624",
        warn = "#b57520",
        info = "#3b94b1",
        hint = "#b57520",
        positive = "#2aa889",
        add = "#2aa889",
        delete = "#f44624",
        modify = "#3b94b1",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#655f4b",
        builtin = "#655f4b",
        member = "#516258",
        parameter = "#016F5C",
    },
    property = {
        default = "#FF6513",
    },
    string = {
        default = "#81988a",
        doc = "#FF6513",
        regexp = "#016F5C",
        escape = "#016F5C",
    },
    constant = {
        default = "#3b362a",
        builtin = "#2a2723",
    },
    module = {
        default = "#484436",
    },
    boolean = {
        default = "#516258",
    },
    number = {
        default = "#655f4b",
    },
    type = {
        default = "#2a2723",
        builtin = "#655f4b",
    },
    attribute = {
        default = "#FF6513",
        builtin = "#FF6513",
    },
    func = {
        default = "#016F5C",
        builtin = "#FF6513",
        method = "#FF6513",
    },
    constructor = {
        default = "#016F5C",
    },
    keyword = {
        default = "#3b362a",
        import = "#484436",
        export = "#484436",
    },
    operator = {
        default = "#3b362a",
    },
    punctuation = {
        default = "#655f4b",
        delimiter = "#655f4b",
        bracket = "#655f4b",
        special = "#655f4b",
    },
    comment = {
        default = "#5c7064",
        doc = "#5c7064",
        todo = "#2aa889",
        error = "#f44624",
        warn = "#b57520",
        info = "#3b94b1",
        hint = "#3b94b1",
    },
    markup = {
        heading = {
            h1 = "#016F5C",
            h2 = "#016F5C",
            h3 = "#016F5C",
            h4 = "#516258",
            h5 = "#516258",
            h6 = "#516258",
        },
        strong = "#016F5C",
        italic = "#016F5C",
        strikethrough = "#016F5C",
        quote = "#677e70",
        math = "#5c7064",
        link = "#FF6513",
        list = {
            default = "#516258",
            checked = "#2aa889",
            unchecked = "#516258",
        },
        code = {
            fg = "#655f4b",
            bg = "#ece3d5",
        },
    },
    tag = {
        default = "#FF6513",
        builtin = "#016F5C",
        attribute = "#516258",
        delimiter = "#677e70",
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
