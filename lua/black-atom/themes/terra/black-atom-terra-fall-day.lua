local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-terra-fall-day",
    label = "Black Atom — TER ∷ Fall Day",
    appearance = "light",
    status = "development",
    collection = {
        key = "terra",
        label = "TERRA",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#4b3b30",
    d20 = "#584538",
    d30 = "#60534c",
    d40 = "#6e5c52",
    m10 = "#7e6350",
    m20 = "#8d6c58",
    m30 = "#a0745d",
    m40 = "#b28167",
    l10 = "#ebded5",
    l20 = "#f0e4dc",
    l30 = "#f3eeea",
    l40 = "#fdfaf8",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#60534c",
    gray = "#8d6c58",
    dark_red = "#f2743d",
    red = "#e5764d",
    dark_green = "#8f6855",
    green = "#b6764a",
    dark_yellow = "#c26b22",
    yellow = "#d48312",
    dark_blue = "#885644",
    blue = "#a66b5a",
    dark_magenta = "#a0725d",
    magenta = "#b58464",
    dark_cyan = "#e6804c",
    cyan = "#f19258",
    light_gray = "#ebded5",
    white = "#f3eeea",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#f3eeea",
        panel = "#f0e4dc",
        float = "#f0e4dc",
        active = "#ebded5",
        disabled = "#a0745d",
        hover = "#ebded5",
        selection = "#fdfaf8",
        search = "#fdfaf8",
        contrast = "#584538",
        negative = "#e5764d",
        warn = "#d48312",
        info = "#a66b5a",
        hint = "#c26b22",
        positive = "#b6764a",
        add = "#b6764a",
        delete = "#e5764d",
        modify = "#a66b5a",
    },
    fg = {
        default = "#584538",
        subtle = "#7e6350",
        accent = "#d48312",
        disabled = "#8d6c58",
        contrast = "#f3eeea",
        negative = "#e5764d",
        warn = "#d48312",
        info = "#a66b5a",
        hint = "#c26b22",
        positive = "#b6764a",
        add = "#b6764a",
        delete = "#e5764d",
        modify = "#a66b5a",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#a66b5a",
        builtin = "#885644",
        member = "#885644",
        parameter = "#c26b22",
    },
    property = {
        default = "#885644",
    },
    string = {
        default = "#b6764a",
        doc = "#b6764a",
        regexp = "#e5764d",
        escape = "#e5764d",
    },
    constant = {
        default = "#c26b22",
        builtin = "#c26b22",
    },
    module = {
        default = "#885644",
    },
    boolean = {
        default = "#8f6855",
    },
    number = {
        default = "#8f6855",
    },
    type = {
        default = "#f19258",
        builtin = "#e6804c",
    },
    attribute = {
        default = "#c26b22",
        builtin = "#c26b22",
    },
    func = {
        default = "#d48312",
        builtin = "#d48312",
        method = "#d48312",
    },
    constructor = {
        default = "#d48312",
    },
    keyword = {
        default = "#e5764d",
        import = "#8f6855",
        export = "#f2743d",
    },
    operator = {
        default = "#584538",
    },
    punctuation = {
        default = "#8d6c58",
        delimiter = "#b28167",
        bracket = "#8d6c58",
        special = "#8d6c58",
    },
    comment = {
        default = "#8d6c58",
        doc = "#8f6855",
        todo = "#b6764a",
        error = "#e5764d",
        warn = "#d48312",
        info = "#a66b5a",
        hint = "#c26b22",
    },
    markup = {
        heading = {
            h1 = "#d48312",
            h2 = "#d48312",
            h3 = "#d48312",
            h4 = "#8d6c58",
            h5 = "#8d6c58",
            h6 = "#8d6c58",
        },
        strong = "#d48312",
        italic = "#d48312",
        strikethrough = "#d48312",
        quote = "#b6764a",
        math = "#8f6855",
        link = "#b6764a",
        list = {
            default = "#8d6c58",
            checked = "#b6764a",
            unchecked = "#8d6c58",
        },
        code = {
            fg = "#7e6350",
            bg = "#ebded5",
        },
    },
    tag = {
        default = "#d48312",
        builtin = "#c26b22",
        attribute = "#7e6350",
        delimiter = "#6e5c52",
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
