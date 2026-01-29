local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-stations-research",
    label = "Black Atom — STA ∷ Research",
    appearance = "light",
    status = "release",
    collection = {
        key = "stations",
        label = "Stations",
    },
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
    l10 = "#e3e8e6",
    l20 = "#edf1ef",
    l30 = "#f8f9f9",
    l40 = "#ffffff",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#425953",
    gray = "#51796d",
    dark_red = "#e06c8c",
    red = "#f472a0",
    dark_green = "#4a9a4a",
    green = "#53aa53",
    dark_yellow = "#f2a100",
    yellow = "#66bd10",
    dark_blue = "#5b8972",
    blue = "#51796d",
    dark_magenta = "#887bd3",
    magenta = "#998ed9",
    dark_cyan = "#3fa569",
    cyan = "#40bf75",
    light_gray = "#e3e8e6",
    white = "#f8f9f9",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#f8f9f9",
        panel = "#edf1ef",
        float = "#edf1ef",
        active = "#e3e8e6",
        disabled = "#95b8ac",
        hover = "#e3e8e6",
        selection = "#e3e8e6",
        search = "#e3e8e6",
        contrast = "#2b3b33",
        negative = "#cae8fc",
        warn = "#beefe5",
        info = "#ccd8d7",
        hint = "#cef1e1",
        positive = "#c4e7e1",
        add = "#c4e7e1",
        delete = "#cae8fc",
        modify = "#ccd8d7",
    },
    fg = {
        default = "#2b3b33",
        subtle = "#75a490",
        accent = "#66bd10",
        disabled = "#95b8ac",
        contrast = "#f8f9f9",
        negative = "#f472a0",
        warn = "#66bd10",
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
        default = "#51796d",
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
        default = "#66bd10",
        builtin = "#66bd10",
        method = "#66bd10",
    },
    constructor = {
        default = "#66bd10",
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
        default = "#51796d",
        delimiter = "#95b8ac",
        bracket = "#51796d",
        special = "#51796d",
    },
    comment = {
        default = "#75a490",
        doc = "#4a9a4a",
        todo = "#53aa53",
        error = "#f472a0",
        warn = "#66bd10",
        info = "#51796d",
        hint = "#f2a100",
    },
    markup = {
        heading = {
            h1 = "#66bd10",
            h2 = "#66bd10",
            h3 = "#66bd10",
            h4 = "#51796d",
            h5 = "#51796d",
            h6 = "#51796d",
        },
        strong = "#66bd10",
        italic = "#66bd10",
        strikethrough = "#66bd10",
        quote = "#53aa53",
        math = "#4a9a4a",
        link = "#53aa53",
        list = {
            default = "#51796d",
            checked = "#53aa53",
            unchecked = "#51796d",
        },
        code = {
            fg = "#5b8972",
            bg = "#edf1ef",
        },
    },
    tag = {
        default = "#66bd10",
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
