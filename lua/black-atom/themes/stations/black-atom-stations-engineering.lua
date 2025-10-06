local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-stations-engineering",
    label = "Black Atom — STA ∷ Engineering",
    appearance = "dark",
    status = "release",
    collection = {
        key = "stations",
        label = "Stations",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#0e1818",
    d20 = "#141e1e",
    d30 = "#1c2727",
    d40 = "#263131",
    m10 = "#51796d",
    m20 = "#5b8972",
    m30 = "#75a490",
    m40 = "#91bcad",
    l10 = "#b2e5cd",
    l20 = "#c3eed9",
    l30 = "#d5f4e3",
    l40 = "#e8fbf0",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#1c2727",
    gray = "#5b8972",
    dark_red = "#eb7aa8",
    red = "#f08cb4",
    dark_green = "#64c06a",
    green = "#7fcd81",
    dark_yellow = "#e9b64b",
    yellow = "#c6de68",
    dark_blue = "#91bcad",
    blue = "#c3eed9",
    dark_magenta = "#999fdb",
    magenta = "#a5a9e5",
    dark_cyan = "#63bd89",
    cyan = "#81d6a5",
    light_gray = "#91bcad",
    white = "#d5f4e3",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#141e1e",
        panel = "#0e1818",
        float = "#0e1818",
        active = "#1c2727",
        disabled = "#51796d",
        hover = "#1c2727",
        selection = "#263131",
        search = "#263131",
        contrast = "#d5f4e3",
        negative = "#1c333a",
        warn = "#1d3935",
        info = "#293837",
        hint = "#1d3631",
        positive = "#1c3533",
        add = "#1c3533",
        delete = "#1c333a",
        modify = "#293837",
    },
    fg = {
        default = "#d5f4e3",
        subtle = "#91bcad",
        accent = "#c6de68",
        disabled = "#75a490",
        contrast = "#141e1e",
        negative = "#f08cb4",
        warn = "#c6de68",
        info = "#c3eed9",
        hint = "#e9b64b",
        positive = "#7fcd81",
        add = "#7fcd81",
        delete = "#f08cb4",
        modify = "#c3eed9",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#c3eed9",
        builtin = "#c3eed9",
        member = "#91bcad",
        parameter = "#e9b64b",
    },
    property = {
        default = "#91bcad",
    },
    string = {
        default = "#7fcd81",
        doc = "#7fcd81",
        regexp = "#f08cb4",
        escape = "#f08cb4",
    },
    constant = {
        default = "#c3eed9",
        builtin = "#eb7aa8",
    },
    module = {
        default = "#91bcad",
    },
    boolean = {
        default = "#64c06a",
    },
    number = {
        default = "#64c06a",
    },
    type = {
        default = "#81d6a5",
        builtin = "#63bd89",
    },
    attribute = {
        default = "#e9b64b",
        builtin = "#e9b64b",
    },
    func = {
        default = "#c6de68",
        builtin = "#c6de68",
        method = "#c6de68",
    },
    constructor = {
        default = "#c6de68",
    },
    keyword = {
        default = "#a5a9e5",
        import = "#f08cb4",
        export = "#f08cb4",
    },
    operator = {
        default = "#a5a9e5",
    },
    punctuation = {
        default = "#91bcad",
        delimiter = "#91bcad",
        bracket = "#91bcad",
        special = "#91bcad",
    },
    comment = {
        default = "#5b8972",
        doc = "#64c06a",
        todo = "#7fcd81",
        error = "#f08cb4",
        warn = "#c6de68",
        info = "#c3eed9",
        hint = "#e9b64b",
    },
    markup = {
        heading = {
            h1 = "#c6de68",
            h2 = "#c6de68",
            h3 = "#c6de68",
            h4 = "#91bcad",
            h5 = "#91bcad",
            h6 = "#91bcad",
        },
        strong = "#c6de68",
        italic = "#c6de68",
        strikethrough = "#c6de68",
        quote = "#7fcd81",
        math = "#64c06a",
        link = "#7fcd81",
        list = {
            default = "#91bcad",
            checked = "#7fcd81",
            unchecked = "#91bcad",
        },
        code = {
            fg = "#5b8972",
            bg = "#1c2727",
        },
    },
    tag = {
        default = "#c6de68",
        builtin = "#e9b64b",
        attribute = "#91bcad",
        delimiter = "#b2e5cd",
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
