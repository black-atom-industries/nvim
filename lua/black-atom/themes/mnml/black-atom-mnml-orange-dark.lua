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
    d10 = "#161c1e",
    d20 = "#242a2c",
    d30 = "#2d3436",
    d40 = "#383e41",
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
    black = "#383e41",
    gray = "#585f61",
    dark_red = "#9ea6a9",
    red = "#9ea6a9",
    dark_green = "#868e90",
    green = "#868e90",
    dark_yellow = "#ff8933",
    yellow = "#ff9820",
    dark_blue = "#9ea6a9",
    blue = "#9ea6a9",
    dark_magenta = "#868e90",
    magenta = "#868e90",
    dark_cyan = "#9ea6a9",
    cyan = "#9ea6a9",
    light_gray = "#9ea6a9",
    white = "#9ea6a9",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#242a2c",
        panel = "#161c1e",
        float = "#161c1e",
        active = "#2d3436",
        disabled = "#383e41",
        hover = "#2d3436",
        selection = "#383e41",
        search = "#383e41",
        contrast = "#bdc6c9",
        negative = "#174338",
        warn = "#1a453e",
        info = "#193947",
        hint = "#1a453e",
        positive = "#133c3f",
        add = "#133c3f",
        delete = "#174338",
        modify = "#193947",
    },
    fg = {
        default = "#d7e0e3",
        subtle = "#868e90",
        accent = "#ff9820",
        disabled = "#747c7e",
        contrast = "#242a2c",
        negative = "#ff7a46",
        warn = "#ff9820",
        info = "#3a93e6",
        hint = "#ff9820",
        positive = "#3aa85b",
        add = "#3aa85b",
        delete = "#ff7a46",
        modify = "#3a93e6",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#cad3d5",
        builtin = "#bdc6c9",
        member = "#ff8933",
        parameter = "#ff8933",
    },
    property = {
        default = "#ff8933",
    },
    string = {
        default = "#cad3d5",
        doc = "#bdc6c9",
        regexp = "#e4edf0",
        escape = "#e4edf0",
    },
    constant = {
        default = "#bdc6c9",
        builtin = "#cad3d5",
    },
    module = {
        default = "#cad3d5",
    },
    boolean = {
        default = "#9ea6a9",
    },
    number = {
        default = "#bdc6c9",
    },
    type = {
        default = "#e4edf0",
        builtin = "#e4edf0",
    },
    attribute = {
        default = "#ff8933",
        builtin = "#ff8933",
    },
    func = {
        default = "#ff9820",
        builtin = "#ff8933",
        method = "#ff8933",
    },
    constructor = {
        default = "#ff9820",
    },
    keyword = {
        default = "#ff8933",
        import = "#ff7a46",
        export = "#ff7a46",
    },
    operator = {
        default = "#d7e0e3",
    },
    punctuation = {
        default = "#bdc6c9",
        delimiter = "#bdc6c9",
        bracket = "#bdc6c9",
        special = "#bdc6c9",
    },
    comment = {
        default = "#868e90",
        doc = "#868e90",
        todo = "#3aa85b",
        error = "#ff7a46",
        warn = "#ff9820",
        info = "#3a93e6",
        hint = "#3a93e6",
    },
    markup = {
        heading = {
            h1 = "#ff9820",
            h2 = "#ff9820",
            h3 = "#ff9820",
            h4 = "#9ea6a9",
            h5 = "#9ea6a9",
            h6 = "#9ea6a9",
        },
        strong = "#ff9820",
        italic = "#ff9820",
        strikethrough = "#ff9820",
        quote = "#747c7e",
        math = "#747c7e",
        link = "#ff8933",
        list = {
            default = "#9ea6a9",
            checked = "#3aa85b",
            unchecked = "#9ea6a9",
        },
        code = {
            fg = "#bdc6c9",
            bg = "#161c1e",
        },
    },
    tag = {
        default = "#ff9820",
        builtin = "#ff8933",
        attribute = "#868e90",
        delimiter = "#bdc6c9",
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
