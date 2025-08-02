local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-stations-medical",
    label = "Black Atom — STA ∷ Medical",
    appearance = "light",
    status = "release",
    collection = {
        key = "stations",
        label = "Stations",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#22272f",
    d20 = "#2b3b33",
    d30 = "#384b42",
    d40 = "#425953",
    m10 = "#476a5f",
    m20 = "#517a65",
    m30 = "#669a84",
    m40 = "#77a494",
    l10 = "#c6d1cc",
    l20 = "#d4dcd8",
    l30 = "#e1e7e4",
    l40 = "#eef4f2",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#384b42",
    gray = "#517a65",
    dark_red = "#e06c8c",
    red = "#f472a0",
    dark_green = "#357c35",
    green = "#3c8e3c",
    dark_yellow = "#f2a100",
    yellow = "#66bd0f",
    dark_blue = "#517a65",
    blue = "#476a5f",
    dark_magenta = "#7768cd",
    magenta = "#998ed9",
    dark_cyan = "#3fa569",
    cyan = "#40bf75",
    light_gray = "#77a494",
    white = "#e1e7e4",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#e1e7e4",
        panel = "#d4dcd8",
        float = "#d4dcd8",
        active = "#eef4f2",
        disabled = "#c6d1cc",
        hover = "#eef4f2",
        selection = "#eef4f2",
        search = "#eef4f2",
        contrast = "#2b3b33",
        negative = "#f472a0",
        warn = "#66bd0f",
        info = "#476a5f",
        hint = "#f2a100",
        positive = "#3c8e3c",
        add = "#3c8e3c",
        delete = "#f472a0",
        modify = "#476a5f",
    },
    fg = {
        default = "#2b3b33",
        subtle = "#425953",
        accent = "#66bd0f",
        disabled = "#517a65",
        contrast = "#e1e7e4",
        negative = "#f472a0",
        warn = "#66bd0f",
        info = "#476a5f",
        hint = "#f2a100",
        positive = "#3c8e3c",
        add = "#3c8e3c",
        delete = "#f472a0",
        modify = "#476a5f",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#476a5f",
        builtin = "#384b42",
        member = "#476a5f",
        parameter = "#f2a100",
    },
    property = {
        default = "#476a5f",
    },
    string = {
        default = "#3c8e3c",
        doc = "#3c8e3c",
        regexp = "#f472a0",
        escape = "#f472a0",
    },
    constant = {
        default = "#517a65",
        builtin = "#e06c8c",
    },
    module = {
        default = "#517a65",
    },
    boolean = {
        default = "#357c35",
    },
    number = {
        default = "#357c35",
    },
    type = {
        default = "#40bf75",
        builtin = "#3fa569",
    },
    attribute = {
        default = "#f2a100",
        builtin = "#f2a100",
    },
    func = {
        default = "#66bd0f",
        builtin = "#66bd0f",
        method = "#66bd0f",
    },
    constructor = {
        default = "#66bd0f",
    },
    keyword = {
        default = "#998ed9",
        import = "#f472a0",
        export = "#f472a0",
    },
    operator = {
        default = "#998ed9",
    },
    punctuation = {
        default = "#517a65",
        delimiter = "#77a494",
        bracket = "#517a65",
        special = "#517a65",
    },
    comment = {
        default = "#669a84",
        doc = "#357c35",
        todo = "#3c8e3c",
        error = "#f472a0",
        warn = "#66bd0f",
        info = "#476a5f",
        hint = "#f2a100",
    },
    markup = {
        heading = {
            h1 = "#66bd0f",
            h2 = "#66bd0f",
            h3 = "#66bd0f",
            h4 = "#517a65",
            h5 = "#517a65",
            h6 = "#517a65",
        },
        strong = "#66bd0f",
        italic = "#66bd0f",
        strikethrough = "#66bd0f",
        quote = "#3c8e3c",
        math = "#357c35",
        link = "#3c8e3c",
        list = {
            default = "#517a65",
            checked = "#3c8e3c",
            unchecked = "#517a65",
        },
        code = {
            fg = "#517a65",
            bg = "#d4dcd8",
        },
    },
    tag = {
        default = "#66bd0f",
        builtin = "#f2a100",
        attribute = "#476a5f",
        delimiter = "#357c35",
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
