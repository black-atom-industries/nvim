local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-terra-winter-night",
    label = "Black Atom — TER ∷ Winter Night",
    collection = {
        key = "terra",
        label = "TERRA",
    },
    appearance = "dark",
    icon = " 󰖔 ",
    status = "release",
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#18191b",
    d20 = "#212225",
    d30 = "#2c2d30",
    d40 = "#34363b",
    m10 = "#454955",
    m20 = "#5b6171",
    m30 = "#707a92",
    m40 = "#8a8fa7",
    l10 = "#a6afc1",
    l20 = "#c0c8d8",
    l30 = "#cdd6e4",
    l40 = "#dbe4ef",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#2c2d30",
    gray = "#5b6171",
    dark_red = "#a65959",
    red = "#b86a6a",
    dark_green = "#507765",
    green = "#5e9e8b",
    dark_yellow = "#eba778",
    yellow = "#d3b17a",
    dark_blue = "#94acb8",
    blue = "#8c9bc2",
    dark_magenta = "#b793b7",
    magenta = "#c8adc8",
    dark_cyan = "#568383",
    cyan = "#67a5a5",
    light_gray = "#a6afc1",
    white = "#cdd6e4",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#212225",
        panel = "#18191b",
        float = "#18191b",
        active = "#2c2d30",
        disabled = "#454955",
        hover = "#2c2d30",
        selection = "#34363b",
        search = "#34363b",
        contrast = "#cdd6e4",
        negative = "#b86a6a",
        warn = "#d3b17a",
        info = "#8c9bc2",
        hint = "#eba778",
        positive = "#5e9e8b",
        add = "#5e9e8b",
        delete = "#b86a6a",
        modify = "#8c9bc2",
    },
    fg = {
        default = "#cdd6e4",
        subtle = "#a6afc1",
        accent = "#d3b17a",
        disabled = "#707a92",
        contrast = "#212225",
        negative = "#b86a6a",
        warn = "#d3b17a",
        info = "#8c9bc2",
        hint = "#eba778",
        positive = "#5e9e8b",
        add = "#5e9e8b",
        delete = "#b86a6a",
        modify = "#8c9bc2",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#8c9bc2",
        builtin = "#8c9bc2",
        member = "#94acb8",
        parameter = "#eba778",
    },
    property = {
        default = "#8c9bc2",
    },
    string = {
        default = "#5e9e8b",
        doc = "#5e9e8b",
        regexp = "#eba778",
        escape = "#b86a6a",
    },
    constant = {
        default = "#eba778",
        builtin = "#eba778",
    },
    module = {
        default = "#94acb8",
    },
    boolean = {
        default = "#eba778",
    },
    number = {
        default = "#eba778",
    },
    type = {
        default = "#67a5a5",
        builtin = "#568383",
    },
    attribute = {
        default = "#67a5a5",
        builtin = "#67a5a5",
    },
    func = {
        default = "#d3b17a",
        builtin = "#d3b17a",
        method = "#d3b17a",
    },
    constructor = {
        default = "#d3b17a",
    },
    keyword = {
        default = "#b86a6a",
        import = "#c8adc8",
        export = "#c8adc8",
    },
    operator = {
        default = "#c8adc8",
    },
    punctuation = {
        default = "#a6afc1",
        delimiter = "#8a8fa7",
        bracket = "#a6afc1",
        special = "#a6afc1",
    },
    comment = {
        default = "#5b6171",
        doc = "#507765",
        todo = "#5e9e8b",
        error = "#b86a6a",
        warn = "#d3b17a",
        info = "#8c9bc2",
        hint = "#eba778",
    },
    markup = {
        heading = {
            h1 = "#d3b17a",
            h2 = "#d3b17a",
            h3 = "#d3b17a",
            h4 = "#a6afc1",
            h5 = "#a6afc1",
            h6 = "#a6afc1",
        },
        strong = "#d3b17a",
        italic = "#d3b17a",
        strikethrough = "#d3b17a",
        quote = "#5e9e8b",
        math = "#507765",
        link = "#5e9e8b",
        list = {
            default = "#a6afc1",
            checked = "#5e9e8b",
            unchecked = "#a6afc1",
        },
        code = {
            fg = "#c0c8d8",
            bg = "#5b6171",
        },
    },
    tag = {
        default = "#d3b17a",
        builtin = "#d3b17a",
        attribute = "#eba778",
        delimiter = "#eba778",
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
