local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-mnml-orange-light",
    label = "Black Atom — MNM ∷ Orange Light",
    appearance = "light",
    status = "development",
    collection = {
        key = "mnml",
        label = "MNM",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#111719",
    d20 = "#242a2c",
    d30 = "#383e41",
    d40 = "#474e51",
    m10 = "#585f61",
    m20 = "#747c7e",
    m30 = "#868e90",
    m40 = "#9ea6a9",
    l10 = "#bdc6c9",
    l20 = "#cad3d5",
    l30 = "#d7e0e3",
    l40 = "#e4edf0",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#585f61",
    gray = "#585f61",
    dark_red = "#9ea6a9",
    red = "#9ea6a9",
    dark_green = "#868e90",
    green = "#868e90",
    dark_yellow = "#e76700",
    yellow = "#ee7c00",
    dark_blue = "#747c7e",
    blue = "#747c7e",
    dark_magenta = "#868e90",
    magenta = "#868e90",
    dark_cyan = "#9ea6a9",
    cyan = "#9ea6a9",
    light_gray = "#bdc6c9",
    white = "#bdc6c9",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#d7e0e3",
        panel = "#cad3d5",
        float = "#cad3d5",
        active = "#e4edf0",
        disabled = "#bdc6c9",
        hover = "#cad3d5",
        selection = "#bdc6c9",
        search = "#bdc6c9",
        contrast = "#474e51",
        negative = "#c3e5e4",
        warn = "#c6e7e7",
        info = "#c8e2ed",
        hint = "#c6e7e7",
        positive = "#c6e3e8",
        add = "#c6e3e8",
        delete = "#c3e5e4",
        modify = "#c8e2ed",
    },
    fg = {
        default = "#242a2c",
        subtle = "#585f61",
        accent = "#ee7c00",
        disabled = "#868e90",
        contrast = "#cad3d5",
        negative = "#e76700",
        warn = "#ee7c00",
        info = "#3a93e6",
        hint = "#ee7c00",
        positive = "#3aa85b",
        add = "#3aa85b",
        delete = "#e76700",
        modify = "#3a93e6",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#474e51",
        builtin = "#474e51",
        member = "#585f61",
        parameter = "#ee7c00",
    },
    property = {
        default = "#585f61",
    },
    string = {
        default = "#747c7e",
        doc = "#e76700",
        regexp = "#ee7c00",
        escape = "#ee7c00",
    },
    constant = {
        default = "#242a2c",
        builtin = "#111719",
    },
    module = {
        default = "#383e41",
    },
    boolean = {
        default = "#585f61",
    },
    number = {
        default = "#474e51",
    },
    type = {
        default = "#111719",
        builtin = "#474e51",
    },
    attribute = {
        default = "#e76700",
        builtin = "#e76700",
    },
    func = {
        default = "#ee7c00",
        builtin = "#e76700",
        method = "#e76700",
    },
    constructor = {
        default = "#ee7c00",
    },
    keyword = {
        default = "#e76700",
        import = "#dd5316",
        export = "#dd5316",
    },
    operator = {
        default = "#242a2c",
    },
    punctuation = {
        default = "#474e51",
        delimiter = "#474e51",
        bracket = "#474e51",
        special = "#474e51",
    },
    comment = {
        default = "#747c7e",
        doc = "#747c7e",
        todo = "#3aa85b",
        error = "#e76700",
        warn = "#ee7c00",
        info = "#3a93e6",
        hint = "#3a93e6",
    },
    markup = {
        heading = {
            h1 = "#ee7c00",
            h2 = "#ee7c00",
            h3 = "#ee7c00",
            h4 = "#585f61",
            h5 = "#585f61",
            h6 = "#585f61",
        },
        strong = "#ee7c00",
        italic = "#ee7c00",
        strikethrough = "#ee7c00",
        quote = "#868e90",
        math = "#747c7e",
        link = "#e76700",
        list = {
            default = "#585f61",
            checked = "#3aa85b",
            unchecked = "#585f61",
        },
        code = {
            fg = "#474e51",
            bg = "#cad3d5",
        },
    },
    tag = {
        default = "#e76700",
        builtin = "#ee7c00",
        attribute = "#585f61",
        delimiter = "#868e90",
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
