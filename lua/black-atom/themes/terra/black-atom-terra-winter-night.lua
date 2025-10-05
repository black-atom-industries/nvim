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
    d10 = "#2E3440",
    d20 = "#3B4252",
    d30 = "#434C5E",
    d40 = "#4C566A",
    m10 = "#5a6b7a",
    m20 = "#6b7c8a",
    m30 = "#7c8d9c",
    m40 = "#8d9eac",
    l10 = "#D8DEE9",
    l20 = "#E5E9F0",
    l30 = "#ECEFF4",
    l40 = "#ECEFF4",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#434C5E",
    gray = "#6b7c8a",
    dark_red = "#bf9999",
    red = "#d1adad",
    dark_green = "#99ad99",
    green = "#adc7ad",
    dark_yellow = "#D08770",
    yellow = "#EBCB8B",
    dark_blue = "#7a8db8",
    blue = "#94a3d1",
    dark_magenta = "#a699bf",
    magenta = "#c2add1",
    dark_cyan = "#99b8bf",
    cyan = "#add1d6",
    light_gray = "#D8DEE9",
    white = "#ECEFF4",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#3B4252",
        panel = "#2E3440",
        float = "#2E3440",
        active = "#434C5E",
        disabled = "#5a6b7a",
        hover = "#434C5E",
        selection = "#4C566A",
        search = "#4C566A",
        contrast = "#ECEFF4",
        negative = "#525260",
        warn = "#55575b",
        info = "#485165",
        hint = "#514c57",
        positive = "#4c5660",
        add = "#4c5660",
        delete = "#525260",
        modify = "#485165",
    },
    fg = {
        default = "#ECEFF4",
        subtle = "#D8DEE9",
        accent = "#EBCB8B",
        disabled = "#7c8d9c",
        contrast = "#3B4252",
        negative = "#d1adad",
        warn = "#EBCB8B",
        info = "#94a3d1",
        hint = "#D08770",
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
        parameter = "#D08770",
    },
    property = {
        default = "#7a8db8",
    },
    string = {
        default = "#adc7ad",
        doc = "#adc7ad",
        regexp = "#D08770",
        escape = "#d1adad",
    },
    constant = {
        default = "#D08770",
        builtin = "#D08770",
    },
    module = {
        default = "#7a8db8",
    },
    boolean = {
        default = "#D08770",
    },
    number = {
        default = "#D08770",
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
        default = "#EBCB8B",
        builtin = "#EBCB8B",
        method = "#EBCB8B",
    },
    constructor = {
        default = "#EBCB8B",
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
        default = "#D8DEE9",
        delimiter = "#8d9eac",
        bracket = "#D8DEE9",
        special = "#D8DEE9",
    },
    comment = {
        default = "#6b7c8a",
        doc = "#99ad99",
        todo = "#adc7ad",
        error = "#d1adad",
        warn = "#EBCB8B",
        info = "#94a3d1",
        hint = "#D08770",
    },
    markup = {
        heading = {
            h1 = "#EBCB8B",
            h2 = "#EBCB8B",
            h3 = "#EBCB8B",
            h4 = "#D8DEE9",
            h5 = "#D8DEE9",
            h6 = "#D8DEE9",
        },
        strong = "#EBCB8B",
        italic = "#EBCB8B",
        strikethrough = "#EBCB8B",
        quote = "#adc7ad",
        math = "#99ad99",
        link = "#adc7ad",
        list = {
            default = "#D8DEE9",
            checked = "#adc7ad",
            unchecked = "#D8DEE9",
        },
        code = {
            fg = "#D8DEE9",
            bg = "#434C5E",
        },
    },
    tag = {
        default = "#EBCB8B",
        builtin = "#EBCB8B",
        attribute = "#D08770",
        delimiter = "#D08770",
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
