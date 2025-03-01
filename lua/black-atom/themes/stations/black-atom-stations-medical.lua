local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-stations-medical",
    label = "Black Atom - Medical Station",
    collection = {
        key = "stations",
        label = "Stations",
    },
    appearance = "light",
    icon = " 󰖔 ",
    status = "release",
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    "#1e2229",
    "#2b3b33",
    "#384b42",
    "#425953",
    "#476a5f",
    "#517a65",
    "#669a84",
    "#77a494",
    "#a6bdb2",
    "#b7cac1",
    "#c2d3cb",
    "#d0e0d8",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#384b42",
    gray = "#517a65",
    dark_red = "#db577c",
    red = "#ec7aa2",
    dark_green = "#357c35",
    green = "#3c8e3c",
    dark_yellow = "#d9950f",
    yellow = "#60a918",
    dark_blue = "#517a65",
    blue = "#476a5f",
    dark_magenta = "#7768cd",
    magenta = "#998ed9",
    dark_cyan = "#389248",
    cyan = "#4aaa5b",
    light_gray = "#77a494",
    white = "#c2d3cb",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#c2d3cb",
        panel = "#b7cac1",
        float = "#b7cac1",
        active = "#d0e0d8",
        disabled = "#a6bdb2",
        hover = "#d0e0d8",
        selection = "#d0e0d8",
        search = "#d0e0d8",
        contrast = "#2b3b33",
        negative = "#ec7aa2",
        warn = "#60a918",
        info = "#476a5f",
        hint = "#d9950f",
        positive = "#3c8e3c",
        add = "#3c8e3c",
        delete = "#ec7aa2",
        modify = "#476a5f",
    },
    fg = {
        default = "#2b3b33",
        subtle = "#425953",
        accent = "#60a918",
        disabled = "#517a65",
        contrast = "#c2d3cb",
        negative = "#ec7aa2",
        warn = "#60a918",
        info = "#476a5f",
        hint = "#d9950f",
        positive = "#3c8e3c",
        add = "#3c8e3c",
        delete = "#ec7aa2",
        modify = "#476a5f",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#476a5f",
        builtin = "#384b42",
        member = "#476a5f",
        parameter = "#d9950f",
    },
    property = {
        default = "#476a5f",
    },
    string = {
        default = "#3c8e3c",
        doc = "#3c8e3c",
        regexp = "#ec7aa2",
        escape = "#ec7aa2",
    },
    constant = {
        default = "#517a65",
        builtin = "#db577c",
    },
    module = {
        default = "#517a65",
    },
    boolean = {
        default = "#357c35",
    },
    number = {
        default = "#357c35",
    },
    type = {
        default = "#4aaa5b",
        builtin = "#389248",
    },
    attribute = {
        default = "#d9950f",
        builtin = "#d9950f",
    },
    func = {
        default = "#60a918",
        builtin = "#60a918",
        method = "#60a918",
    },
    constructor = {
        default = "#60a918",
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
        default = "#517a65",
        delimiter = "#77a494",
        bracket = "#517a65",
        special = "#517a65",
    },
    comment = {
        default = "#669a84",
        doc = "#357c35",
        todo = "#3c8e3c",
        error = "#ec7aa2",
        warn = "#60a918",
        info = "#476a5f",
        hint = "#d9950f",
    },
    markup = {
        heading = {
            h1 = "#60a918",
            h2 = "#60a918",
            h3 = "#60a918",
            h4 = "#517a65",
            h5 = "#517a65",
            h6 = "#517a65",
        },
        strong = "#60a918",
        italic = "#60a918",
        strikethrough = "#60a918",
        quote = "#3c8e3c",
        math = "#357c35",
        link = "#3c8e3c",
        list = {
            default = "#517a65",
            checked = "#3c8e3c",
            unchecked = "#517a65",
        },
        code = {
            fg = "#517a65",
            bg = "#b7cac1",
        },
    },
    tag = {
        default = "#60a918",
        builtin = "#d9950f",
        attribute = "#476a5f",
        delimiter = "#357c35",
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
