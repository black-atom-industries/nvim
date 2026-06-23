local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-mnml-orange-light",
    label = "Black Atom — MNML ∷ Orange Light",
    appearance = "light",
    status = "development",
    collection = {
        key = "mnml",
        label = "MNML",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#111719",
    d20 = "#242a2c",
    d30 = "#383e41",
    d40 = "#474e51",
    m10 = "#585f61",
    m20 = "#747c7e",
    m30 = "#868e90",
    m40 = "#9ea6a9",
    l10 = "#e8eced",
    l20 = "#eef3f4",
    l30 = "#f5f9fb",
    l40 = "#fcffff",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#474e51",
    gray = "#585f61",
    dark_red = "#9ea6a9",
    red = "#9ea6a9",
    dark_green = "#868e90",
    green = "#868e90",
    dark_yellow = "#0795fd",
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
        default = "#f5f9fb",
        panel = "#eef3f4",
        float = "#eef3f4",
        active = "#fcffff",
        disabled = "#e8eced",
        hover = "#eef3f4",
        selection = "#e8eced",
        search = "#e8eced",
        contrast = "#474e51",
        negative = "#ffd5d1",
        warn = "#f4dec9",
        info = "#cee8fa",
        hint = "#f4dec9",
        positive = "#dde6ca",
        add = "#dde6ca",
        delete = "#ffd5d1",
        modify = "#cee8fa",
    },
    fg = {
        default = "#242a2c",
        subtle = "#585f61",
        accent = "#fc8e06",
        disabled = "#868e90",
        contrast = "#eef3f4",
        negative = "#f14d4c",
        warn = "#cd7b00",
        info = "#00a3e9",
        hint = "#cd7b00",
        positive = "#819e00",
        add = "#819e00",
        delete = "#f14d4c",
        modify = "#00a3e9",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#383e41",
        builtin = "#474e51",
        member = "#0795fd",
        parameter = "#0795fd",
    },
    property = {
        default = "#585f61",
    },
    string = {
        default = "#747c7e",
        doc = "#0795fd",
        regexp = "#fc8e06",
        escape = "#fc8e06",
    },
    constant = {
        default = "#242a2c",
        builtin = "#111719",
    },
    module = {
        default = "#383e41",
    },
    boolean = {
        default = "#585f61",
    },
    number = {
        default = "#474e51",
    },
    type = {
        default = "#111719",
        builtin = "#474e51",
    },
    attribute = {
        default = "#0795fd",
        builtin = "#0795fd",
    },
    func = {
        default = "#fc8e06",
        builtin = "#0795fd",
        method = "#0795fd",
    },
    constructor = {
        default = "#fc8e06",
    },
    keyword = {
        default = "#0795fd",
        import = "#fa6d38",
        export = "#fa6d38",
    },
    operator = {
        default = "#242a2c",
    },
    punctuation = {
        default = "#474e51",
        delimiter = "#474e51",
        bracket = "#474e51",
        special = "#474e51",
    },
    comment = {
        default = "#747c7e",
        doc = "#747c7e",
        todo = "#819e00",
        error = "#f14d4c",
        warn = "#cd7b00",
        info = "#00a3e9",
        hint = "#00a3e9",
    },
    markup = {
        heading = {
            h1 = "#fc8e06",
            h2 = "#fc8e06",
            h3 = "#fc8e06",
            h4 = "#585f61",
            h5 = "#585f61",
            h6 = "#585f61",
        },
        strong = "#fc8e06",
        italic = "#fc8e06",
        strikethrough = "#fc8e06",
        quote = "#868e90",
        math = "#747c7e",
        link = "#0795fd",
        list = {
            default = "#585f61",
            checked = "#819e00",
            unchecked = "#585f61",
        },
        code = {
            fg = "#474e51",
            bg = "#eef3f4",
        },
    },
    tag = {
        default = "#0795fd",
        builtin = "#fc8e06",
        attribute = "#585f61",
        delimiter = "#868e90",
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
