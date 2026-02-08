local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-mnml-ita-light",
    label = "Black Atom — MNM ∷ ITA Light",
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
    m10 = "#8c8c8c",
    m20 = "#9e9e9e",
    m30 = "#b1b1b1",
    m40 = "#c4c4c4",
    l10 = "#dedede",
    l20 = "#eeeeee",
    l30 = "#fcfcfc",
    l40 = "#ffffff",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#3d3d3d",
    gray = "#8c8c8c",
    dark_red = "#c4c4c4",
    red = "#c4c4c4",
    dark_green = "#b1b1b1",
    green = "#b1b1b1",
    dark_yellow = "#b1b1b1",
    yellow = "#b1b1b1",
    dark_blue = "#c4c4c4",
    blue = "#c4c4c4",
    dark_magenta = "#b1b1b1",
    magenta = "#b1b1b1",
    dark_cyan = "#c4c4c4",
    cyan = "#c4c4c4",
    light_gray = "#c4c4c4",
    white = "#c4c4c4",
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
        negative = "#ffd2ce",
        warn = "#edd5c5",
        info = "#c9dded",
        hint = "#edd5c5",
        positive = "#cde7ce",
        add = "#cde7ce",
        delete = "#ffd2ce",
        modify = "#c9dded",
    },
    fg = {
        default = "#161616",
        subtle = "#8c8c8c",
        accent = "#199c38",
        disabled = "#b1b1b1",
        contrast = "#eeeeee",
        negative = "#ef343b",
        warn = "#ae5700",
        info = "#0c79b4",
        hint = "#ae5700",
        positive = "#199c38",
        add = "#199c38",
        delete = "#ef343b",
        modify = "#0c79b4",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#3d3d3d",
        builtin = "#3d3d3d",
        member = "#8c8c8c",
        parameter = "#199c38",
    },
    property = {
        default = "#8c8c8c",
    },
    string = {
        default = "#9e9e9e",
        doc = "#ef343b",
        regexp = "#199c38",
        escape = "#199c38",
    },
    constant = {
        default = "#161616",
        builtin = "#090909",
    },
    module = {
        default = "#292929",
    },
    boolean = {
        default = "#8c8c8c",
    },
    number = {
        default = "#3d3d3d",
    },
    type = {
        default = "#090909",
        builtin = "#3d3d3d",
    },
    attribute = {
        default = "#ef343b",
        builtin = "#ef343b",
    },
    func = {
        default = "#199c38",
        builtin = "#ef343b",
        method = "#ef343b",
    },
    constructor = {
        default = "#199c38",
    },
    keyword = {
        default = "#ef343b",
        import = "#ef343b",
        export = "#ef343b",
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
        default = "#9e9e9e",
        doc = "#9e9e9e",
        todo = "#199c38",
        error = "#ef343b",
        warn = "#ae5700",
        info = "#0c79b4",
        hint = "#0c79b4",
    },
    markup = {
        heading = {
            h1 = "#199c38",
            h2 = "#199c38",
            h3 = "#199c38",
            h4 = "#8c8c8c",
            h5 = "#8c8c8c",
            h6 = "#8c8c8c",
        },
        strong = "#199c38",
        italic = "#199c38",
        strikethrough = "#199c38",
        quote = "#b1b1b1",
        math = "#9e9e9e",
        link = "#ef343b",
        list = {
            default = "#8c8c8c",
            checked = "#199c38",
            unchecked = "#8c8c8c",
        },
        code = {
            fg = "#3d3d3d",
            bg = "#eeeeee",
        },
    },
    tag = {
        default = "#ef343b",
        builtin = "#199c38",
        attribute = "#8c8c8c",
        delimiter = "#b1b1b1",
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
