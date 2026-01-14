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
    m10 = "#5d5d5d",
    m20 = "#7a7a7a",
    m30 = "#8c8c8c",
    m40 = "#a4a4a4",
    l10 = "#c4c4c4",
    l20 = "#d1d1d1",
    l30 = "#dedede",
    l40 = "#ebebeb",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#424242",
    gray = "#5d5d5d",
    dark_red = "#a4a4a4",
    red = "#a4a4a4",
    dark_green = "#8c8c8c",
    green = "#8c8c8c",
    dark_yellow = "#8c8c8c",
    yellow = "#8c8c8c",
    dark_blue = "#7a7a7a",
    blue = "#7a7a7a",
    dark_magenta = "#8c8c8c",
    magenta = "#8c8c8c",
    dark_cyan = "#a4a4a4",
    cyan = "#a4a4a4",
    light_gray = "#d1d1d1",
    white = "#dedede",
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
        contrast = "#c4c4c4",
        negative = "#3d3030",
        warn = "#3b3730",
        info = "#30373a",
        hint = "#3b3730",
        positive = "#363830",
        add = "#363830",
        delete = "#3d3030",
        modify = "#30373a",
    },
    fg = {
        default = "#dedede",
        subtle = "#8c8c8c",
        accent = "#bdacb0",
        disabled = "#7a7a7a",
        contrast = "#2e2e2e",
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
        default = "#d1d1d1",
        builtin = "#c4c4c4",
        member = "#9a8a8f",
        parameter = "#9a8a8f",
    },
    property = {
        default = "#9a8a8f",
    },
    string = {
        default = "#d1d1d1",
        doc = "#c4c4c4",
        regexp = "#ebebeb",
        escape = "#ebebeb",
    },
    constant = {
        default = "#c4c4c4",
        builtin = "#d1d1d1",
    },
    module = {
        default = "#d1d1d1",
    },
    boolean = {
        default = "#a4a4a4",
    },
    number = {
        default = "#c4c4c4",
    },
    type = {
        default = "#ebebeb",
        builtin = "#ebebeb",
    },
    attribute = {
        default = "#9a8a8f",
        builtin = "#9a8a8f",
    },
    func = {
        default = "#bdacb0",
        builtin = "#9a8a8f",
        method = "#9a8a8f",
    },
    constructor = {
        default = "#bdacb0",
    },
    keyword = {
        default = "#dedede",
        import = "#ebebeb",
        export = "#ebebeb",
    },
    operator = {
        default = "#dedede",
    },
    punctuation = {
        default = "#c4c4c4",
        delimiter = "#c4c4c4",
        bracket = "#c4c4c4",
        special = "#c4c4c4",
    },
    comment = {
        default = "#8c8c8c",
        doc = "#8c8c8c",
        todo = "#a9ba78",
        error = "#dd7577",
        warn = "#d6b174",
        info = "#79b5cc",
        hint = "#79b5cc",
    },
    markup = {
        heading = {
            h1 = "#bdacb0",
            h2 = "#bdacb0",
            h3 = "#bdacb0",
            h4 = "#a4a4a4",
            h5 = "#a4a4a4",
            h6 = "#a4a4a4",
        },
        strong = "#bdacb0",
        italic = "#bdacb0",
        strikethrough = "#bdacb0",
        quote = "#7a7a7a",
        math = "#7a7a7a",
        link = "#9a8a8f",
        list = {
            default = "#a4a4a4",
            checked = "#a9ba78",
            unchecked = "#a4a4a4",
        },
        code = {
            fg = "#c4c4c4",
            bg = "#242424",
        },
    },
    tag = {
        default = "#bdacb0",
        builtin = "#9a8a8f",
        attribute = "#8c8c8c",
        delimiter = "#c4c4c4",
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
