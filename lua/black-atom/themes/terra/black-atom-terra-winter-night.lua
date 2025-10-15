local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-terra-winter-night",
    label = "Black Atom — TER ∷ Winter Night",
    appearance = "dark",
    status = "release",
    collection = {
        key = "terra",
        label = "TERRA",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#2e3440",
    d20 = "#3b4252",
    d30 = "#434c5e",
    d40 = "#4c566a",
    m10 = "#5a6b7a",
    m20 = "#6b7c8a",
    m30 = "#7c8d9c",
    m40 = "#8d9eac",
    l10 = "#d8dee9",
    l20 = "#e5e9f0",
    l30 = "#eceff4",
    l40 = "#eceff4",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#434c5e",
    gray = "#6b7c8a",
    dark_red = "#bf9999",
    red = "#d1adad",
    dark_green = "#99ad99",
    green = "#adc7ad",
    dark_yellow = "#d08770",
    yellow = "#ebcb8b",
    dark_blue = "#7a8db8",
    blue = "#94a3d1",
    dark_magenta = "#a699bf",
    magenta = "#c2add1",
    dark_cyan = "#99b8bf",
    cyan = "#add1d6",
    light_gray = "#d8dee9",
    white = "#eceff4",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#3b4252",
        panel = "#2e3440",
        float = "#2e3440",
        active = "#434c5e",
        disabled = "#5a6b7a",
        hover = "#434c5e",
        selection = "#4c566a",
        search = "#4c566a",
        contrast = "#eceff4",
        negative = "#505063",
        warn = "#565269",
        info = "#475064",
        hint = "#4d4c64",
        positive = "#465564",
        add = "#465564",
        delete = "#505063",
        modify = "#475064",
    },
    fg = {
        default = "#eceff4",
        subtle = "#8d9eac",
        accent = "#ebcb8b",
        disabled = "#7c8d9c",
        contrast = "#3b4252",
        negative = "#d1adad",
        warn = "#ebcb8b",
        info = "#94a3d1",
        hint = "#d08770",
        positive = "#adc7ad",
        add = "#adc7ad",
        delete = "#d1adad",
        modify = "#94a3d1",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#94a3d1",
        builtin = "#7a8db8",
        member = "#7a8db8",
        parameter = "#d08770",
    },
    property = {
        default = "#7a8db8",
    },
    string = {
        default = "#adc7ad",
        doc = "#adc7ad",
        regexp = "#d08770",
        escape = "#d1adad",
    },
    constant = {
        default = "#d08770",
        builtin = "#d08770",
    },
    module = {
        default = "#7a8db8",
    },
    boolean = {
        default = "#d08770",
    },
    number = {
        default = "#d08770",
    },
    type = {
        default = "#add1d6",
        builtin = "#99b8bf",
    },
    attribute = {
        default = "#add1d6",
        builtin = "#add1d6",
    },
    func = {
        default = "#ebcb8b",
        builtin = "#ebcb8b",
        method = "#ebcb8b",
    },
    constructor = {
        default = "#ebcb8b",
    },
    keyword = {
        default = "#c2add1",
        import = "#d1adad",
        export = "#d1adad",
    },
    operator = {
        default = "#c2add1",
    },
    punctuation = {
        default = "#d8dee9",
        delimiter = "#8d9eac",
        bracket = "#d8dee9",
        special = "#d8dee9",
    },
    comment = {
        default = "#6b7c8a",
        doc = "#99ad99",
        todo = "#adc7ad",
        error = "#d1adad",
        warn = "#ebcb8b",
        info = "#94a3d1",
        hint = "#d08770",
    },
    markup = {
        heading = {
            h1 = "#ebcb8b",
            h2 = "#ebcb8b",
            h3 = "#ebcb8b",
            h4 = "#d8dee9",
            h5 = "#d8dee9",
            h6 = "#d8dee9",
        },
        strong = "#ebcb8b",
        italic = "#ebcb8b",
        strikethrough = "#ebcb8b",
        quote = "#adc7ad",
        math = "#99ad99",
        link = "#adc7ad",
        list = {
            default = "#d8dee9",
            checked = "#adc7ad",
            unchecked = "#d8dee9",
        },
        code = {
            fg = "#d8dee9",
            bg = "#434c5e",
        },
    },
    tag = {
        default = "#ebcb8b",
        builtin = "#ebcb8b",
        attribute = "#d08770",
        delimiter = "#d08770",
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
