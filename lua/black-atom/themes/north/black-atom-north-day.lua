local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-north-day",
    label = "Black Atom — NORTH ∷ Day",
    appearance = "light",
    status = "development",
    collection = {
        key = "north",
        label = "NORTH",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#2E3440",
    d20 = "#3B4252",
    d30 = "#434C5E",
    d40 = "#4C566A",
    m10 = "#5E81AC",
    m20 = "#81A1C1",
    m30 = "#88C0D0",
    m40 = "#8FBCBB",
    l10 = "#ced6e3",
    l20 = "#dfe4ec",
    l30 = "#e9ecf2",
    l40 = "#ECEFF4",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#434C5E",
    gray = "#81A1C1",
    dark_red = "#A85560",
    red = "#B45A63",
    dark_green = "#8FA678",
    green = "#96AD7F",
    dark_yellow = "#B87A66",
    yellow = "#D4B882",
    dark_blue = "#52719A",
    blue = "#7391B0",
    dark_magenta = "#9D7E99",
    magenta = "#A685A1",
    dark_cyan = "#79ACBD",
    cyan = "#7FA9A8",
    light_gray = "#ced6e3",
    white = "#e9ecf2",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#e9ecf2",
        panel = "#dfe4ec",
        float = "#dfe4ec",
        active = "#ced6e3",
        disabled = "#88C0D0",
        hover = "#ced6e3",
        selection = "#ECEFF4",
        search = "#ECEFF4",
        contrast = "#3B4252",
        negative = "#B45A63",
        warn = "#D4B882",
        info = "#7391B0",
        hint = "#B87A66",
        positive = "#96AD7F",
        add = "#96AD7F",
        delete = "#B45A63",
        modify = "#7391B0",
    },
    fg = {
        default = "#3B4252",
        subtle = "#5E81AC",
        accent = "#D4B882",
        disabled = "#81A1C1",
        contrast = "#e9ecf2",
        negative = "#B45A63",
        warn = "#D4B882",
        info = "#7391B0",
        hint = "#B87A66",
        positive = "#96AD7F",
        add = "#96AD7F",
        delete = "#B45A63",
        modify = "#7391B0",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#434C5E",
        builtin = "#52719A",
        member = "#434C5E",
        parameter = "#3B4252",
    },
    property = {
        default = "#434C5E",
    },
    string = {
        default = "#8FA678",
        doc = "#96AD7F",
        regexp = "#79ACBD",
        escape = "#7FA9A8",
    },
    constant = {
        default = "#3B4252",
        builtin = "#52719A",
    },
    module = {
        default = "#7391B0",
    },
    boolean = {
        default = "#52719A",
    },
    number = {
        default = "#9D7E99",
    },
    type = {
        default = "#79ACBD",
        builtin = "#7FA9A8",
    },
    attribute = {
        default = "#7FA9A8",
        builtin = "#79ACBD",
    },
    func = {
        default = "#52719A",
        builtin = "#7391B0",
        method = "#52719A",
    },
    constructor = {
        default = "#52719A",
    },
    keyword = {
        default = "#52719A",
        import = "#7391B0",
        export = "#7391B0",
    },
    operator = {
        default = "#79ACBD",
    },
    punctuation = {
        default = "#5E81AC",
        delimiter = "#81A1C1",
        bracket = "#5E81AC",
        special = "#79ACBD",
    },
    comment = {
        default = "#88C0D0",
        doc = "#81A1C1",
        todo = "#B87A66",
        error = "#A85560",
        warn = "#B87A66",
        info = "#52719A",
        hint = "#79ACBD",
    },
    markup = {
        heading = {
            h1 = "#52719A",
            h2 = "#52719A",
            h3 = "#52719A",
            h4 = "#434C5E",
            h5 = "#434C5E",
            h6 = "#434C5E",
        },
        strong = "#52719A",
        italic = "#79ACBD",
        strikethrough = "#81A1C1",
        quote = "#96AD7F",
        math = "#79ACBD",
        link = "#79ACBD",
        list = {
            default = "#434C5E",
            checked = "#8FA678",
            unchecked = "#5E81AC",
        },
        code = {
            fg = "#3B4252",
            bg = "#ECEFF4",
        },
    },
    tag = {
        default = "#52719A",
        builtin = "#7391B0",
        attribute = "#79ACBD",
        delimiter = "#81A1C1",
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