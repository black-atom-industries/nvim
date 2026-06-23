local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-mnml-orange-dark",
    label = "Black Atom — MNML ∷ Orange Dark",
    appearance = "dark",
    status = "development",
    collection = {
        key = "mnml",
        label = "MNML",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#000203",
    d20 = "#030608",
    d30 = "#090e10",
    d40 = "#111719",
    m10 = "#585f61",
    m20 = "#747c7e",
    m30 = "#868e90",
    m40 = "#9ea6a9",
    l10 = "#e4edf0",
    l20 = "#ebf3f6",
    l30 = "#f2fafd",
    l40 = "#f8ffff",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#111719",
    gray = "#585f61",
    dark_red = "#9ea6a9",
    red = "#9ea6a9",
    dark_green = "#868e90",
    green = "#868e90",
    dark_yellow = "#1a97fc",
    yellow = "#fc8e06",
    dark_blue = "#9ea6a9",
    blue = "#9ea6a9",
    dark_magenta = "#868e90",
    magenta = "#868e90",
    dark_cyan = "#9ea6a9",
    cyan = "#9ea6a9",
    light_gray = "#9ea6a9",
    white = "#9ea6a9",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#030608",
        panel = "#000203",
        float = "#000203",
        active = "#090e10",
        disabled = "#111719",
        hover = "#090e10",
        selection = "#111719",
        search = "#111719",
        contrast = "#e4edf0",
        negative = "#4b2829",
        warn = "#483c28",
        info = "#2a3d45",
        hint = "#483c28",
        positive = "#393f29",
        add = "#393f29",
        delete = "#4b2829",
        modify = "#2a3d45",
    },
    fg = {
        default = "#f2fafd",
        subtle = "#868e90",
        accent = "#fc8e06",
        disabled = "#747c7e",
        contrast = "#030608",
        negative = "#dd7577",
        warn = "#d6b174",
        info = "#79b5cc",
        hint = "#d6b174",
        positive = "#a9ba78",
        add = "#a9ba78",
        delete = "#dd7577",
        modify = "#79b5cc",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#ebf3f6",
        builtin = "#e4edf0",
        member = "#1a97fc",
        parameter = "#1a97fc",
    },
    property = {
        default = "#1a97fc",
    },
    string = {
        default = "#ebf3f6",
        doc = "#e4edf0",
        regexp = "#f8ffff",
        escape = "#f8ffff",
    },
    constant = {
        default = "#e4edf0",
        builtin = "#ebf3f6",
    },
    module = {
        default = "#ebf3f6",
    },
    boolean = {
        default = "#9ea6a9",
    },
    number = {
        default = "#e4edf0",
    },
    type = {
        default = "#f8ffff",
        builtin = "#f8ffff",
    },
    attribute = {
        default = "#1a97fc",
        builtin = "#1a97fc",
    },
    func = {
        default = "#fc8e06",
        builtin = "#1a97fc",
        method = "#1a97fc",
    },
    constructor = {
        default = "#fc8e06",
    },
    keyword = {
        default = "#1a97fc",
        import = "#ff7a46",
        export = "#ff7a46",
    },
    operator = {
        default = "#f2fafd",
    },
    punctuation = {
        default = "#e4edf0",
        delimiter = "#e4edf0",
        bracket = "#e4edf0",
        special = "#e4edf0",
    },
    comment = {
        default = "#868e90",
        doc = "#868e90",
        todo = "#a9ba78",
        error = "#dd7577",
        warn = "#d6b174",
        info = "#79b5cc",
        hint = "#79b5cc",
    },
    markup = {
        heading = {
            h1 = "#fc8e06",
            h2 = "#fc8e06",
            h3 = "#fc8e06",
            h4 = "#9ea6a9",
            h5 = "#9ea6a9",
            h6 = "#9ea6a9",
        },
        strong = "#fc8e06",
        italic = "#fc8e06",
        strikethrough = "#fc8e06",
        quote = "#747c7e",
        math = "#747c7e",
        link = "#1a97fc",
        list = {
            default = "#9ea6a9",
            checked = "#a9ba78",
            unchecked = "#9ea6a9",
        },
        code = {
            fg = "#e4edf0",
            bg = "#000203",
        },
    },
    tag = {
        default = "#fc8e06",
        builtin = "#1a97fc",
        attribute = "#868e90",
        delimiter = "#e4edf0",
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
