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
    l10 = "#e4dcd6",
    l20 = "#f2eae2",
    l30 = "#fff7f0",
    l40 = "#fffbf5",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#6c6158",
    gray = "#6c6158",
    dark_red = "#f1342d",
    red = "#f1342d",
    dark_green = "#897e74",
    green = "#897e74",
    dark_yellow = "#897e74",
    yellow = "#897e74",
    dark_blue = "#1085fc",
    blue = "#1085fc",
    dark_magenta = "#897e74",
    magenta = "#897e74",
    dark_cyan = "#988d83",
    cyan = "#988d83",
    light_gray = "#e4dcd6",
    white = "#e4dcd6",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#fff7f0",
        panel = "#f2eae2",
        float = "#f2eae2",
        active = "#fffbf5",
        disabled = "#e4dcd6",
        hover = "#f2eae2",
        selection = "#e4dcd6",
        search = "#e4dcd6",
        contrast = "#4e463f",
        negative = "#fce5cc",
        warn = "#fff2dd",
        info = "#edebcf",
        hint = "#fff2dd",
        positive = "#f3ead3",
        add = "#f3ead3",
        delete = "#fce5cc",
        modify = "#edebcf",
    },
    fg = {
        default = "#38312b",
        subtle = "#6c6158",
        accent = "#1085fc",
        disabled = "#897e74",
        contrast = "#f2eae2",
        negative = "#f1342d",
        warn = "#f7c233",
        info = "#1085fc",
        hint = "#f7c233",
        positive = "#2aa955",
        add = "#2aa955",
        delete = "#f1342d",
        modify = "#1085fc",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#4e463f",
        builtin = "#4e463f",
        member = "#6c6158",
        parameter = "#1085fc",
    },
    property = {
        default = "#6c6158",
    },
    string = {
        default = "#7a6f66",
        doc = "#f1342d",
        regexp = "#1085fc",
        escape = "#1085fc",
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
        default = "#f1342d",
        builtin = "#f1342d",
    },
    func = {
        default = "#1085fc",
        builtin = "#f1342d",
        method = "#f1342d",
    },
    constructor = {
        default = "#1085fc",
    },
    keyword = {
        default = "#f1342d",
        import = "#1085fc",
        export = "#1085fc",
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
        todo = "#2aa955",
        error = "#f1342d",
        warn = "#f7c233",
        info = "#1085fc",
        hint = "#1085fc",
    },
    markup = {
        heading = {
            h1 = "#1085fc",
            h2 = "#1085fc",
            h3 = "#1085fc",
            h4 = "#6c6158",
            h5 = "#6c6158",
            h6 = "#6c6158",
        },
        strong = "#1085fc",
        italic = "#1085fc",
        strikethrough = "#1085fc",
        quote = "#897e74",
        math = "#7a6f66",
        link = "#f1342d",
        list = {
            default = "#6c6158",
            checked = "#2aa955",
            unchecked = "#6c6158",
        },
        code = {
            fg = "#4e463f",
            bg = "#f2eae2",
        },
    },
    tag = {
        default = "#f1342d",
        builtin = "#1085fc",
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
