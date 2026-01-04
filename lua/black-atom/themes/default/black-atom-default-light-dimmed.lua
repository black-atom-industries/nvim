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
    l10 = "#c8cbcb",
    l20 = "#d5d8d8",
    l30 = "#dfe2e2",
    l40 = "#e9ecec",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#676969",
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
    light_gray = "#c8cbcb",
    white = "#c8cbcb",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#dfe2e2",
        panel = "#d5d8d8",
        float = "#d5d8d8",
        active = "#e9ecec",
        disabled = "#c8cbcb",
        hover = "#d5d8d8",
        selection = "#c8cbcb",
        search = "#c8cbcb",
        contrast = "#3b3e3d",
        negative = "#c0dde8",
        warn = "#c2ddd4",
        info = "#ccdddd",
        hint = "#c2ddd4",
        positive = "#c2dedb",
        add = "#c2dedb",
        delete = "#c0dde8",
        modify = "#ccdddd",
    },
    fg = {
        default = "#272929",
        subtle = "#676969",
        accent = "#009c67",
        disabled = "#909393",
        contrast = "#d5d8d8",
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
            bg = "#d5d8d8",
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
