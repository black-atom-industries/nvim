local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-mnml-mikado-light",
    label = "Black Atom — MNM ∷ Mikado Light",
    appearance = "light",
    status = "development",
    collection = {
        key = "mnml",
        label = "MNM",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#121b21",
    d20 = "#0f212d",
    d30 = "#1c2b34",
    d40 = "#2d404b",
    m10 = "#4c5d67",
    m20 = "#576975",
    m30 = "#617683",
    m40 = "#7b919d",
    l10 = "#a8b9c0",
    l20 = "#b4c3c9",
    l30 = "#c3cfd4",
    l40 = "#d2dbdf",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#4c5d67",
    gray = "#4c5d67",
    dark_red = "#4c5d67",
    red = "#7b919d",
    dark_green = "#4c5d67",
    green = "#617683",
    dark_yellow = "#4c5d67",
    yellow = "#617683",
    dark_blue = "#cc8f00",
    blue = "#cc8f00",
    dark_magenta = "#4c5d67",
    magenta = "#617683",
    dark_cyan = "#4c5d67",
    cyan = "#7b919d",
    light_gray = "#4c5d67",
    white = "#b4c3c9",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#d2dbdf",
        panel = "#c3cfd4",
        float = "#c3cfd4",
        active = "#b4c3c9",
        disabled = "#a8b9c0",
        hover = "#b4c3c9",
        selection = "#a8b9c0",
        search = "#a8b9c0",
        contrast = "#2d404b",
        negative = "#d5c4c5",
        warn = "#d8d7bf",
        info = "#bdcdd6",
        hint = "#d8d7bf",
        positive = "#bad9cf",
        add = "#bad9cf",
        delete = "#d5c4c5",
        modify = "#bdcdd6",
    },
    fg = {
        default = "#0f212d",
        subtle = "#4c5d67",
        accent = "#cc8f00",
        disabled = "#617683",
        contrast = "#b4c3c9",
        negative = "#e64433",
        warn = "#f7bd08",
        info = "#457ea1",
        hint = "#f7bd08",
        positive = "#2fd073",
        add = "#2fd073",
        delete = "#e64433",
        modify = "#457ea1",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#2d404b",
        builtin = "#2d404b",
        member = "#4c5d67",
        parameter = "#cc8f00",
    },
    property = {
        default = "#457ea1",
    },
    string = {
        default = "#7b919d",
        doc = "#457ea1",
        regexp = "#cc8f00",
        escape = "#cc8f00",
    },
    constant = {
        default = "#0f212d",
        builtin = "#121b21",
    },
    module = {
        default = "#1c2b34",
    },
    boolean = {
        default = "#4c5d67",
    },
    number = {
        default = "#2d404b",
    },
    type = {
        default = "#121b21",
        builtin = "#2d404b",
    },
    attribute = {
        default = "#457ea1",
        builtin = "#457ea1",
    },
    func = {
        default = "#cc8f00",
        builtin = "#457ea1",
        method = "#457ea1",
    },
    constructor = {
        default = "#cc8f00",
    },
    keyword = {
        default = "#0f212d",
        import = "#1c2b34",
        export = "#1c2b34",
    },
    operator = {
        default = "#0f212d",
    },
    punctuation = {
        default = "#2d404b",
        delimiter = "#2d404b",
        bracket = "#2d404b",
        special = "#2d404b",
    },
    comment = {
        default = "#576975",
        doc = "#576975",
        todo = "#2fd073",
        error = "#e64433",
        warn = "#f7bd08",
        info = "#457ea1",
        hint = "#457ea1",
    },
    markup = {
        heading = {
            h1 = "#cc8f00",
            h2 = "#cc8f00",
            h3 = "#cc8f00",
            h4 = "#4c5d67",
            h5 = "#4c5d67",
            h6 = "#4c5d67",
        },
        strong = "#cc8f00",
        italic = "#cc8f00",
        strikethrough = "#cc8f00",
        quote = "#617683",
        math = "#576975",
        link = "#457ea1",
        list = {
            default = "#4c5d67",
            checked = "#2fd073",
            unchecked = "#4c5d67",
        },
        code = {
            fg = "#2d404b",
            bg = "#c3cfd4",
        },
    },
    tag = {
        default = "#457ea1",
        builtin = "#cc8f00",
        attribute = "#4c5d67",
        delimiter = "#617683",
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
