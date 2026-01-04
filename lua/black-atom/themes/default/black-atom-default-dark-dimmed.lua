local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-default-dark-dimmed",
    label = "Black Atom — Dark Dimmed",
    appearance = "dark",
    status = "release",
    collection = {
        key = "default",
        label = "Default",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#151616",
    d20 = "#1e2020",
    d30 = "#272929",
    d40 = "#313333",
    m10 = "#525656",
    m20 = "#666a6a",
    m30 = "#7d8181",
    m40 = "#9b9f9f",
    l10 = "#babfbf",
    l20 = "#cdd2d2",
    l30 = "#e1e6e5",
    l40 = "#eef3f3",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#525656",
    gray = "#525656",
    dark_red = "#9b9f9f",
    red = "#9b9f9f",
    dark_green = "#7d8181",
    green = "#7d8181",
    dark_yellow = "#7d8181",
    yellow = "#7d8181",
    dark_blue = "#666a6a",
    blue = "#666a6a",
    dark_magenta = "#59a174",
    magenta = "#59a174",
    dark_cyan = "#66c3a4",
    cyan = "#66c3a4",
    light_gray = "#babfbf",
    white = "#babfbf",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#1e2020",
        panel = "#151616",
        float = "#151616",
        active = "#272929",
        disabled = "#313333",
        hover = "#272929",
        selection = "#313333",
        search = "#313333",
        contrast = "#babfbf",
        negative = "#1a2a30",
        warn = "#1b2b27",
        info = "#1d2b2b",
        hint = "#1b2b27",
        positive = "#192b2a",
        add = "#192b2a",
        delete = "#1a2a30",
        modify = "#1d2b2b",
    },
    fg = {
        default = "#e1e6e5",
        subtle = "#7d8181",
        accent = "#66c3a4",
        disabled = "#666a6a",
        contrast = "#1e2020",
        negative = "#e97292",
        warn = "#dd881b",
        info = "#00b9c3",
        hint = "#dd881b",
        positive = "#4cb86a",
        add = "#4cb86a",
        delete = "#e97292",
        modify = "#00b9c3",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#babfbf",
        builtin = "#babfbf",
        member = "#7d8181",
        parameter = "#9b9f9f",
    },
    property = {
        default = "#7d8181",
    },
    string = {
        default = "#59a174",
        doc = "#59a174",
        regexp = "#e1e6e5",
        escape = "#e1e6e5",
    },
    constant = {
        default = "#babfbf",
        builtin = "#cdd2d2",
    },
    module = {
        default = "#cdd2d2",
    },
    boolean = {
        default = "#babfbf",
    },
    number = {
        default = "#babfbf",
    },
    type = {
        default = "#66c3a4",
        builtin = "#59a174",
    },
    attribute = {
        default = "#59a174",
        builtin = "#59a174",
    },
    func = {
        default = "#e1e6e5",
        builtin = "#cdd2d2",
        method = "#cdd2d2",
    },
    constructor = {
        default = "#66c3a4",
    },
    keyword = {
        default = "#ada3e9",
        import = "#7d8acc",
        export = "#7d8acc",
    },
    operator = {
        default = "#cdd2d2",
    },
    punctuation = {
        default = "#babfbf",
        delimiter = "#babfbf",
        bracket = "#babfbf",
        special = "#babfbf",
    },
    comment = {
        default = "#7d8181",
        doc = "#7d8181",
        todo = "#4cb86a",
        error = "#e97292",
        warn = "#dd881b",
        info = "#00b9c3",
        hint = "#00b9c3",
    },
    markup = {
        heading = {
            h1 = "#66c3a4",
            h2 = "#66c3a4",
            h3 = "#66c3a4",
            h4 = "#babfbf",
            h5 = "#babfbf",
            h6 = "#babfbf",
        },
        strong = "#66c3a4",
        italic = "#66c3a4",
        strikethrough = "#9b9f9f",
        quote = "#7d8181",
        math = "#7d8181",
        link = "#59a174",
        list = {
            default = "#9b9f9f",
            checked = "#4cb86a",
            unchecked = "#9b9f9f",
        },
        code = {
            fg = "#babfbf",
            bg = "#151616",
        },
    },
    tag = {
        default = "#66c3a4",
        builtin = "#59a174",
        attribute = "#9b9f9f",
        delimiter = "#9b9f9f",
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
