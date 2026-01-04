local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-default-light",
    label = "Black Atom — Light",
    appearance = "light",
    status = "release",
    collection = {
        key = "default",
        label = "Default",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#101212",
    d20 = "#1e2020",
    d30 = "#272929",
    d40 = "#313333",
    m10 = "#5c5e5e",
    m20 = "#727575",
    m30 = "#8a8d8d",
    m40 = "#a2a5a5",
    l10 = "#d5d8d8",
    l20 = "#e2e5e5",
    l30 = "#ecefef",
    l40 = "#f6f9f9",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#5c5e5e",
    gray = "#5c5e5e",
    dark_red = "#a2a5a5",
    red = "#a2a5a5",
    dark_green = "#8a8d8d",
    green = "#8a8d8d",
    dark_yellow = "#8a8d8d",
    yellow = "#8a8d8d",
    dark_blue = "#727575",
    blue = "#727575",
    dark_magenta = "#007a1f",
    magenta = "#007a1f",
    dark_cyan = "#009c67",
    cyan = "#009c67",
    light_gray = "#d5d8d8",
    white = "#d5d8d8",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#ecefef",
        panel = "#e2e5e5",
        float = "#e2e5e5",
        active = "#f6f9f9",
        disabled = "#d5d8d8",
        hover = "#e2e5e5",
        selection = "#d5d8d8",
        search = "#d5d8d8",
        contrast = "#313333",
        negative = "#cae8f3",
        warn = "#cde8df",
        info = "#d7e7e8",
        hint = "#cde8df",
        positive = "#cde9e6",
        add = "#cde9e6",
        delete = "#cae8f3",
        modify = "#d7e7e8",
    },
    fg = {
        default = "#1e2020",
        subtle = "#5c5e5e",
        accent = "#009c67",
        disabled = "#8a8d8d",
        contrast = "#e2e5e5",
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
        default = "#313333",
        builtin = "#313333",
        member = "#727575",
        parameter = "#5c5e5e",
    },
    property = {
        default = "#727575",
    },
    string = {
        default = "#007a1f",
        doc = "#007a1f",
        regexp = "#1e2020",
        escape = "#1e2020",
    },
    constant = {
        default = "#313333",
        builtin = "#272929",
    },
    module = {
        default = "#272929",
    },
    boolean = {
        default = "#313333",
    },
    number = {
        default = "#313333",
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
        default = "#1e2020",
        builtin = "#272929",
        method = "#272929",
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
        default = "#272929",
    },
    punctuation = {
        default = "#313333",
        delimiter = "#313333",
        bracket = "#313333",
        special = "#313333",
    },
    comment = {
        default = "#727575",
        doc = "#727575",
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
            h4 = "#313333",
            h5 = "#313333",
            h6 = "#313333",
        },
        strong = "#009c67",
        italic = "#009c67",
        strikethrough = "#5c5e5e",
        quote = "#727575",
        math = "#727575",
        link = "#007a1f",
        list = {
            default = "#5c5e5e",
            checked = "#008400",
            unchecked = "#5c5e5e",
        },
        code = {
            fg = "#313333",
            bg = "#e2e5e5",
        },
    },
    tag = {
        default = "#009c67",
        builtin = "#007a1f",
        attribute = "#5c5e5e",
        delimiter = "#5c5e5e",
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
