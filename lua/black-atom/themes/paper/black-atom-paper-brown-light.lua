local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-paper-brown-light",
    label = "Black Atom — PAPER ∷ Brown Light",
    appearance = "light",
    status = "development",
    collection = {
        key = "paper",
        label = "PAPER",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#201f1d",
    d20 = "#2b2826",
    d30 = "#3c3731",
    d40 = "#4e463d",
    m10 = "#7a7062",
    m20 = "#908474",
    m30 = "#aa9c8a",
    m40 = "#c4b5a1",
    l10 = "#decfba",
    l20 = "#e8d8c4",
    l30 = "#f2e2ce",
    l40 = "#fdf0de",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#4e463d",
    gray = "#7a7062",
    dark_red = "#c4b5a1",
    red = "#c4b5a1",
    dark_green = "#aa9c8a",
    green = "#aa9c8a",
    dark_yellow = "#aa9c8a",
    yellow = "#aa9c8a",
    dark_blue = "#c4b5a1",
    blue = "#c4b5a1",
    dark_magenta = "#aa9c8a",
    magenta = "#aa9c8a",
    dark_cyan = "#c4b5a1",
    cyan = "#c4b5a1",
    light_gray = "#c4b5a1",
    white = "#c4b5a1",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#f2e2ce",
        panel = "#e8d8c4",
        float = "#e8d8c4",
        active = "#fdf0de",
        disabled = "#decfba",
        hover = "#e8d8c4",
        selection = "#decfba",
        search = "#decfba",
        contrast = "#4e463d",
        negative = "#f8cdc8",
        warn = "#ebd5c0",
        info = "#c5dff1",
        hint = "#ebd5c0",
        positive = "#d4ddc1",
        add = "#d4ddc1",
        delete = "#f8cdc8",
        modify = "#c5dff1",
    },
    fg = {
        default = "#2b2826",
        subtle = "#7a7062",
        accent = "#242424",
        disabled = "#aa9c8a",
        contrast = "#e8d8c4",
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
        default = "#3c3731",
        builtin = "#4e463d",
        member = "#4f4d48",
        parameter = "#4f4d48",
    },
    property = {
        default = "#7a7062",
    },
    string = {
        default = "#908474",
        doc = "#4f4d48",
        regexp = "#242424",
        escape = "#242424",
    },
    constant = {
        default = "#2b2826",
        builtin = "#201f1d",
    },
    module = {
        default = "#3c3731",
    },
    boolean = {
        default = "#7a7062",
    },
    number = {
        default = "#4e463d",
    },
    type = {
        default = "#201f1d",
        builtin = "#4e463d",
    },
    attribute = {
        default = "#4f4d48",
        builtin = "#4f4d48",
    },
    func = {
        default = "#242424",
        builtin = "#4f4d48",
        method = "#4f4d48",
    },
    constructor = {
        default = "#242424",
    },
    keyword = {
        default = "#4f4d48",
        import = "#4f4d48",
        export = "#4f4d48",
    },
    operator = {
        default = "#2b2826",
    },
    punctuation = {
        default = "#4e463d",
        delimiter = "#4e463d",
        bracket = "#4e463d",
        special = "#4e463d",
    },
    comment = {
        default = "#908474",
        doc = "#908474",
        todo = "#819e00",
        error = "#f14d4c",
        warn = "#cd7b00",
        info = "#00a3e9",
        hint = "#00a3e9",
    },
    markup = {
        heading = {
            h1 = "#242424",
            h2 = "#242424",
            h3 = "#242424",
            h4 = "#7a7062",
            h5 = "#7a7062",
            h6 = "#7a7062",
        },
        strong = "#242424",
        italic = "#242424",
        strikethrough = "#242424",
        quote = "#aa9c8a",
        math = "#908474",
        link = "#4f4d48",
        list = {
            default = "#7a7062",
            checked = "#819e00",
            unchecked = "#7a7062",
        },
        code = {
            fg = "#4e463d",
            bg = "#e8d8c4",
        },
    },
    tag = {
        default = "#4f4d48",
        builtin = "#242424",
        attribute = "#7a7062",
        delimiter = "#aa9c8a",
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
