local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-default-dark",
    label = "Black Atom — Dark",
    appearance = "dark",
    status = "release",
    collection = {
        key = "default",
        label = "Default",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#050606",
    d20 = "#0c0e0e",
    d30 = "#151616",
    d40 = "#1e2020",
    m10 = "#535656",
    m20 = "#676969",
    m30 = "#7e8181",
    m40 = "#9c9f9f",
    l10 = "#bcbebe",
    l20 = "#cfd1d1",
    l30 = "#e2e5e5",
    l40 = "#f0f2f2",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#1e2020",
    gray = "#535656",
    dark_red = "#9c9f9f",
    red = "#9c9f9f",
    dark_green = "#7e8181",
    green = "#7e8181",
    dark_yellow = "#7e8181",
    yellow = "#7e8181",
    dark_blue = "#676969",
    blue = "#676969",
    dark_magenta = "#59a174",
    magenta = "#59a174",
    dark_cyan = "#66c3a4",
    cyan = "#66c3a4",
    light_gray = "#cfd1d1",
    white = "#e2e5e5",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#0c0e0e",
        panel = "#050606",
        float = "#050606",
        active = "#151616",
        disabled = "#1e2020",
        hover = "#151616",
        selection = "#1e2020",
        search = "#1e2020",
        contrast = "#bcbebe",
        negative = "#0a1a20",
        warn = "#0a1b17",
        info = "#0c1b1b",
        hint = "#0a1b17",
        positive = "#091b1a",
        add = "#091b1a",
        delete = "#0a1a20",
        modify = "#0c1b1b",
    },
    fg = {
        default = "#e2e5e5",
        subtle = "#7e8181",
        accent = "#66c3a4",
        disabled = "#676969",
        contrast = "#0c0e0e",
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
        default = "#bcbebe",
        builtin = "#bcbebe",
        member = "#7e8181",
        parameter = "#9c9f9f",
    },
    property = {
        default = "#7e8181",
    },
    string = {
        default = "#59a174",
        doc = "#59a174",
        regexp = "#e2e5e5",
        escape = "#e2e5e5",
    },
    constant = {
        default = "#bcbebe",
        builtin = "#cfd1d1",
    },
    module = {
        default = "#cfd1d1",
    },
    boolean = {
        default = "#bcbebe",
    },
    number = {
        default = "#bcbebe",
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
        default = "#e2e5e5",
        builtin = "#cfd1d1",
        method = "#cfd1d1",
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
        default = "#cfd1d1",
    },
    punctuation = {
        default = "#bcbebe",
        delimiter = "#bcbebe",
        bracket = "#bcbebe",
        special = "#bcbebe",
    },
    comment = {
        default = "#7e8181",
        doc = "#7e8181",
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
            h4 = "#bcbebe",
            h5 = "#bcbebe",
            h6 = "#bcbebe",
        },
        strong = "#66c3a4",
        italic = "#66c3a4",
        strikethrough = "#9c9f9f",
        quote = "#7e8181",
        math = "#7e8181",
        link = "#59a174",
        list = {
            default = "#9c9f9f",
            checked = "#4cb86a",
            unchecked = "#9c9f9f",
        },
        code = {
            fg = "#bcbebe",
            bg = "#050606",
        },
    },
    tag = {
        default = "#66c3a4",
        builtin = "#59a174",
        attribute = "#9c9f9f",
        delimiter = "#9c9f9f",
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
