local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-mnml-eink-dark",
    label = "Black Atom — MNM ∷ E-Ink Dark",
    appearance = "dark",
    status = "development",
    collection = {
        key = "mnml",
        label = "MNM",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#242424",
    d20 = "#2e2e2e",
    d30 = "#383838",
    d40 = "#424242",
    m10 = "#585858",
    m20 = "#696969",
    m30 = "#747474",
    m40 = "#808080",
    l10 = "#8f8f8f",
    l20 = "#9e9e9e",
    l30 = "#b1b1b1",
    l40 = "#c7c7c7",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#585858",
    gray = "#585858",
    dark_red = "#808080",
    red = "#808080",
    dark_green = "#747474",
    green = "#747474",
    dark_yellow = "#747474",
    yellow = "#747474",
    dark_blue = "#696969",
    blue = "#696969",
    dark_magenta = "#747474",
    magenta = "#747474",
    dark_cyan = "#808080",
    cyan = "#808080",
    light_gray = "#8f8f8f",
    white = "#9e9e9e",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#2e2e2e",
        panel = "#242424",
        float = "#242424",
        active = "#383838",
        disabled = "#424242",
        hover = "#383838",
        selection = "#424242",
        search = "#424242",
        contrast = "#8f8f8f",
        negative = "#3d3030",
        warn = "#3b3730",
        info = "#303836",
        hint = "#3b3730",
        positive = "#363830",
        add = "#363830",
        delete = "#3d3030",
        modify = "#303836",
    },
    fg = {
        default = "#b1b1b1",
        subtle = "#747474",
        accent = "#bdacb0",
        disabled = "#696969",
        contrast = "#2e2e2e",
        negative = "#dd7577",
        warn = "#d6b174",
        info = "#78baac",
        hint = "#d6b174",
        positive = "#a9ba78",
        add = "#a9ba78",
        delete = "#dd7577",
        modify = "#78baac",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#9e9e9e",
        builtin = "#8f8f8f",
        member = "#958d8f",
        parameter = "#958d8f",
    },
    property = {
        default = "#958d8f",
    },
    string = {
        default = "#9e9e9e",
        doc = "#8f8f8f",
        regexp = "#c7c7c7",
        escape = "#c7c7c7",
    },
    constant = {
        default = "#8f8f8f",
        builtin = "#9e9e9e",
    },
    module = {
        default = "#9e9e9e",
    },
    boolean = {
        default = "#808080",
    },
    number = {
        default = "#8f8f8f",
    },
    type = {
        default = "#c7c7c7",
        builtin = "#c7c7c7",
    },
    attribute = {
        default = "#958d8f",
        builtin = "#958d8f",
    },
    func = {
        default = "#bdacb0",
        builtin = "#958d8f",
        method = "#958d8f",
    },
    constructor = {
        default = "#bdacb0",
    },
    keyword = {
        default = "#b1b1b1",
        import = "#c7c7c7",
        export = "#c7c7c7",
    },
    operator = {
        default = "#b1b1b1",
    },
    punctuation = {
        default = "#8f8f8f",
        delimiter = "#8f8f8f",
        bracket = "#8f8f8f",
        special = "#8f8f8f",
    },
    comment = {
        default = "#747474",
        doc = "#747474",
        todo = "#a9ba78",
        error = "#dd7577",
        warn = "#d6b174",
        info = "#78baac",
        hint = "#78baac",
    },
    markup = {
        heading = {
            h1 = "#bdacb0",
            h2 = "#bdacb0",
            h3 = "#bdacb0",
            h4 = "#808080",
            h5 = "#808080",
            h6 = "#808080",
        },
        strong = "#bdacb0",
        italic = "#bdacb0",
        strikethrough = "#bdacb0",
        quote = "#696969",
        math = "#696969",
        link = "#958d8f",
        list = {
            default = "#808080",
            checked = "#a9ba78",
            unchecked = "#808080",
        },
        code = {
            fg = "#8f8f8f",
            bg = "#242424",
        },
    },
    tag = {
        default = "#bdacb0",
        builtin = "#958d8f",
        attribute = "#747474",
        delimiter = "#8f8f8f",
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
