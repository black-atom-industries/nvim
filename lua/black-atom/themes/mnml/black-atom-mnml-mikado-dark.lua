local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-mnml-mikado-dark",
    label = "Black Atom — MNM ∷ Mikado Dark",
    appearance = "dark",
    status = "development",
    collection = {
        key = "mnml",
        label = "MNM",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#0a1d29",
    d20 = "#0c2230",
    d30 = "#1c2b34",
    d40 = "#2d404b",
    m10 = "#576a76",
    m20 = "#627684",
    m30 = "#6c8392",
    m40 = "#8a9da8",
    l10 = "#a8b9c0",
    l20 = "#b4c3c9",
    l30 = "#c3cfd4",
    l40 = "#d2dbdf",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#576a76",
    gray = "#576a76",
    dark_red = "#576a76",
    red = "#8a9da8",
    dark_green = "#576a76",
    green = "#6c8392",
    dark_yellow = "#ffb000",
    yellow = "#ffb000",
    dark_blue = "#5a89a6",
    blue = "#5a89a6",
    dark_magenta = "#576a76",
    magenta = "#6c8392",
    dark_cyan = "#576a76",
    cyan = "#8a9da8",
    light_gray = "#576a76",
    white = "#b4c3c9",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#0a1d29",
        panel = "#0c2230",
        float = "#0c2230",
        active = "#1c2b34",
        disabled = "#2d404b",
        hover = "#1c2b34",
        selection = "#2d404b",
        search = "#2d404b",
        contrast = "#a8b9c0",
        negative = "#DB504A",
        warn = "#ffb000",
        info = "#5a89a6",
        hint = "#ffb000",
        positive = "#4EBA65",
        add = "#4EBA65",
        delete = "#DB504A",
        modify = "#5a89a6",
    },
    fg = {
        default = "#c3cfd4",
        subtle = "#8a9da8",
        accent = "#ffb000",
        disabled = "#627684",
        contrast = "#0c2230",
        negative = "#DB504A",
        warn = "#ffb000",
        info = "#5a89a6",
        hint = "#ffb000",
        positive = "#4EBA65",
        add = "#4EBA65",
        delete = "#DB504A",
        modify = "#5a89a6",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#a8b9c0",
        builtin = "#a8b9c0",
        member = "#5a89a6",
        parameter = "#ffb000",
    },
    property = {
        default = "#5a89a6",
    },
    string = {
        default = "#b4c3c9",
        doc = "#a8b9c0",
        regexp = "#d2dbdf",
        escape = "#d2dbdf",
    },
    constant = {
        default = "#a8b9c0",
        builtin = "#b4c3c9",
    },
    module = {
        default = "#b4c3c9",
    },
    boolean = {
        default = "#8a9da8",
    },
    number = {
        default = "#a8b9c0",
    },
    type = {
        default = "#d2dbdf",
        builtin = "#d2dbdf",
    },
    attribute = {
        default = "#5a89a6",
        builtin = "#5a89a6",
    },
    func = {
        default = "#ffb000",
        builtin = "#5a89a6",
        method = "#5a89a6",
    },
    constructor = {
        default = "#ffb000",
    },
    keyword = {
        default = "#c3cfd4",
        import = "#d2dbdf",
        export = "#d2dbdf",
    },
    operator = {
        default = "#c3cfd4",
    },
    punctuation = {
        default = "#a8b9c0",
        delimiter = "#a8b9c0",
        bracket = "#a8b9c0",
        special = "#a8b9c0",
    },
    comment = {
        default = "#6c8392",
        doc = "#6c8392",
        todo = "#4EBA65",
        error = "#DB504A",
        warn = "#ffb000",
        info = "#5a89a6",
        hint = "#5a89a6",
    },
    markup = {
        heading = {
            h1 = "#ffb000",
            h2 = "#ffb000",
            h3 = "#ffb000",
            h4 = "#8a9da8",
            h5 = "#8a9da8",
            h6 = "#8a9da8",
        },
        strong = "#ffb000",
        italic = "#ffb000",
        strikethrough = "#ffb000",
        quote = "#627684",
        math = "#627684",
        link = "#5a89a6",
        list = {
            default = "#8a9da8",
            checked = "#4EBA65",
            unchecked = "#8a9da8",
        },
        code = {
            fg = "#a8b9c0",
            bg = "#0c2230",
        },
    },
    tag = {
        default = "#ffb000",
        builtin = "#5a89a6",
        attribute = "#6c8392",
        delimiter = "#a8b9c0",
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
