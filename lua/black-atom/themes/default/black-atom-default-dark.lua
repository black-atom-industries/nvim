local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-default-dark",
    label = "Black Atom — Dark",
    appearance = "dark",
    status = "release",
    collection = {
        key = "default",
        label = "Default",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#080f0f",
    d20 = "#111817",
    d30 = "#1a2121",
    d40 = "#232a2a",
    m10 = "#495762",
    m20 = "#5c6b76",
    m30 = "#73838e",
    m40 = "#91a1ad",
    l10 = "#a3b4c0",
    l20 = "#b6c7d3",
    l30 = "#c9dae7",
    l40 = "#d6e7f4",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#232a2a",
    gray = "#495762",
    dark_red = "#91a1ad",
    red = "#91a1ad",
    dark_green = "#73838e",
    green = "#73838e",
    dark_yellow = "#73838e",
    yellow = "#73838e",
    dark_blue = "#5c6b76",
    blue = "#5c6b76",
    dark_magenta = "#59a174",
    magenta = "#59a174",
    dark_cyan = "#66c3a4",
    cyan = "#66c3a4",
    light_gray = "#b6c7d3",
    white = "#c9dae7",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#111817",
        panel = "#080f0f",
        float = "#080f0f",
        active = "#1a2121",
        disabled = "#232a2a",
        hover = "#1a2121",
        selection = "#232a2a",
        search = "#232a2a",
        contrast = "#a3b4c0",
        negative = "#143041",
        warn = "#143426",
        info = "#123434",
        hint = "#143426",
        positive = "#0a3430",
        add = "#0a3430",
        delete = "#143041",
        modify = "#123434",
    },
    fg = {
        default = "#c9dae7",
        subtle = "#73838e",
        accent = "#66c3a4",
        disabled = "#5c6b76",
        contrast = "#111817",
        negative = "#e97292",
        warn = "#dd881b",
        info = "#00b9c3",
        hint = "#dd881b",
        positive = "#4cb86a",
        add = "#4cb86a",
        delete = "#e97292",
        modify = "#00b9c3",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#a3b4c0",
        builtin = "#a3b4c0",
        member = "#73838e",
        parameter = "#91a1ad",
    },
    property = {
        default = "#73838e",
    },
    string = {
        default = "#59a174",
        doc = "#59a174",
        regexp = "#c9dae7",
        escape = "#c9dae7",
    },
    constant = {
        default = "#a3b4c0",
        builtin = "#b6c7d3",
    },
    module = {
        default = "#b6c7d3",
    },
    boolean = {
        default = "#a3b4c0",
    },
    number = {
        default = "#a3b4c0",
    },
    type = {
        default = "#66c3a4",
        builtin = "#59a174",
    },
    attribute = {
        default = "#59a174",
        builtin = "#59a174",
    },
    func = {
        default = "#c9dae7",
        builtin = "#b6c7d3",
        method = "#b6c7d3",
    },
    constructor = {
        default = "#66c3a4",
    },
    keyword = {
        default = "#ada3e9",
        import = "#7d8acc",
        export = "#7d8acc",
    },
    operator = {
        default = "#b6c7d3",
    },
    punctuation = {
        default = "#a3b4c0",
        delimiter = "#a3b4c0",
        bracket = "#a3b4c0",
        special = "#a3b4c0",
    },
    comment = {
        default = "#73838e",
        doc = "#73838e",
        todo = "#4cb86a",
        error = "#e97292",
        warn = "#dd881b",
        info = "#00b9c3",
        hint = "#00b9c3",
    },
    markup = {
        heading = {
            h1 = "#66c3a4",
            h2 = "#66c3a4",
            h3 = "#66c3a4",
            h4 = "#a3b4c0",
            h5 = "#a3b4c0",
            h6 = "#a3b4c0",
        },
        strong = "#66c3a4",
        italic = "#66c3a4",
        strikethrough = "#91a1ad",
        quote = "#73838e",
        math = "#73838e",
        link = "#59a174",
        list = {
            default = "#91a1ad",
            checked = "#4cb86a",
            unchecked = "#91a1ad",
        },
        code = {
            fg = "#a3b4c0",
            bg = "#080f0f",
        },
    },
    tag = {
        default = "#66c3a4",
        builtin = "#59a174",
        attribute = "#91a1ad",
        delimiter = "#91a1ad",
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
