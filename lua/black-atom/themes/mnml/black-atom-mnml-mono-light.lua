local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-mnml-mono-light",
    label = "Black Atom — MNM ∷ Mono Light",
    appearance = "light",
    status = "development",
    collection = {
        key = "mnml",
        label = "MNM",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#090909",
    d20 = "#161616",
    d30 = "#292929",
    d40 = "#3d3d3d",
    m10 = "#525252",
    m20 = "#696969",
    m30 = "#868686",
    m40 = "#a4a4a4",
    l10 = "#dedede",
    l20 = "#eeeeee",
    l30 = "#fcfcfc",
    l40 = "#ffffff",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#3d3d3d",
    gray = "#525252",
    dark_red = "#a4a4a4",
    red = "#a4a4a4",
    dark_green = "#868686",
    green = "#868686",
    dark_yellow = "#868686",
    yellow = "#868686",
    dark_blue = "#a4a4a4",
    blue = "#a4a4a4",
    dark_magenta = "#868686",
    magenta = "#868686",
    dark_cyan = "#a4a4a4",
    cyan = "#a4a4a4",
    light_gray = "#a4a4a4",
    white = "#a4a4a4",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#fcfcfc",
        panel = "#eeeeee",
        float = "#eeeeee",
        active = "#ffffff",
        disabled = "#dedede",
        hover = "#eeeeee",
        selection = "#dedede",
        search = "#dedede",
        contrast = "#3d3d3d",
        negative = "#ffd6d1",
        warn = "#f4deca",
        info = "#cee9fb",
        hint = "#f4deca",
        positive = "#dee7ca",
        add = "#dee7ca",
        delete = "#ffd6d1",
        modify = "#cee9fb",
    },
    fg = {
        default = "#161616",
        subtle = "#525252",
        accent = "#2e2e2e",
        disabled = "#868686",
        contrast = "#eeeeee",
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
        default = "#3d3d3d",
        builtin = "#3d3d3d",
        member = "#525252",
        parameter = "#2e2e2e",
    },
    property = {
        default = "#525252",
    },
    string = {
        default = "#696969",
        doc = "#4d4d4d",
        regexp = "#2e2e2e",
        escape = "#2e2e2e",
    },
    constant = {
        default = "#161616",
        builtin = "#090909",
    },
    module = {
        default = "#292929",
    },
    boolean = {
        default = "#525252",
    },
    number = {
        default = "#3d3d3d",
    },
    type = {
        default = "#090909",
        builtin = "#3d3d3d",
    },
    attribute = {
        default = "#4d4d4d",
        builtin = "#4d4d4d",
    },
    func = {
        default = "#2e2e2e",
        builtin = "#4d4d4d",
        method = "#4d4d4d",
    },
    constructor = {
        default = "#2e2e2e",
    },
    keyword = {
        default = "#4d4d4d",
        import = "#4d4d4d",
        export = "#4d4d4d",
    },
    operator = {
        default = "#161616",
    },
    punctuation = {
        default = "#3d3d3d",
        delimiter = "#3d3d3d",
        bracket = "#3d3d3d",
        special = "#3d3d3d",
    },
    comment = {
        default = "#696969",
        doc = "#696969",
        todo = "#819e00",
        error = "#f14d4c",
        warn = "#cd7b00",
        info = "#00a3e9",
        hint = "#00a3e9",
    },
    markup = {
        heading = {
            h1 = "#2e2e2e",
            h2 = "#2e2e2e",
            h3 = "#2e2e2e",
            h4 = "#525252",
            h5 = "#525252",
            h6 = "#525252",
        },
        strong = "#2e2e2e",
        italic = "#2e2e2e",
        strikethrough = "#2e2e2e",
        quote = "#868686",
        math = "#696969",
        link = "#4d4d4d",
        list = {
            default = "#525252",
            checked = "#819e00",
            unchecked = "#525252",
        },
        code = {
            fg = "#3d3d3d",
            bg = "#eeeeee",
        },
    },
    tag = {
        default = "#4d4d4d",
        builtin = "#2e2e2e",
        attribute = "#525252",
        delimiter = "#868686",
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
