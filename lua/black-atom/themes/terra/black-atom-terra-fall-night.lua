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
    d10 = "#0f0e0e",
    d20 = "#1a1818",
    d30 = "#262423",
    d40 = "#2d2926",
    m10 = "#665c54",
    m20 = "#7c6f64",
    m30 = "#928374",
    m40 = "#a89984",
    l10 = "#ae9685",
    l20 = "#b9a495",
    l30 = "#ccbeb3",
    l40 = "#d6cac2",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#262423",
    gray = "#665c54",
    dark_red = "#c0603f",
    red = "#c57054",
    dark_green = "#7a895c",
    green = "#a6bc90",
    dark_yellow = "#ef9e74",
    yellow = "#e0a66d",
    dark_blue = "#a4a0df",
    blue = "#90acd5",
    dark_magenta = "#d2acc3",
    magenta = "#c4b2d1",
    dark_cyan = "#6a9b86",
    cyan = "#7fb395",
    light_gray = "#ae9685",
    white = "#ccbeb3",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#1a1818",
        panel = "#0f0e0e",
        float = "#0f0e0e",
        active = "#262423",
        disabled = "#665c54",
        hover = "#262423",
        selection = "#2d2926",
        search = "#2d2926",
        contrast = "#ccbeb3",
        negative = "#c57054",
        warn = "#e0a66d",
        info = "#90acd5",
        hint = "#ef9e74",
        positive = "#a6bc90",
        add = "#a6bc90",
        delete = "#c57054",
        modify = "#90acd5",
    },
    fg = {
        default = "#ccbeb3",
        subtle = "#ae9685",
        accent = "#e0a66d",
        disabled = "#928374",
        contrast = "#1a1818",
        negative = "#c57054",
        warn = "#e0a66d",
        info = "#90acd5",
        hint = "#ef9e74",
        positive = "#a6bc90",
        add = "#a6bc90",
        delete = "#c57054",
        modify = "#90acd5",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#90acd5",
        builtin = "#90acd5",
        member = "#a4a0df",
        parameter = "#ef9e74",
    },
    property = {
        default = "#90acd5",
    },
    string = {
        default = "#a6bc90",
        doc = "#a6bc90",
        regexp = "#ef9e74",
        escape = "#c57054",
    },
    constant = {
        default = "#ef9e74",
        builtin = "#ef9e74",
    },
    module = {
        default = "#a4a0df",
    },
    boolean = {
        default = "#ef9e74",
    },
    number = {
        default = "#ef9e74",
    },
    type = {
        default = "#7fb395",
        builtin = "#6a9b86",
    },
    attribute = {
        default = "#7fb395",
        builtin = "#7fb395",
    },
    func = {
        default = "#e0a66d",
        builtin = "#e0a66d",
        method = "#e0a66d",
    },
    constructor = {
        default = "#e0a66d",
    },
    keyword = {
        default = "#c57054",
        import = "#c4b2d1",
        export = "#c4b2d1",
    },
    operator = {
        default = "#c4b2d1",
    },
    punctuation = {
        default = "#ae9685",
        delimiter = "#a89984",
        bracket = "#ae9685",
        special = "#ae9685",
    },
    comment = {
        default = "#665c54",
        doc = "#7a895c",
        todo = "#a6bc90",
        error = "#c57054",
        warn = "#e0a66d",
        info = "#90acd5",
        hint = "#ef9e74",
    },
    markup = {
        heading = {
            h1 = "#e0a66d",
            h2 = "#e0a66d",
            h3 = "#e0a66d",
            h4 = "#ae9685",
            h5 = "#ae9685",
            h6 = "#ae9685",
        },
        strong = "#e0a66d",
        italic = "#e0a66d",
        strikethrough = "#e0a66d",
        quote = "#a6bc90",
        math = "#7a895c",
        link = "#a6bc90",
        list = {
            default = "#ae9685",
            checked = "#a6bc90",
            unchecked = "#ae9685",
        },
        code = {
            fg = "#b9a495",
            bg = "#7c6f64",
        },
    },
    tag = {
        default = "#e0a66d",
        builtin = "#e0a66d",
        attribute = "#ef9e74",
        delimiter = "#ef9e74",
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

