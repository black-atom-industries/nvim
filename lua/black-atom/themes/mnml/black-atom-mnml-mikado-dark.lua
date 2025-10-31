local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-mnml-mikado-dark",
    label = "Black Atom — MNM ∷ Mikado Dark",
    appearance = "dark",
    status = "development",
    collection = {
        key = "mnml",
        label = "MNM",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#162f48",
    d20 = "#1d364f",
    d30 = "#233c56",
    d40 = "#2a435d",
    m10 = "#4f759c",
    m20 = "#5d84ac",
    m30 = "#6c93bc",
    m40 = "#8ab2dc",
    l10 = "#c2cad3",
    l20 = "#d2dae3",
    l30 = "#e2ebf3",
    l40 = "#f8fafd",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#4f759c",
    gray = "#4f759c",
    dark_red = "#4f759c",
    red = "#8ab2dc",
    dark_green = "#4f759c",
    green = "#6c93bc",
    dark_yellow = "#f8ac3d",
    yellow = "#f8ac3d",
    dark_blue = "#76b1fc",
    blue = "#76b1fc",
    dark_magenta = "#4f759c",
    magenta = "#6c93bc",
    dark_cyan = "#4f759c",
    cyan = "#8ab2dc",
    light_gray = "#4f759c",
    white = "#d2dae3",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#162f48",
        panel = "#1d364f",
        float = "#1d364f",
        active = "#233c56",
        disabled = "#2a435d",
        hover = "#233c56",
        selection = "#2a435d",
        search = "#2a435d",
        contrast = "#c2cad3",
        negative = "#2f3a63",
        warn = "#01485c",
        info = "#224160",
        hint = "#01485c",
        positive = "#0a425c",
        add = "#0a425c",
        delete = "#2f3a63",
        modify = "#224160",
    },
    fg = {
        default = "#e2ebf3",
        subtle = "#8ab2dc",
        accent = "#f8ac3d",
        disabled = "#5d84ac",
        contrast = "#1d364f",
        negative = "#f86c59",
        warn = "#f8ac3d",
        info = "#76b1fc",
        hint = "#f8ac3d",
        positive = "#4EBA65",
        add = "#4EBA65",
        delete = "#f86c59",
        modify = "#76b1fc",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#d2dae3",
        builtin = "#c2cad3",
        member = "#76b1fc",
        parameter = "#76b1fc",
    },
    property = {
        default = "#76b1fc",
    },
    string = {
        default = "#d2dae3",
        doc = "#c2cad3",
        regexp = "#f8fafd",
        escape = "#f8fafd",
    },
    constant = {
        default = "#c2cad3",
        builtin = "#d2dae3",
    },
    module = {
        default = "#d2dae3",
    },
    boolean = {
        default = "#8ab2dc",
    },
    number = {
        default = "#c2cad3",
    },
    type = {
        default = "#f8fafd",
        builtin = "#f8fafd",
    },
    attribute = {
        default = "#76b1fc",
        builtin = "#76b1fc",
    },
    func = {
        default = "#f8ac3d",
        builtin = "#76b1fc",
        method = "#76b1fc",
    },
    constructor = {
        default = "#f8ac3d",
    },
    keyword = {
        default = "#f86c59",
        import = "#f86c59",
        export = "#f86c59",
    },
    operator = {
        default = "#e2ebf3",
    },
    punctuation = {
        default = "#c2cad3",
        delimiter = "#c2cad3",
        bracket = "#c2cad3",
        special = "#c2cad3",
    },
    comment = {
        default = "#6c93bc",
        doc = "#6c93bc",
        todo = "#4EBA65",
        error = "#f86c59",
        warn = "#f8ac3d",
        info = "#76b1fc",
        hint = "#76b1fc",
    },
    markup = {
        heading = {
            h1 = "#f8ac3d",
            h2 = "#f8ac3d",
            h3 = "#f8ac3d",
            h4 = "#8ab2dc",
            h5 = "#8ab2dc",
            h6 = "#8ab2dc",
        },
        strong = "#f8ac3d",
        italic = "#f8ac3d",
        strikethrough = "#f8ac3d",
        quote = "#5d84ac",
        math = "#5d84ac",
        link = "#76b1fc",
        list = {
            default = "#8ab2dc",
            checked = "#4EBA65",
            unchecked = "#8ab2dc",
        },
        code = {
            fg = "#c2cad3",
            bg = "#1d364f",
        },
    },
    tag = {
        default = "#f8ac3d",
        builtin = "#76b1fc",
        attribute = "#6c93bc",
        delimiter = "#c2cad3",
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
