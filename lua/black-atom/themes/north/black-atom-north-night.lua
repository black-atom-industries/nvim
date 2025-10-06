local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-north-night",
    label = "Black Atom — NORTH ∷ Night",
    appearance = "dark",
    status = "development",
    collection = {
        key = "north",
        label = "NORTH",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#2e3440",
    d20 = "#3b4252",
    d30 = "#434c5e",
    d40 = "#4c566a",
    m10 = "#5e81ac",
    m20 = "#81a1c1",
    m30 = "#88c0d0",
    m40 = "#8fbcbb",
    l10 = "#d8dee9",
    l20 = "#e5e9f0",
    l30 = "#eceff4",
    l40 = "#eceff4",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#434c5e",
    gray = "#81a1c1",
    dark_red = "#bf616a",
    red = "#bf616a",
    dark_green = "#a3be8c",
    green = "#a3be8c",
    dark_yellow = "#d08770",
    yellow = "#ebcb8b",
    dark_blue = "#5e81ac",
    blue = "#81a1c1",
    dark_magenta = "#b48ead",
    magenta = "#b48ead",
    dark_cyan = "#88c0d0",
    cyan = "#8fbcbb",
    light_gray = "#d8dee9",
    white = "#eceff4",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#3b4252",
        panel = "#2e3440",
        float = "#2e3440",
        active = "#434c5e",
        disabled = "#5e81ac",
        hover = "#434c5e",
        selection = "#4c566a",
        search = "#4c566a",
        contrast = "#eceff4",
        negative = "#484862",
        warn = "#565269",
        info = "#464f62",
        hint = "#4d4c64",
        positive = "#425465",
        add = "#425465",
        delete = "#484862",
        modify = "#464f62",
    },
    fg = {
        default = "#eceff4",
        subtle = "#d8dee9",
        accent = "#ebcb8b",
        disabled = "#88c0d0",
        contrast = "#3b4252",
        negative = "#bf616a",
        warn = "#ebcb8b",
        info = "#81a1c1",
        hint = "#d08770",
        positive = "#a3be8c",
        add = "#a3be8c",
        delete = "#bf616a",
        modify = "#81a1c1",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#d8dee9",
        builtin = "#81a1c1",
        member = "#d8dee9",
        parameter = "#e5e9f0",
    },
    property = {
        default = "#d8dee9",
    },
    string = {
        default = "#a3be8c",
        doc = "#a3be8c",
        regexp = "#8fbcbb",
        escape = "#88c0d0",
    },
    constant = {
        default = "#e5e9f0",
        builtin = "#81a1c1",
    },
    module = {
        default = "#5e81ac",
    },
    boolean = {
        default = "#81a1c1",
    },
    number = {
        default = "#b48ead",
    },
    type = {
        default = "#8fbcbb",
        builtin = "#88c0d0",
    },
    attribute = {
        default = "#88c0d0",
        builtin = "#8fbcbb",
    },
    func = {
        default = "#ebcb8b",
        builtin = "#d08770",
        method = "#d08770",
    },
    constructor = {
        default = "#81a1c1",
    },
    keyword = {
        default = "#81a1c1",
        import = "#5e81ac",
        export = "#5e81ac",
    },
    operator = {
        default = "#8fbcbb",
    },
    punctuation = {
        default = "#88c0d0",
        delimiter = "#81a1c1",
        bracket = "#88c0d0",
        special = "#8fbcbb",
    },
    comment = {
        default = "#81a1c1",
        doc = "#88c0d0",
        todo = "#ebcb8b",
        error = "#bf616a",
        warn = "#ebcb8b",
        info = "#81a1c1",
        hint = "#8fbcbb",
    },
    markup = {
        heading = {
            h1 = "#81a1c1",
            h2 = "#81a1c1",
            h3 = "#81a1c1",
            h4 = "#d8dee9",
            h5 = "#d8dee9",
            h6 = "#d8dee9",
        },
        strong = "#81a1c1",
        italic = "#8fbcbb",
        strikethrough = "#81a1c1",
        quote = "#a3be8c",
        math = "#8fbcbb",
        link = "#8fbcbb",
        list = {
            default = "#d8dee9",
            checked = "#a3be8c",
            unchecked = "#88c0d0",
        },
        code = {
            fg = "#e5e9f0",
            bg = "#2e3440",
        },
    },
    tag = {
        default = "#81a1c1",
        builtin = "#5e81ac",
        attribute = "#8fbcbb",
        delimiter = "#81a1c1",
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
