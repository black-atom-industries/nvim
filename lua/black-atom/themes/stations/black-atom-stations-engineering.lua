local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-stations-engineering",
    label = "Black Atom - Engineering Station",
    collection = {
        key = "stations",
        label = "Stations",
    },
    appearance = "dark",
    icon = "󱁤 󰖔 ",
    status = "release",
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    "#202b2b",
    "#23332f",
    "#2d423c",
    "#375149",
    "#51796d",
    "#5b8972",
    "#75a490",
    "#91bcad",
    "#9bdebe",
    "#abe7ca",
    "#c1efd5",
    "#cef6de",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#2d423c",
    gray = "#5b8972",
    dark_red = "#ef95ba",
    red = "#f4acc9",
    dark_green = "#5dba5d",
    green = "#80c980",
    dark_yellow = "#c6db6e",
    yellow = "#a6dc6e",
    dark_blue = "#91bcad",
    blue = "#abe7ca",
    dark_magenta = "#a2b0e0",
    magenta = "#b6bee0",
    dark_cyan = "#59bf6f",
    cyan = "#75d689",
    light_gray = "#91bcad",
    white = "#c1efd5",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#23332f",
        panel = "#202b2b",
        float = "#202b2b",
        active = "#2d423c",
        disabled = "#51796d",
        hover = "#2d423c",
        selection = "#375149",
        search = "#375149",
        contrast = "#c1efd5",
        negative = "#f4acc9",
        warn = "#a6dc6e",
        info = "#abe7ca",
        hint = "#c6db6e",
        positive = "#80c980",
        add = "#80c980",
        delete = "#f4acc9",
        modify = "#abe7ca",
    },
    fg = {
        default = "#c1efd5",
        subtle = "#9bdebe",
        accent = "#a6dc6e",
        disabled = "#75a490",
        contrast = "#23332f",
        negative = "#f4acc9",
        warn = "#a6dc6e",
        info = "#abe7ca",
        hint = "#c6db6e",
        positive = "#80c980",
        add = "#80c980",
        delete = "#f4acc9",
        modify = "#abe7ca",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#abe7ca",
        builtin = "#abe7ca",
        member = "#91bcad",
        parameter = "#c6db6e",
    },
    property = {
        default = "#91bcad",
    },
    string = {
        default = "#80c980",
        doc = "#80c980",
        regexp = "#f4acc9",
        escape = "#f4acc9",
    },
    constant = {
        default = "#abe7ca",
        builtin = "#ef95ba",
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
        default = "#75d689",
        builtin = "#59bf6f",
    },
    attribute = {
        default = "#c6db6e",
        builtin = "#c6db6e",
    },
    func = {
        default = "#a6dc6e",
        builtin = "#a6dc6e",
        method = "#a6dc6e",
    },
    constructor = {
        default = "#a6dc6e",
    },
    keyword = {
        default = "#b6bee0",
        import = "#f4acc9",
        export = "#f4acc9",
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
        error = "#f4acc9",
        warn = "#a6dc6e",
        info = "#abe7ca",
        hint = "#c6db6e",
    },
    markup = {
        heading = {
            h1 = "#a6dc6e",
            h2 = "#a6dc6e",
            h3 = "#a6dc6e",
            h4 = "#91bcad",
            h5 = "#91bcad",
            h6 = "#91bcad",
        },
        strong = "#a6dc6e",
        italic = "#a6dc6e",
        strikethrough = "#a6dc6e",
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
            bg = "#2d423c",
        },
    },
    tag = {
        default = "#a6dc6e",
        builtin = "#c6db6e",
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
