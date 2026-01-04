local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-mnml-eink-light",
    label = "Black Atom — MNM ∷ E-Ink Light",
    appearance = "light",
    status = "development",
    collection = {
        key = "mnml",
        label = "MNM",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#161616",
    d20 = "#292929",
    d30 = "#3d3d3d",
    d40 = "#4d4d4d",
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
    black = "#5d5d5d",
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
    light_gray = "#c4c4c4",
    white = "#c4c4c4",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#dedede",
        panel = "#d1d1d1",
        float = "#d1d1d1",
        active = "#ebebeb",
        disabled = "#c4c4c4",
        hover = "#d1d1d1",
        selection = "#c4c4c4",
        search = "#c4c4c4",
        contrast = "#4d4d4d",
        negative = "#f0d6d3",
        warn = "#e8dbce",
        info = "#d1e1ec",
        hint = "#e8dbce",
        positive = "#dae0cf",
        add = "#dae0cf",
        delete = "#f0d6d3",
        modify = "#d1e1ec",
    },
    fg = {
        default = "#292929",
        subtle = "#5d5d5d",
        accent = "#5f5155",
        disabled = "#8c8c8c",
        contrast = "#d1d1d1",
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
        default = "#4d4d4d",
        builtin = "#4d4d4d",
        member = "#5d5d5d",
        parameter = "#5f5155",
    },
    property = {
        default = "#5d5d5d",
    },
    string = {
        default = "#7a7a7a",
        doc = "#776f71",
        regexp = "#5f5155",
        escape = "#5f5155",
    },
    constant = {
        default = "#292929",
        builtin = "#161616",
    },
    module = {
        default = "#3d3d3d",
    },
    boolean = {
        default = "#5d5d5d",
    },
    number = {
        default = "#4d4d4d",
    },
    type = {
        default = "#161616",
        builtin = "#4d4d4d",
    },
    attribute = {
        default = "#776f71",
        builtin = "#776f71",
    },
    func = {
        default = "#5f5155",
        builtin = "#776f71",
        method = "#776f71",
    },
    constructor = {
        default = "#5f5155",
    },
    keyword = {
        default = "#776f71",
        import = "#776f71",
        export = "#776f71",
    },
    operator = {
        default = "#292929",
    },
    punctuation = {
        default = "#4d4d4d",
        delimiter = "#4d4d4d",
        bracket = "#4d4d4d",
        special = "#4d4d4d",
    },
    comment = {
        default = "#7a7a7a",
        doc = "#7a7a7a",
        todo = "#819e00",
        error = "#f14d4c",
        warn = "#cd7b00",
        info = "#00a3e9",
        hint = "#00a3e9",
    },
    markup = {
        heading = {
            h1 = "#5f5155",
            h2 = "#5f5155",
            h3 = "#5f5155",
            h4 = "#5d5d5d",
            h5 = "#5d5d5d",
            h6 = "#5d5d5d",
        },
        strong = "#5f5155",
        italic = "#5f5155",
        strikethrough = "#5f5155",
        quote = "#8c8c8c",
        math = "#7a7a7a",
        link = "#776f71",
        list = {
            default = "#5d5d5d",
            checked = "#819e00",
            unchecked = "#5d5d5d",
        },
        code = {
            fg = "#4d4d4d",
            bg = "#d1d1d1",
        },
    },
    tag = {
        default = "#776f71",
        builtin = "#5f5155",
        attribute = "#5d5d5d",
        delimiter = "#8c8c8c",
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
