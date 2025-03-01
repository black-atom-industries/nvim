local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-stations-research",
    label = "Black Atom - Research Station",
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
    "#1e2229",
    "#2b3b33",
    "#384b42",
    "#425953",
    "#51796d",
    "#5b8972",
    "#75a490",
    "#95b8ac",
    "#c4d3cc",
    "#d2ded8",
    "#e3ebe7",
    "#eef4f2",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#384b42",
    gray = "#5b8972",
    dark_red = "#db577c",
    red = "#ec7aa2",
    dark_green = "#4a9a4a",
    green = "#53aa53",
    dark_yellow = "#e69d0c",
    yellow = "#66ad1f",
    dark_blue = "#5b8972",
    blue = "#51796d",
    dark_magenta = "#887bd3",
    magenta = "#998ed9",
    dark_cyan = "#459f55",
    cyan = "#4db15e",
    light_gray = "#95b8ac",
    white = "#e3ebe7",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#e3ebe7",
        panel = "#d2ded8",
        float = "#d2ded8",
        active = "#eef4f2",
        disabled = "#c4d3cc",
        hover = "#eef4f2",
        selection = "#eef4f2",
        search = "#eef4f2",
        contrast = "#2b3b33",
        negative = "#ec7aa2",
        warn = "#66ad1f",
        info = "#51796d",
        hint = "#e69d0c",
        positive = "#53aa53",
        add = "#53aa53",
        delete = "#ec7aa2",
        modify = "#51796d",
    },
    fg = {
        default = "#2b3b33",
        subtle = "#425953",
        accent = "#66ad1f",
        disabled = "#5b8972",
        contrast = "#e3ebe7",
        negative = "#ec7aa2",
        warn = "#66ad1f",
        info = "#51796d",
        hint = "#e69d0c",
        positive = "#53aa53",
        add = "#53aa53",
        delete = "#ec7aa2",
        modify = "#51796d",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#51796d",
        builtin = "#384b42",
        member = "#51796d",
        parameter = "#e69d0c",
    },
    property = {
        default = "#51796d",
    },
    string = {
        default = "#53aa53",
        doc = "#53aa53",
        regexp = "#ec7aa2",
        escape = "#ec7aa2",
    },
    constant = {
        default = "#5b8972",
        builtin = "#db577c",
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
        default = "#4db15e",
        builtin = "#459f55",
    },
    attribute = {
        default = "#e69d0c",
        builtin = "#e69d0c",
    },
    func = {
        default = "#66ad1f",
        builtin = "#66ad1f",
        method = "#66ad1f",
    },
    constructor = {
        default = "#66ad1f",
    },
    keyword = {
        default = "#998ed9",
        import = "#ec7aa2",
        export = "#ec7aa2",
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
        error = "#ec7aa2",
        warn = "#66ad1f",
        info = "#51796d",
        hint = "#e69d0c",
    },
    markup = {
        heading = {
            h1 = "#66ad1f",
            h2 = "#66ad1f",
            h3 = "#66ad1f",
            h4 = "#5b8972",
            h5 = "#5b8972",
            h6 = "#5b8972",
        },
        strong = "#66ad1f",
        italic = "#66ad1f",
        strikethrough = "#66ad1f",
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
            bg = "#d2ded8",
        },
    },
    tag = {
        default = "#66ad1f",
        builtin = "#e69d0c",
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
