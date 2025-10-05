local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-stations-operations",
    label = "Black Atom — STA ∷ Operations",
    appearance = "dark",
    status = "release",
    collection = {
        key = "stations",
        label = "Stations",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#192323",
    d20 = "#21302d",
    d30 = "#293c36",
    d40 = "#354e46",
    m10 = "#51796d",
    m20 = "#5b8972",
    m30 = "#75a490",
    m40 = "#91bcad",
    l10 = "#9bdebe",
    l20 = "#abe7ca",
    l30 = "#c1efd5",
    l40 = "#cef6de",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#293c36",
    gray = "#5b8972",
    dark_red = "#eb7aa8",
    red = "#f08cb4",
    dark_green = "#5dba5d",
    green = "#80c980",
    dark_yellow = "#e9b565",
    yellow = "#b7db6e",
    dark_blue = "#91bcad",
    blue = "#abe7ca",
    dark_magenta = "#a2b0e0",
    magenta = "#b6bee0",
    dark_cyan = "#59bf84",
    cyan = "#75d69e",
    light_gray = "#91bcad",
    white = "#c1efd5",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#21302d",
        panel = "#192323",
        float = "#192323",
        active = "#293c36",
        disabled = "#51796d",
        hover = "#293c36",
        selection = "#354e46",
        search = "#354e46",
        contrast = "#c1efd5",
        negative = "#403e41",
        warn = "#384a37",
        info = "#364b45",
        hint = "#3f4435",
        positive = "#2f4739",
        add = "#2f4739",
        delete = "#403e41",
        modify = "#364b45",
    },
    fg = {
        default = "#c1efd5",
        subtle = "#91bcad",
        accent = "#b7db6e",
        disabled = "#75a490",
        contrast = "#21302d",
        negative = "#f08cb4",
        warn = "#b7db6e",
        info = "#abe7ca",
        hint = "#e9b565",
        positive = "#80c980",
        add = "#80c980",
        delete = "#f08cb4",
        modify = "#abe7ca",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#abe7ca",
        builtin = "#abe7ca",
        member = "#91bcad",
        parameter = "#e9b565",
    },
    property = {
        default = "#91bcad",
    },
    string = {
        default = "#80c980",
        doc = "#80c980",
        regexp = "#f08cb4",
        escape = "#f08cb4",
    },
    constant = {
        default = "#abe7ca",
        builtin = "#eb7aa8",
    },
    module = {
        default = "#91bcad",
    },
    boolean = {
        default = "#5dba5d",
    },
    number = {
        default = "#5dba5d",
    },
    type = {
        default = "#75d69e",
        builtin = "#59bf84",
    },
    attribute = {
        default = "#e9b565",
        builtin = "#e9b565",
    },
    func = {
        default = "#b7db6e",
        builtin = "#b7db6e",
        method = "#b7db6e",
    },
    constructor = {
        default = "#b7db6e",
    },
    keyword = {
        default = "#b6bee0",
        import = "#f08cb4",
        export = "#f08cb4",
    },
    operator = {
        default = "#b6bee0",
    },
    punctuation = {
        default = "#91bcad",
        delimiter = "#91bcad",
        bracket = "#91bcad",
        special = "#91bcad",
    },
    comment = {
        default = "#5b8972",
        doc = "#5dba5d",
        todo = "#80c980",
        error = "#f08cb4",
        warn = "#b7db6e",
        info = "#abe7ca",
        hint = "#e9b565",
    },
    markup = {
        heading = {
            h1 = "#b7db6e",
            h2 = "#b7db6e",
            h3 = "#b7db6e",
            h4 = "#91bcad",
            h5 = "#91bcad",
            h6 = "#91bcad",
        },
        strong = "#b7db6e",
        italic = "#b7db6e",
        strikethrough = "#b7db6e",
        quote = "#80c980",
        math = "#5dba5d",
        link = "#80c980",
        list = {
            default = "#91bcad",
            checked = "#80c980",
            unchecked = "#91bcad",
        },
        code = {
            fg = "#5b8972",
            bg = "#293c36",
        },
    },
    tag = {
        default = "#b7db6e",
        builtin = "#e9b565",
        attribute = "#91bcad",
        delimiter = "#9bdebe",
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
