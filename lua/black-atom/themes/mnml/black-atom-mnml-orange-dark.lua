local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-mnml-orange-dark",
    label = "Black Atom — MNM ∷ Orange Dark",
    appearance = "dark",
    status = "development",
    collection = {
        key = "mnml",
        label = "MNM",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#171a1c",
    d20 = "#1b1f21",
    d30 = "#24292c",
    d40 = "#363e42",
    m10 = "#67727f",
    m20 = "#74848c",
    m30 = "#809098",
    m40 = "#9da8af",
    l10 = "#b3c4cd",
    l20 = "#c1cfd6",
    l30 = "#d1dce1",
    l40 = "#dee8ed",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#67727f",
    gray = "#67727f",
    dark_red = "#67727f",
    red = "#9da8af",
    dark_green = "#67727f",
    green = "#809098",
    dark_yellow = "#ff6833",
    yellow = "#ff8e33",
    dark_blue = "#67727f",
    blue = "#74848c",
    dark_magenta = "#67727f",
    magenta = "#809098",
    dark_cyan = "#67727f",
    cyan = "#9da8af",
    light_gray = "#67727f",
    white = "#c1cfd6",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#171a1c",
        panel = "#1b1f21",
        float = "#1b1f21",
        active = "#24292c",
        disabled = "#363e42",
        hover = "#24292c",
        selection = "#363e42",
        search = "#363e42",
        contrast = "#b3c4cd",
        negative = "#212b3c",
        warn = "#252d3c",
        info = "#1d2b34",
        hint = "#252d3c",
        positive = "#192d34",
        add = "#192d34",
        delete = "#212b3c",
        modify = "#1d2b34",
    },
    fg = {
        default = "#d1dce1",
        subtle = "#9da8af",
        accent = "#ff8e33",
        disabled = "#74848c",
        contrast = "#1b1f21",
        negative = "#ff6833",
        warn = "#ff8e33",
        info = "#3498db",
        hint = "#ff8e33",
        positive = "#27ae60",
        add = "#27ae60",
        delete = "#ff6833",
        modify = "#3498db",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#c1cfd6",
        builtin = "#b3c4cd",
        member = "#ff6833",
        parameter = "#ff6833",
    },
    property = {
        default = "#ff6833",
    },
    string = {
        default = "#c1cfd6",
        doc = "#b3c4cd",
        regexp = "#dee8ed",
        escape = "#dee8ed",
    },
    constant = {
        default = "#b3c4cd",
        builtin = "#c1cfd6",
    },
    module = {
        default = "#c1cfd6",
    },
    boolean = {
        default = "#9da8af",
    },
    number = {
        default = "#b3c4cd",
    },
    type = {
        default = "#dee8ed",
        builtin = "#dee8ed",
    },
    attribute = {
        default = "#ff6833",
        builtin = "#ff6833",
    },
    func = {
        default = "#ff8e33",
        builtin = "#ff6833",
        method = "#ff6833",
    },
    constructor = {
        default = "#ff8e33",
    },
    keyword = {
        default = "#d1dce1",
        import = "#dee8ed",
        export = "#dee8ed",
    },
    operator = {
        default = "#d1dce1",
    },
    punctuation = {
        default = "#b3c4cd",
        delimiter = "#b3c4cd",
        bracket = "#b3c4cd",
        special = "#b3c4cd",
    },
    comment = {
        default = "#809098",
        doc = "#809098",
        todo = "#27ae60",
        error = "#ff6833",
        warn = "#ff8e33",
        info = "#3498db",
        hint = "#3498db",
    },
    markup = {
        heading = {
            h1 = "#ff8e33",
            h2 = "#ff8e33",
            h3 = "#ff8e33",
            h4 = "#9da8af",
            h5 = "#9da8af",
            h6 = "#9da8af",
        },
        strong = "#ff8e33",
        italic = "#ff8e33",
        strikethrough = "#ff8e33",
        quote = "#74848c",
        math = "#74848c",
        link = "#ff6833",
        list = {
            default = "#9da8af",
            checked = "#27ae60",
            unchecked = "#9da8af",
        },
        code = {
            fg = "#b3c4cd",
            bg = "#1b1f21",
        },
    },
    tag = {
        default = "#ff8e33",
        builtin = "#ff6833",
        attribute = "#809098",
        delimiter = "#b3c4cd",
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
