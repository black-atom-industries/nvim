local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-terra-summer-night",
    label = "Black Atom — TER ∷ Summer Night",
    collection = {
        key = "terra",
        label = "TERRA",
    },
    appearance = "dark",
    icon = "󰂒 󰖔 ",
    status = "release",
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#1a1c24",
    d20 = "#1f2129",
    d30 = "#23262f",
    d40 = "#282b35",
    m10 = "#47506b",
    m20 = "#5b678a",
    m30 = "#7581a4",
    m40 = "#858fae",
    l10 = "#91a0bc",
    l20 = "#9facc6",
    l30 = "#bcc9db",
    l40 = "#c8d7e8",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#23262f",
    gray = "#47506b",
    dark_red = "#bf5441",
    red = "#c06a59",
    dark_green = "#729e60",
    green = "#85b97e",
    dark_yellow = "#f2a557",
    yellow = "#dca958",
    dark_blue = "#9f99e5",
    blue = "#96b9e9",
    dark_magenta = "#d5a9c3",
    magenta = "#c4acd7",
    dark_cyan = "#619f80",
    cyan = "#7bb7a4",
    light_gray = "#91a0bc",
    white = "#bcc9db",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#1f2129",
        panel = "#1a1c24",
        float = "#1a1c24",
        active = "#23262f",
        disabled = "#47506b",
        hover = "#23262f",
        selection = "#282b35",
        search = "#282b35",
        contrast = "#bcc9db",
        negative = "#c06a59",
        warn = "#dca958",
        info = "#96b9e9",
        hint = "#f2a557",
        positive = "#85b97e",
        add = "#85b97e",
        delete = "#c06a59",
        modify = "#96b9e9",
    },
    fg = {
        default = "#bcc9db",
        subtle = "#91a0bc",
        accent = "#dca958",
        disabled = "#7581a4",
        contrast = "#1f2129",
        negative = "#c06a59",
        warn = "#dca958",
        info = "#96b9e9",
        hint = "#f2a557",
        positive = "#85b97e",
        add = "#85b97e",
        delete = "#c06a59",
        modify = "#96b9e9",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#96b9e9",
        builtin = "#96b9e9",
        member = "#9f99e5",
        parameter = "#f2a557",
    },
    property = {
        default = "#96b9e9",
    },
    string = {
        default = "#85b97e",
        doc = "#85b97e",
        regexp = "#f2a557",
        escape = "#c06a59",
    },
    constant = {
        default = "#f2a557",
        builtin = "#f2a557",
    },
    module = {
        default = "#9f99e5",
    },
    boolean = {
        default = "#f2a557",
    },
    number = {
        default = "#f2a557",
    },
    type = {
        default = "#7bb7a4",
        builtin = "#619f80",
    },
    attribute = {
        default = "#7bb7a4",
        builtin = "#7bb7a4",
    },
    func = {
        default = "#dca958",
        builtin = "#dca958",
        method = "#dca958",
    },
    constructor = {
        default = "#dca958",
    },
    keyword = {
        default = "#c06a59",
        import = "#c4acd7",
        export = "#c4acd7",
    },
    operator = {
        default = "#c4acd7",
    },
    punctuation = {
        default = "#91a0bc",
        delimiter = "#858fae",
        bracket = "#91a0bc",
        special = "#91a0bc",
    },
    comment = {
        default = "#47506b",
        doc = "#729e60",
        todo = "#85b97e",
        error = "#c06a59",
        warn = "#dca958",
        info = "#96b9e9",
        hint = "#f2a557",
    },
    markup = {
        heading = {
            h1 = "#dca958",
            h2 = "#dca958",
            h3 = "#dca958",
            h4 = "#91a0bc",
            h5 = "#91a0bc",
            h6 = "#91a0bc",
        },
        strong = "#dca958",
        italic = "#dca958",
        strikethrough = "#dca958",
        quote = "#85b97e",
        math = "#729e60",
        link = "#85b97e",
        list = {
            default = "#91a0bc",
            checked = "#85b97e",
            unchecked = "#91a0bc",
        },
        code = {
            fg = "#9facc6",
            bg = "#5b678a",
        },
    },
    tag = {
        default = "#dca958",
        builtin = "#dca958",
        attribute = "#f2a557",
        delimiter = "#f2a557",
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
