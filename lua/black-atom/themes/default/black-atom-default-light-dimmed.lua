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
    d10 = "#191b1c",
    d20 = "#28292a",
    d30 = "#313334",
    d40 = "#3c3d3e",
    m10 = "#5c6b76",
    m20 = "#6d7d88",
    m30 = "#8595a0",
    m40 = "#9dadb9",
    l10 = "#b5b8b8",
    l20 = "#c2c5c5",
    l30 = "#cfd1d1",
    l40 = "#dcdfde",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#3c3d3e",
    gray = "#5c6b76",
    dark_red = "#9dadb9",
    red = "#9dadb9",
    dark_green = "#8595a0",
    green = "#8595a0",
    dark_yellow = "#8595a0",
    yellow = "#8595a0",
    dark_blue = "#6d7d88",
    blue = "#6d7d88",
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
        contrast = "#3c3d3e",
        negative = "#b2c9a4",
        warn = "#afc7a8",
        info = "#b0c9c5",
        hint = "#afc7a8",
        positive = "#a4cbba",
        add = "#a4cbba",
        delete = "#b2c9a4",
        modify = "#b0c9c5",
    },
    fg = {
        default = "#28292a",
        subtle = "#5c6b76",
        accent = "#009c67",
        disabled = "#8595a0",
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
        default = "#3c3d3e",
        builtin = "#3c3d3e",
        member = "#6d7d88",
        parameter = "#5c6b76",
    },
    property = {
        default = "#6d7d88",
    },
    string = {
        default = "#007a1f",
        doc = "#007a1f",
        regexp = "#28292a",
        escape = "#28292a",
    },
    constant = {
        default = "#3c3d3e",
        builtin = "#313334",
    },
    module = {
        default = "#313334",
    },
    boolean = {
        default = "#3c3d3e",
    },
    number = {
        default = "#3c3d3e",
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
        default = "#28292a",
        builtin = "#313334",
        method = "#313334",
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
        default = "#313334",
    },
    punctuation = {
        default = "#3c3d3e",
        delimiter = "#3c3d3e",
        bracket = "#3c3d3e",
        special = "#3c3d3e",
    },
    comment = {
        default = "#6d7d88",
        doc = "#6d7d88",
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
            h4 = "#3c3d3e",
            h5 = "#3c3d3e",
            h6 = "#3c3d3e",
        },
        strong = "#009c67",
        italic = "#009c67",
        strikethrough = "#5c6b76",
        quote = "#6d7d88",
        math = "#6d7d88",
        link = "#007a1f",
        list = {
            default = "#5c6b76",
            checked = "#008400",
            unchecked = "#5c6b76",
        },
        code = {
            fg = "#3c3d3e",
            bg = "#c2c5c5",
        },
    },
    tag = {
        default = "#009c67",
        builtin = "#007a1f",
        attribute = "#5c6b76",
        delimiter = "#5c6b76",
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
