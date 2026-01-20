local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-default-light-dimmed",
    label = "Black Atom — Light Dimmed",
    appearance = "light",
    status = "release",
    collection = {
        key = "default",
        label = "Default",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#191b1b",
    d20 = "#272929",
    d30 = "#313333",
    d40 = "#3b3e3d",
    m10 = "#676969",
    m20 = "#787b7b",
    m30 = "#909393",
    m40 = "#a9abab",
    l10 = "#b5b8b8",
    l20 = "#c2c5c5",
    l30 = "#cfd1d1",
    l40 = "#dcdfde",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#3b3e3d",
    gray = "#676969",
    dark_red = "#a9abab",
    red = "#a9abab",
    dark_green = "#909393",
    green = "#909393",
    dark_yellow = "#909393",
    yellow = "#909393",
    dark_blue = "#787b7b",
    blue = "#787b7b",
    dark_magenta = "#007a1f",
    magenta = "#007a1f",
    dark_cyan = "#009c67",
    cyan = "#009c67",
    light_gray = "#c2c5c5",
    white = "#cfd1d1",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#cfd1d1",
        panel = "#c2c5c5",
        float = "#c2c5c5",
        active = "#dcdfde",
        disabled = "#b5b8b8",
        hover = "#c2c5c5",
        selection = "#b5b8b8",
        search = "#b5b8b8",
        contrast = "#3b3e3d",
        negative = "#bdd3c0",
        warn = "#bcd2c2",
        info = "#c2d2ce",
        hint = "#bcd2c2",
        positive = "#bad3c9",
        add = "#bad3c9",
        delete = "#bdd3c0",
        modify = "#c2d2ce",
    },
    fg = {
        default = "#272929",
        subtle = "#676969",
        accent = "#009c67",
        disabled = "#909393",
        contrast = "#c2c5c5",
        negative = "#c70050",
        warn = "#ba2000",
        info = "#00839a",
        hint = "#ba2000",
        positive = "#008400",
        add = "#008400",
        delete = "#c70050",
        modify = "#00839a",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#3b3e3d",
        builtin = "#3b3e3d",
        member = "#787b7b",
        parameter = "#676969",
    },
    property = {
        default = "#787b7b",
    },
    string = {
        default = "#007a1f",
        doc = "#007a1f",
        regexp = "#272929",
        escape = "#272929",
    },
    constant = {
        default = "#3b3e3d",
        builtin = "#313333",
    },
    module = {
        default = "#313333",
    },
    boolean = {
        default = "#3b3e3d",
    },
    number = {
        default = "#3b3e3d",
    },
    type = {
        default = "#009c67",
        builtin = "#007a1f",
    },
    attribute = {
        default = "#007a1f",
        builtin = "#007a1f",
    },
    func = {
        default = "#272929",
        builtin = "#313333",
        method = "#313333",
    },
    constructor = {
        default = "#009c67",
    },
    keyword = {
        default = "#7d5be6",
        import = "#4446cb",
        export = "#4446cb",
    },
    operator = {
        default = "#313333",
    },
    punctuation = {
        default = "#3b3e3d",
        delimiter = "#3b3e3d",
        bracket = "#3b3e3d",
        special = "#3b3e3d",
    },
    comment = {
        default = "#787b7b",
        doc = "#787b7b",
        todo = "#008400",
        error = "#c70050",
        warn = "#ba2000",
        info = "#00839a",
        hint = "#00839a",
    },
    markup = {
        heading = {
            h1 = "#009c67",
            h2 = "#009c67",
            h3 = "#009c67",
            h4 = "#3b3e3d",
            h5 = "#3b3e3d",
            h6 = "#3b3e3d",
        },
        strong = "#009c67",
        italic = "#009c67",
        strikethrough = "#676969",
        quote = "#787b7b",
        math = "#787b7b",
        link = "#007a1f",
        list = {
            default = "#676969",
            checked = "#008400",
            unchecked = "#676969",
        },
        code = {
            fg = "#3b3e3d",
            bg = "#c2c5c5",
        },
    },
    tag = {
        default = "#009c67",
        builtin = "#007a1f",
        attribute = "#676969",
        delimiter = "#676969",
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
