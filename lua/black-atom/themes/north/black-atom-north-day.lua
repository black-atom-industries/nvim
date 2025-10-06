local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-north-day",
    label = "Black Atom — NORTH ∷ Day",
    appearance = "light",
    status = "beta",
    collection = {
        key = "north",
        label = "NORTH",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#2e3440",
    d20 = "#3b4252",
    d30 = "#434c5e",
    d40 = "#4c566a",
    m10 = "#4e6f98",
    m20 = "#668db4",
    m30 = "#6eb2c6",
    m40 = "#7fb2b1",
    l10 = "#ced6e3",
    l20 = "#dfe4ec",
    l30 = "#e9ecf2",
    l40 = "#eceff4",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#434c5e",
    gray = "#668db4",
    dark_red = "#a85560",
    red = "#b45a63",
    dark_green = "#8fa678",
    green = "#96ad7f",
    dark_yellow = "#c77257",
    yellow = "#ddbb79",
    dark_blue = "#52719a",
    blue = "#7391b0",
    dark_magenta = "#9d7e99",
    magenta = "#a685a1",
    dark_cyan = "#79acbd",
    cyan = "#7fa9a8",
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
        disabled = "#6eb2c6",
        hover = "#ced6e3",
        selection = "#ced6e3",
        search = "#ced6e3",
        contrast = "#3b4252",
        negative = "#d7d9eb",
        warn = "#e5e3f3",
        info = "#d8dee8",
        hint = "#dbdbed",
        positive = "#d7e3ec",
        add = "#d7e3ec",
        delete = "#d7d9eb",
        modify = "#d8dee8",
    },
    fg = {
        default = "#3b4252",
        subtle = "#4e6f98",
        accent = "#ddbb79",
        disabled = "#668db4",
        contrast = "#e9ecf2",
        negative = "#b45a63",
        warn = "#ddbb79",
        info = "#7391b0",
        hint = "#c77257",
        positive = "#96ad7f",
        add = "#96ad7f",
        delete = "#b45a63",
        modify = "#7391b0",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#434c5e",
        builtin = "#52719a",
        member = "#434c5e",
        parameter = "#3b4252",
    },
    property = {
        default = "#434c5e",
    },
    string = {
        default = "#8fa678",
        doc = "#96ad7f",
        regexp = "#79acbd",
        escape = "#7fa9a8",
    },
    constant = {
        default = "#3b4252",
        builtin = "#52719a",
    },
    module = {
        default = "#7391b0",
    },
    boolean = {
        default = "#52719a",
    },
    number = {
        default = "#9d7e99",
    },
    type = {
        default = "#79acbd",
        builtin = "#7fa9a8",
    },
    attribute = {
        default = "#7fa9a8",
        builtin = "#79acbd",
    },
    func = {
        default = "#52719a",
        builtin = "#7391b0",
        method = "#52719a",
    },
    constructor = {
        default = "#52719a",
    },
    keyword = {
        default = "#52719a",
        import = "#7391b0",
        export = "#7391b0",
    },
    operator = {
        default = "#79acbd",
    },
    punctuation = {
        default = "#4e6f98",
        delimiter = "#668db4",
        bracket = "#4e6f98",
        special = "#79acbd",
    },
    comment = {
        default = "#6eb2c6",
        doc = "#668db4",
        todo = "#c77257",
        error = "#a85560",
        warn = "#c77257",
        info = "#52719a",
        hint = "#79acbd",
    },
    markup = {
        heading = {
            h1 = "#52719a",
            h2 = "#52719a",
            h3 = "#52719a",
            h4 = "#434c5e",
            h5 = "#434c5e",
            h6 = "#434c5e",
        },
        strong = "#52719a",
        italic = "#79acbd",
        strikethrough = "#668db4",
        quote = "#96ad7f",
        math = "#79acbd",
        link = "#79acbd",
        list = {
            default = "#434c5e",
            checked = "#8fa678",
            unchecked = "#4e6f98",
        },
        code = {
            fg = "#3b4252",
            bg = "#eceff4",
        },
    },
    tag = {
        default = "#52719a",
        builtin = "#7391b0",
        attribute = "#79acbd",
        delimiter = "#668db4",
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
