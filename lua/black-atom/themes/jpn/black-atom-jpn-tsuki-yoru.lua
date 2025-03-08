local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-jpn-tsuki-yoru",
    label = "Black At•m — JPN ∷ Tsuki Yoru",
    appearance = "dark",
    status = "release",
    collection = {
        key = "jpn",
        label = "JPN",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    "#0f0f0f",
    "#1c1c1c",
    "#282828",
    "#373737",
    "#4f4f61",
    "#69697f",
    "#828299",
    "#9d9daf",
    "#b3b3b3",
    "#cbcbcb",
    "#e6e6e6",
    "#ffffff",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#282828",
    gray = "#4f4f61",
    dark_red = "#f2759e",
    red = "#F591B2",
    dark_green = "#71a584",
    green = "#90B99F",
    dark_yellow = "#f6a090",
    yellow = "#eab899",
    dark_blue = "#8699c1",
    blue = "#a1b0cf",
    dark_magenta = "#9789c3",
    magenta = "#ACA1CF",
    dark_cyan = "#76bdac",
    cyan = "#8dd9c5",
    light_gray = "#9d9daf",
    white = "#e6e6e6",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#1c1c1c",
        panel = "#0f0f0f",
        float = "#0f0f0f",
        active = "#282828",
        disabled = "#4f4f61",
        hover = "#282828",
        selection = "#373737",
        search = "#373737",
        contrast = "#e6e6e6",
        negative = "#F591B2",
        warn = "#eab899",
        info = "#a1b0cf",
        hint = "#f6a090",
        positive = "#90B99F",
        add = "#90B99F",
        delete = "#F591B2",
        modify = "#a1b0cf",
    },
    fg = {
        default = "#e6e6e6",
        subtle = "#b3b3b3",
        accent = "#eab899",
        disabled = "#828299",
        contrast = "#1c1c1c",
        negative = "#F591B2",
        warn = "#eab899",
        info = "#a1b0cf",
        hint = "#f6a090",
        positive = "#90B99F",
        add = "#90B99F",
        delete = "#F591B2",
        modify = "#a1b0cf",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#cbcbcb",
        builtin = "#9d9daf",
        member = "#a1b0cf",
        parameter = "#f6a090",
    },
    property = {
        default = "#a1b0cf",
    },
    string = {
        default = "#90B99F",
        doc = "#90B99F",
        regexp = "#F591B2",
        escape = "#F591B2",
    },
    constant = {
        default = "#8699c1",
        builtin = "#f2759e",
    },
    module = {
        default = "#8699c1",
    },
    boolean = {
        default = "#71a584",
    },
    number = {
        default = "#71a584",
    },
    type = {
        default = "#8dd9c5",
        builtin = "#76bdac",
    },
    attribute = {
        default = "#f6a090",
        builtin = "#f6a090",
    },
    func = {
        default = "#eab899",
        builtin = "#eab899",
        method = "#eab899",
    },
    constructor = {
        default = "#eab899",
    },
    keyword = {
        default = "#ACA1CF",
        import = "#F591B2",
        export = "#F591B2",
    },
    operator = {
        default = "#8699c1",
    },
    punctuation = {
        default = "#9d9daf",
        delimiter = "#8699c1",
        bracket = "#9d9daf",
        special = "#9d9daf",
    },
    comment = {
        default = "#4f4f61",
        doc = "#71a584",
        todo = "#90B99F",
        error = "#F591B2",
        warn = "#eab899",
        info = "#a1b0cf",
        hint = "#f6a090",
    },
    markup = {
        heading = {
            h1 = "#eab899",
            h2 = "#eab899",
            h3 = "#eab899",
            h4 = "#9d9daf",
            h5 = "#9d9daf",
            h6 = "#9d9daf",
        },
        strong = "#eab899",
        italic = "#eab899",
        strikethrough = "#eab899",
        quote = "#90B99F",
        math = "#71a584",
        link = "#90B99F",
        list = {
            default = "#9d9daf",
            checked = "#90B99F",
            unchecked = "#9d9daf",
        },
        code = {
            fg = "#9d9daf",
            bg = "#0f0f0f",
        },
    },
    tag = {
        default = "#eab899",
        builtin = "#f6a090",
        attribute = "#9d9daf",
        delimiter = "#b3b3b3",
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
