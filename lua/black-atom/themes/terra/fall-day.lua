local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-terra-fall-day",
    label = "Black Atom • Terra ∷ Fall Day",
    collection = {
        key = "terra",
        label = "TERRA",
    },
    appearance = "light",
    icon = "  ",
    status = "development",
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    "#1e1e1e",
    "#232323",
    "#2c2928",
    "#322e2b",
    "#665c54",
    "#7c6f64",
    "#928374",
    "#a89984",
    "#ccc5b2",
    "#d7d2c3",
    "#e4decd",
    "#eeeadf",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#2c2928",
    gray = "#7c6f64",
    dark_red = "#ca6d4c",
    red = "#dd7e5d",
    dark_green = "#4a7126",
    green = "#58852c",
    dark_yellow = "#cc764b",
    yellow = "#d19845",
    dark_blue = "#3d668e",
    blue = "#5980a6",
    dark_magenta = "#ab80a8",
    magenta = "#a58bc1",
    dark_cyan = "#296a50",
    cyan = "#348764",
    light_gray = "#ccc5b2",
    white = "#e4decd",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#e4decd",
        panel = "#d7d2c3",
        float = "#d7d2c3",
        active = "#ccc5b2",
        disabled = "#928374",
        hover = "#ccc5b2",
        selection = "#eeeadf",
        search = "#eeeadf",
        contrast = "#232323",
        negative = "#dd7e5d",
        warn = "#d19845",
        info = "#5980a6",
        hint = "#cc764b",
        positive = "#58852c",
        add = "#58852c",
        delete = "#dd7e5d",
        modify = "#5980a6",
    },
    fg = {
        default = "#232323",
        subtle = "#665c54",
        accent = "#d19845",
        disabled = "#7c6f64",
        contrast = "#e4decd",
        negative = "#dd7e5d",
        warn = "#d19845",
        info = "#5980a6",
        hint = "#cc764b",
        positive = "#58852c",
        add = "#58852c",
        delete = "#dd7e5d",
        modify = "#5980a6",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#5980a6",
        builtin = "#3d668e",
        member = "#3d668e",
        parameter = "#cc764b",
    },
    property = {
        default = "#3d668e",
    },
    string = {
        default = "#58852c",
        doc = "#58852c",
        regexp = "#dd7e5d",
        escape = "#dd7e5d",
    },
    constant = {
        default = "#cc764b",
        builtin = "#cc764b",
    },
    module = {
        default = "#3d668e",
    },
    boolean = {
        default = "#4a7126",
    },
    number = {
        default = "#4a7126",
    },
    type = {
        default = "#348764",
        builtin = "#296a50",
    },
    attribute = {
        default = "#cc764b",
        builtin = "#cc764b",
    },
    func = {
        default = "#d19845",
        builtin = "#d19845",
        method = "#d19845",
    },
    constructor = {
        default = "#d19845",
    },
    keyword = {
        default = "#dd7e5d",
        import = "#4a7126",
        export = "#ca6d4c",
    },
    operator = {
        default = "#2c2928",
    },
    punctuation = {
        default = "#7c6f64",
        delimiter = "#a89984",
        bracket = "#7c6f64",
        special = "#7c6f64",
    },
    comment = {
        default = "#7c6f64",
        doc = "#4a7126",
        todo = "#58852c",
        error = "#dd7e5d",
        warn = "#d19845",
        info = "#5980a6",
        hint = "#cc764b",
    },
    markup = {
        heading = {
            h1 = "#d19845",
            h2 = "#d19845",
            h3 = "#d19845",
            h4 = "#7c6f64",
            h5 = "#7c6f64",
            h6 = "#7c6f64",
        },
        strong = "#d19845",
        italic = "#d19845",
        strikethrough = "#d19845",
        quote = "#58852c",
        math = "#4a7126",
        link = "#58852c",
        list = {
            default = "#7c6f64",
            checked = "#58852c",
            unchecked = "#7c6f64",
        },
        code = {
            fg = "#7c6f64",
            bg = "#d7d2c3",
        },
    },
    tag = {
        default = "#d19845",
        builtin = "#cc764b",
        attribute = "#665c54",
        delimiter = "#322e2b",
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
