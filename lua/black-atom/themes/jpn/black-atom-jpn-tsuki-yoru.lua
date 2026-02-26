local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-jpn-tsuki-yoru",
    label = "Black Atom — JPN ∷ Tsuki Yoru",
    appearance = "dark",
    status = "release",
    collection = {
        key = "jpn",
        label = "JPN",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#0f0f0f",
    d20 = "#1c1c1c",
    d30 = "#282828",
    d40 = "#373737",
    m10 = "#4f4f61",
    m20 = "#69697f",
    m30 = "#828299",
    m40 = "#9d9daf",
    l10 = "#b3b3b3",
    l20 = "#cbcbcb",
    l30 = "#e6e6e6",
    l40 = "#ffffff",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#373737",
    gray = "#69697f",
    dark_red = "#f2759e",
    red = "#f591b2",
    dark_green = "#71a584",
    green = "#90b99f",
    dark_yellow = "#f6a090",
    yellow = "#eab899",
    dark_blue = "#8699c1",
    blue = "#a1b0cf",
    dark_magenta = "#9789c3",
    magenta = "#aca1cf",
    dark_cyan = "#76bdac",
    cyan = "#8dd9c5",
    light_gray = "#9d9daf",
    white = "#b3b3b3",
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
        negative = "#4c373d",
        warn = "#493f38",
        info = "#3a3d43",
        hint = "#4c3a36",
        positive = "#363f39",
        add = "#363f39",
        delete = "#4c373d",
        modify = "#3a3d43",
    },
    fg = {
        default = "#e6e6e6",
        subtle = "#9d9daf",
        accent = "#eab899",
        disabled = "#828299",
        contrast = "#1c1c1c",
        negative = "#f591b2",
        warn = "#eab899",
        info = "#a1b0cf",
        hint = "#f6a090",
        positive = "#90b99f",
        add = "#90b99f",
        delete = "#f591b2",
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
        default = "#90b99f",
        doc = "#90b99f",
        regexp = "#f591b2",
        escape = "#f591b2",
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
        default = "#aca1cf",
        import = "#f591b2",
        export = "#f591b2",
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
        default = "#69697f",
        doc = "#71a584",
        todo = "#90b99f",
        error = "#f591b2",
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
        quote = "#90b99f",
        math = "#71a584",
        link = "#90b99f",
        list = {
            default = "#9d9daf",
            checked = "#90b99f",
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
