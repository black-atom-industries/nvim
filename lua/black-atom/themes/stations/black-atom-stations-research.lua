local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-stations-research",
    label = "Black Atom — STA ∷ Research",
    collection = {
        key = "stations",
        label = "Stations",
    },
    appearance = "light",
    icon = " 󱃪 ",
    status = "release",
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#1e2229",
    d20 = "#2b3b33",
    d30 = "#384b42",
    d40 = "#425953",
    m10 = "#51796d",
    m20 = "#5b8972",
    m30 = "#75a490",
    m40 = "#95b8ac",
    l10 = "#d5dcd9",
    l20 = "#e2e8e5",
    l30 = "#f0f2f1",
    l40 = "#f7faf9",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#384b42",
    gray = "#5b8972",
    dark_red = "#e06c8c",
    red = "#f472a0",
    dark_green = "#4a9a4a",
    green = "#53aa53",
    dark_yellow = "#f2a100",
    yellow = "#66bd0f",
    dark_blue = "#5b8972",
    blue = "#51796d",
    dark_magenta = "#887bd3",
    magenta = "#998ed9",
    dark_cyan = "#3fa569",
    cyan = "#40bf75",
    light_gray = "#95b8ac",
    white = "#f0f2f1",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#f0f2f1",
        panel = "#e2e8e5",
        float = "#e2e8e5",
        active = "#f7faf9",
        disabled = "#d5dcd9",
        hover = "#f7faf9",
        selection = "#f7faf9",
        search = "#f7faf9",
        contrast = "#2b3b33",
        negative = "#f472a0",
        warn = "#66bd0f",
        info = "#51796d",
        hint = "#f2a100",
        positive = "#53aa53",
        add = "#53aa53",
        delete = "#f472a0",
        modify = "#51796d",
    },
    fg = {
        default = "#2b3b33",
        subtle = "#425953",
        accent = "#66bd0f",
        disabled = "#5b8972",
        contrast = "#f0f2f1",
        negative = "#f472a0",
        warn = "#66bd0f",
        info = "#51796d",
        hint = "#f2a100",
        positive = "#53aa53",
        add = "#53aa53",
        delete = "#f472a0",
        modify = "#51796d",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#51796d",
        builtin = "#384b42",
        member = "#51796d",
        parameter = "#f2a100",
    },
    property = {
        default = "#51796d",
    },
    string = {
        default = "#53aa53",
        doc = "#53aa53",
        regexp = "#f472a0",
        escape = "#f472a0",
    },
    constant = {
        default = "#5b8972",
        builtin = "#e06c8c",
    },
    module = {
        default = "#5b8972",
    },
    boolean = {
        default = "#4a9a4a",
    },
    number = {
        default = "#4a9a4a",
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
        default = "#5b8972",
        delimiter = "#95b8ac",
        bracket = "#5b8972",
        special = "#5b8972",
    },
    comment = {
        default = "#75a490",
        doc = "#4a9a4a",
        todo = "#53aa53",
        error = "#f472a0",
        warn = "#66bd0f",
        info = "#51796d",
        hint = "#f2a100",
    },
    markup = {
        heading = {
            h1 = "#66bd0f",
            h2 = "#66bd0f",
            h3 = "#66bd0f",
            h4 = "#5b8972",
            h5 = "#5b8972",
            h6 = "#5b8972",
        },
        strong = "#66bd0f",
        italic = "#66bd0f",
        strikethrough = "#66bd0f",
        quote = "#53aa53",
        math = "#4a9a4a",
        link = "#53aa53",
        list = {
            default = "#5b8972",
            checked = "#53aa53",
            unchecked = "#5b8972",
        },
        code = {
            fg = "#5b8972",
            bg = "#e2e8e5",
        },
    },
    tag = {
        default = "#66bd0f",
        builtin = "#f2a100",
        attribute = "#51796d",
        delimiter = "#4a9a4a",
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
