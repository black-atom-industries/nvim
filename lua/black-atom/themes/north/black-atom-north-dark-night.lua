local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-north-dark-night",
    label = "Black Atom — NORTH ∷ Dark Night",
    appearance = "dark",
    status = "development",
    collection = {
        key = "north",
        label = "NORTH",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#1c1f26",
    d20 = "#242933",
    d30 = "#2e3440",
    d40 = "#3b4252",
    m10 = "#434c5e",
    m20 = "#4c566a",
    m30 = "#5e81ac",
    m40 = "#81a1c1",
    l10 = "#88c0d0",
    l20 = "#8fbcbb",
    l30 = "#d8dee9",
    l40 = "#e5e9f0",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#242933",
    gray = "#4c566a",
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
    light_gray = "#88c0d0",
    white = "#d8dee9",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#242933",
        panel = "#1c1f26",
        float = "#1c1f26",
        active = "#2e3440",
        disabled = "#434c5e",
        hover = "#2e3440",
        selection = "#3b4252",
        search = "#3b4252",
        contrast = "#d8dee9",
        negative = "#323347",
        warn = "#3f3c4e",
        info = "#313946",
        hint = "#363648",
        positive = "#2f3d49",
        add = "#2f3d49",
        delete = "#323347",
        modify = "#313946",
    },
    fg = {
        default = "#d8dee9",
        subtle = "#88c0d0",
        accent = "#ebcb8b",
        disabled = "#5e81ac",
        contrast = "#242933",
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
        default = "#88c0d0",
        builtin = "#81a1c1",
        member = "#88c0d0",
        parameter = "#8fbcbb",
    },
    property = {
        default = "#88c0d0",
    },
    string = {
        default = "#a3be8c",
        doc = "#a3be8c",
        regexp = "#8fbcbb",
        escape = "#88c0d0",
    },
    constant = {
        default = "#8fbcbb",
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
        default = "#5e81ac",
        delimiter = "#4c566a",
        bracket = "#5e81ac",
        special = "#8fbcbb",
    },
    comment = {
        default = "#4c566a",
        doc = "#5e81ac",
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
            h4 = "#88c0d0",
            h5 = "#88c0d0",
            h6 = "#88c0d0",
        },
        strong = "#81a1c1",
        italic = "#8fbcbb",
        strikethrough = "#4c566a",
        quote = "#a3be8c",
        math = "#8fbcbb",
        link = "#8fbcbb",
        list = {
            default = "#88c0d0",
            checked = "#a3be8c",
            unchecked = "#5e81ac",
        },
        code = {
            fg = "#8fbcbb",
            bg = "#1c1f26",
        },
    },
    tag = {
        default = "#81a1c1",
        builtin = "#5e81ac",
        attribute = "#8fbcbb",
        delimiter = "#4c566a",
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
