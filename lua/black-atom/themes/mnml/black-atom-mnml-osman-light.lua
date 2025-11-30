local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-mnml-osman-light",
    label = "Black Atom — MNM ∷ Osman Light",
    appearance = "light",
    status = "development",
    collection = {
        key = "mnml",
        label = "MNM",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#0e0a08",
    d20 = "#38312b",
    d30 = "#433c35",
    d40 = "#4e463f",
    m10 = "#6c6158",
    m20 = "#7a6f66",
    m30 = "#897e74",
    m40 = "#988d83",
    l10 = "#cac3bc",
    l20 = "#d7cfc9",
    l30 = "#fff7f0",
    l40 = "#fffcf7",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#6c6158",
    gray = "#6c6158",
    dark_red = "#f03328",
    red = "#f03328",
    dark_green = "#897e74",
    green = "#897e74",
    dark_yellow = "#897e74",
    yellow = "#897e74",
    dark_blue = "#0184ff",
    blue = "#0184ff",
    dark_magenta = "#897e74",
    magenta = "#897e74",
    dark_cyan = "#988d83",
    cyan = "#988d83",
    light_gray = "#cac3bc",
    white = "#cac3bc",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#fff7f0",
        panel = "#d7cfc9",
        float = "#d7cfc9",
        active = "#cac3bc",
        disabled = "#cac3bc",
        hover = "#d7cfc9",
        selection = "#cac3bc",
        search = "#cac3bc",
        contrast = "#4e463f",
        negative = "#fbe7cd",
        warn = "#f8ecda",
        info = "#ececd0",
        hint = "#f8ecda",
        positive = "#f2ebd6",
        add = "#f2ebd6",
        delete = "#fbe7cd",
        modify = "#ececd0",
    },
    fg = {
        default = "#38312b",
        subtle = "#6c6158",
        accent = "#0184ff",
        disabled = "#897e74",
        contrast = "#d7cfc9",
        negative = "#f03328",
        warn = "#c99500",
        info = "#0184ff",
        hint = "#c99500",
        positive = "#3aa85b",
        add = "#3aa85b",
        delete = "#f03328",
        modify = "#0184ff",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#4e463f",
        builtin = "#4e463f",
        member = "#6c6158",
        parameter = "#0184ff",
    },
    property = {
        default = "#f03328",
    },
    string = {
        default = "#7a6f66",
        doc = "#f03328",
        regexp = "#0184ff",
        escape = "#0184ff",
    },
    constant = {
        default = "#38312b",
        builtin = "#0e0a08",
    },
    module = {
        default = "#433c35",
    },
    boolean = {
        default = "#6c6158",
    },
    number = {
        default = "#4e463f",
    },
    type = {
        default = "#0e0a08",
        builtin = "#4e463f",
    },
    attribute = {
        default = "#f03328",
        builtin = "#f03328",
    },
    func = {
        default = "#0184ff",
        builtin = "#f03328",
        method = "#f03328",
    },
    constructor = {
        default = "#0184ff",
    },
    keyword = {
        default = "#f03328",
        import = "#0184ff",
        export = "#0184ff",
    },
    operator = {
        default = "#38312b",
    },
    punctuation = {
        default = "#4e463f",
        delimiter = "#4e463f",
        bracket = "#4e463f",
        special = "#4e463f",
    },
    comment = {
        default = "#7a6f66",
        doc = "#7a6f66",
        todo = "#3aa85b",
        error = "#f03328",
        warn = "#c99500",
        info = "#0184ff",
        hint = "#0184ff",
    },
    markup = {
        heading = {
            h1 = "#0184ff",
            h2 = "#0184ff",
            h3 = "#0184ff",
            h4 = "#6c6158",
            h5 = "#6c6158",
            h6 = "#6c6158",
        },
        strong = "#0184ff",
        italic = "#0184ff",
        strikethrough = "#0184ff",
        quote = "#897e74",
        math = "#7a6f66",
        link = "#f03328",
        list = {
            default = "#6c6158",
            checked = "#3aa85b",
            unchecked = "#6c6158",
        },
        code = {
            fg = "#4e463f",
            bg = "#d7cfc9",
        },
    },
    tag = {
        default = "#f03328",
        builtin = "#0184ff",
        attribute = "#6c6158",
        delimiter = "#897e74",
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
