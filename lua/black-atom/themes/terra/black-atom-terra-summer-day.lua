local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-terra-summer-day",
    label = "Black Atom — TERRA ∷ Summer Day",
    appearance = "light",
    status = "development",
    collection = {
        key = "terra",
        label = "TERRA",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#012019",
    d20 = "#0d3025",
    d30 = "#1e4334",
    d40 = "#345644",
    m10 = "#4f6b58",
    m20 = "#6a816e",
    m30 = "#829582",
    m40 = "#9baa98",
    l10 = "#e9ddc4",
    l20 = "#f3e6d2",
    l30 = "#f9eddd",
    l40 = "#fef3e7",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#345644",
    gray = "#4f6b58",
    dark_red = "#b72200",
    red = "#d53d00",
    dark_green = "#326234",
    green = "#397949",
    dark_yellow = "#f69a22",
    yellow = "#f9b520",
    dark_blue = "#005c62",
    blue = "#007677",
    dark_magenta = "#a6344f",
    magenta = "#c04d6e",
    dark_cyan = "#0f6353",
    cyan = "#237961",
    light_gray = "#e9ddc4",
    white = "#f9eddd",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#f9eddd",
        panel = "#f3e6d2",
        float = "#f3e6d2",
        active = "#e9ddc4",
        disabled = "#829582",
        hover = "#e9ddc4",
        selection = "#fef3e7",
        search = "#fef3e7",
        contrast = "#0d3025",
        negative = "#f5ccab",
        warn = "#ffe3c0",
        info = "#d4d1b6",
        hint = "#fddebd",
        positive = "#dad0b3",
        add = "#dad0b3",
        delete = "#f5ccab",
        modify = "#d4d1b6",
    },
    fg = {
        default = "#0d3025",
        subtle = "#4f6b58",
        accent = "#f9b520",
        disabled = "#6a816e",
        contrast = "#f9eddd",
        negative = "#d53d00",
        warn = "#f9b520",
        info = "#007677",
        hint = "#f69a22",
        positive = "#397949",
        add = "#397949",
        delete = "#d53d00",
        modify = "#007677",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#007677",
        builtin = "#005c62",
        member = "#005c62",
        parameter = "#f69a22",
    },
    property = {
        default = "#005c62",
    },
    string = {
        default = "#397949",
        doc = "#397949",
        regexp = "#d53d00",
        escape = "#d53d00",
    },
    constant = {
        default = "#f69a22",
        builtin = "#f69a22",
    },
    module = {
        default = "#005c62",
    },
    boolean = {
        default = "#326234",
    },
    number = {
        default = "#326234",
    },
    type = {
        default = "#237961",
        builtin = "#0f6353",
    },
    attribute = {
        default = "#f69a22",
        builtin = "#f69a22",
    },
    func = {
        default = "#f9b520",
        builtin = "#f9b520",
        method = "#f9b520",
    },
    constructor = {
        default = "#f9b520",
    },
    keyword = {
        default = "#c04d6e",
        import = "#d53d00",
        export = "#d53d00",
    },
    operator = {
        default = "#0d3025",
    },
    punctuation = {
        default = "#4f6b58",
        delimiter = "#9baa98",
        bracket = "#4f6b58",
        special = "#4f6b58",
    },
    comment = {
        default = "#4f6b58",
        doc = "#326234",
        todo = "#397949",
        error = "#d53d00",
        warn = "#f9b520",
        info = "#007677",
        hint = "#f69a22",
    },
    markup = {
        heading = {
            h1 = "#f9b520",
            h2 = "#f9b520",
            h3 = "#f9b520",
            h4 = "#4f6b58",
            h5 = "#4f6b58",
            h6 = "#4f6b58",
        },
        strong = "#f9b520",
        italic = "#f9b520",
        strikethrough = "#f9b520",
        quote = "#397949",
        math = "#326234",
        link = "#397949",
        list = {
            default = "#4f6b58",
            checked = "#397949",
            unchecked = "#4f6b58",
        },
        code = {
            fg = "#4f6b58",
            bg = "#e9ddc4",
        },
    },
    tag = {
        default = "#f9b520",
        builtin = "#f69a22",
        attribute = "#4f6b58",
        delimiter = "#345644",
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
