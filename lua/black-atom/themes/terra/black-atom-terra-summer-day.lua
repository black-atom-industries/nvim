local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-terra-summer-day",
    label = "Black Atom — TER ∷ Summer Day",
    appearance = "light",
    status = "development",
    collection = {
        key = "terra",
        label = "TERRA",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#29323d",
    d20 = "#343e4d",
    d30 = "#3e4b5c",
    d40 = "#47576c",
    m10 = "#506d95",
    m20 = "#5979a6",
    m30 = "#7b94b8",
    m40 = "#8BA1C1",
    l10 = "#b7beca",
    l20 = "#c6cbd5",
    l30 = "#d1d6e1",
    l40 = "#e0e4eb",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#3e4b5c",
    gray = "#5979a6",
    dark_red = "#ca6d4c",
    red = "#dd7e5d",
    dark_green = "#729e60",
    green = "#72ae6a",
    dark_yellow = "#e3913d",
    yellow = "#dca958",
    dark_blue = "#5a7eb3",
    blue = "#6994c7",
    dark_magenta = "#a67a85",
    magenta = "#b8939f",
    dark_cyan = "#619f80",
    cyan = "#7bb7a4",
    light_gray = "#b7beca",
    white = "#d1d6e1",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#d1d6e1",
        panel = "#c6cbd5",
        float = "#c6cbd5",
        active = "#b7beca",
        disabled = "#7b94b8",
        hover = "#b7beca",
        selection = "#e0e4eb",
        search = "#e0e4eb",
        contrast = "#343e4d",
        negative = "#d3c9cd",
        warn = "#d3cfcc",
        info = "#c1ccdd",
        hint = "#d4ccc8",
        positive = "#c3d0cf",
        add = "#c3d0cf",
        delete = "#d3c9cd",
        modify = "#c1ccdd",
    },
    fg = {
        default = "#343e4d",
        subtle = "#506d95",
        accent = "#dca958",
        disabled = "#5979a6",
        contrast = "#d1d6e1",
        negative = "#dd7e5d",
        warn = "#dca958",
        info = "#6994c7",
        hint = "#e3913d",
        positive = "#72ae6a",
        add = "#72ae6a",
        delete = "#dd7e5d",
        modify = "#6994c7",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#6994c7",
        builtin = "#5a7eb3",
        member = "#5a7eb3",
        parameter = "#e3913d",
    },
    property = {
        default = "#5a7eb3",
    },
    string = {
        default = "#72ae6a",
        doc = "#72ae6a",
        regexp = "#dd7e5d",
        escape = "#dd7e5d",
    },
    constant = {
        default = "#e3913d",
        builtin = "#e3913d",
    },
    module = {
        default = "#5a7eb3",
    },
    boolean = {
        default = "#729e60",
    },
    number = {
        default = "#729e60",
    },
    type = {
        default = "#7bb7a4",
        builtin = "#619f80",
    },
    attribute = {
        default = "#e3913d",
        builtin = "#e3913d",
    },
    func = {
        default = "#dca958",
        builtin = "#dca958",
        method = "#dca958",
    },
    constructor = {
        default = "#dca958",
    },
    keyword = {
        default = "#b8939f",
        import = "#dd7e5d",
        export = "#dd7e5d",
    },
    operator = {
        default = "#343e4d",
    },
    punctuation = {
        default = "#5979a6",
        delimiter = "#8BA1C1",
        bracket = "#5979a6",
        special = "#5979a6",
    },
    comment = {
        default = "#5979a6",
        doc = "#729e60",
        todo = "#72ae6a",
        error = "#dd7e5d",
        warn = "#dca958",
        info = "#6994c7",
        hint = "#e3913d",
    },
    markup = {
        heading = {
            h1 = "#dca958",
            h2 = "#dca958",
            h3 = "#dca958",
            h4 = "#5979a6",
            h5 = "#5979a6",
            h6 = "#5979a6",
        },
        strong = "#dca958",
        italic = "#dca958",
        strikethrough = "#dca958",
        quote = "#72ae6a",
        math = "#729e60",
        link = "#72ae6a",
        list = {
            default = "#5979a6",
            checked = "#72ae6a",
            unchecked = "#5979a6",
        },
        code = {
            fg = "#506d95",
            bg = "#b7beca",
        },
    },
    tag = {
        default = "#dca958",
        builtin = "#e3913d",
        attribute = "#506d95",
        delimiter = "#47576c",
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
