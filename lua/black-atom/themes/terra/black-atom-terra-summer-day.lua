local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-terra-summer-day",
    label = "Black Atom — TERRA ∷ Summer Day",
    appearance = "light",
    status = "development",
    collection = {
        key = "terra",
        label = "TERRA",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#001908",
    d20 = "#00280f",
    d30 = "#093e1b",
    d40 = "#245427",
    m10 = "#26541c",
    m20 = "#506e2c",
    m30 = "#798940",
    m40 = "#a2a457",
    l10 = "#e4dec8",
    l20 = "#eee4cf",
    l30 = "#f7e9d6",
    l40 = "#ffeedd",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#245427",
    gray = "#26541c",
    dark_red = "#ac6a75",
    red = "#ac6e59",
    dark_green = "#457200",
    green = "#768c00",
    dark_yellow = "#c67b36",
    yellow = "#a19021",
    dark_blue = "#3d7149",
    blue = "#5a8f65",
    dark_magenta = "#aa7fa5",
    magenta = "#b67c8d",
    dark_cyan = "#1c7360",
    cyan = "#459178",
    light_gray = "#e4dec8",
    white = "#f7e9d6",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#f7e9d6",
        panel = "#eee4cf",
        float = "#eee4cf",
        active = "#e4dec8",
        disabled = "#798940",
        hover = "#e4dec8",
        selection = "#ffeedd",
        search = "#ffeedd",
        contrast = "#00280f",
        negative = "#e1cfc9",
        warn = "#e8d4c4",
        info = "#cbd8cd",
        hint = "#e8d4c4",
        positive = "#d0d8be",
        add = "#d0d8be",
        delete = "#e1cfc9",
        modify = "#cbd8cd",
    },
    fg = {
        default = "#00280f",
        subtle = "#26541c",
        accent = "#c67b36",
        disabled = "#506e2c",
        contrast = "#f7e9d6",
        negative = "#ac6e59",
        warn = "#c67b36",
        info = "#5a8f65",
        hint = "#c67b36",
        positive = "#768c00",
        add = "#768c00",
        delete = "#ac6e59",
        modify = "#5a8f65",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#5a8f65",
        builtin = "#3d7149",
        member = "#3d7149",
        parameter = "#c67b36",
    },
    property = {
        default = "#3d7149",
    },
    string = {
        default = "#768c00",
        doc = "#768c00",
        regexp = "#ac6e59",
        escape = "#ac6e59",
    },
    constant = {
        default = "#c67b36",
        builtin = "#c67b36",
    },
    module = {
        default = "#3d7149",
    },
    boolean = {
        default = "#457200",
    },
    number = {
        default = "#457200",
    },
    type = {
        default = "#459178",
        builtin = "#1c7360",
    },
    attribute = {
        default = "#c67b36",
        builtin = "#c67b36",
    },
    func = {
        default = "#a19021",
        builtin = "#a19021",
        method = "#a19021",
    },
    constructor = {
        default = "#a19021",
    },
    keyword = {
        default = "#b67c8d",
        import = "#ac6e59",
        export = "#ac6e59",
    },
    operator = {
        default = "#00280f",
    },
    punctuation = {
        default = "#26541c",
        delimiter = "#a2a457",
        bracket = "#26541c",
        special = "#26541c",
    },
    comment = {
        default = "#26541c",
        doc = "#457200",
        todo = "#768c00",
        error = "#ac6e59",
        warn = "#c67b36",
        info = "#5a8f65",
        hint = "#c67b36",
    },
    markup = {
        heading = {
            h1 = "#a19021",
            h2 = "#a19021",
            h3 = "#a19021",
            h4 = "#26541c",
            h5 = "#26541c",
            h6 = "#26541c",
        },
        strong = "#a19021",
        italic = "#a19021",
        strikethrough = "#a19021",
        quote = "#768c00",
        math = "#457200",
        link = "#768c00",
        list = {
            default = "#26541c",
            checked = "#768c00",
            unchecked = "#26541c",
        },
        code = {
            fg = "#26541c",
            bg = "#e4dec8",
        },
    },
    tag = {
        default = "#a19021",
        builtin = "#c67b36",
        attribute = "#26541c",
        delimiter = "#245427",
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
