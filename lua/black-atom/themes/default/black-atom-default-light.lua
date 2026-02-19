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
    d10 = "#191b1c",
    d20 = "#28292a",
    d30 = "#313334",
    d40 = "#3c3d3e",
    m10 = "#51606b",
    m20 = "#687782",
    m30 = "#7f8f9a",
    m40 = "#97a7b3",
    l10 = "#dcdee0",
    l20 = "#e8eaeb",
    l30 = "#f5f7f9",
    l40 = "#fcfeff",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#3c3d3e",
    gray = "#51606b",
    dark_red = "#97a7b3",
    red = "#97a7b3",
    dark_green = "#7f8f9a",
    green = "#7f8f9a",
    dark_yellow = "#7f8f9a",
    yellow = "#7f8f9a",
    dark_blue = "#687782",
    blue = "#687782",
    dark_magenta = "#2f8728",
    magenta = "#2f8728",
    dark_cyan = "#60a259",
    cyan = "#60a259",
    light_gray = "#e8eaeb",
    white = "#f5f7f9",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#f5f7f9",
        panel = "#e8eaeb",
        float = "#e8eaeb",
        active = "#fcfeff",
        disabled = "#dcdee0",
        hover = "#e8eaeb",
        selection = "#dcdee0",
        search = "#dcdee0",
        contrast = "#3c3d3e",
        negative = "#c5d8fd",
        warn = "#c8d5f7",
        info = "#c8dee7",
        hint = "#c8d5f7",
        positive = "#b4e1e7",
        add = "#b4e1e7",
        delete = "#c5d8fd",
        modify = "#c8dee7",
    },
    fg = {
        default = "#28292a",
        subtle = "#51606b",
        accent = "#60a259",
        disabled = "#7f8f9a",
        contrast = "#e8eaeb",
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
        member = "#687782",
        parameter = "#735dc4",
    },
    property = {
        default = "#687782",
    },
    string = {
        default = "#2f8728",
        doc = "#2f8728",
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
        default = "#60a259",
        builtin = "#2f8728",
    },
    attribute = {
        default = "#2f8728",
        builtin = "#2f8728",
    },
    func = {
        default = "#60a259",
        builtin = "#2f8728",
        method = "#2f8728",
    },
    constructor = {
        default = "#60a259",
    },
    keyword = {
        default = "#8f81d6",
        import = "#735dc4",
        export = "#735dc4",
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
        default = "#687782",
        doc = "#687782",
        todo = "#008400",
        error = "#c70050",
        warn = "#ba2000",
        info = "#00839a",
        hint = "#00839a",
    },
    markup = {
        heading = {
            h1 = "#60a259",
            h2 = "#60a259",
            h3 = "#60a259",
            h4 = "#3c3d3e",
            h5 = "#3c3d3e",
            h6 = "#3c3d3e",
        },
        strong = "#60a259",
        italic = "#60a259",
        strikethrough = "#51606b",
        quote = "#687782",
        math = "#687782",
        link = "#2f8728",
        list = {
            default = "#51606b",
            checked = "#008400",
            unchecked = "#51606b",
        },
        code = {
            fg = "#3c3d3e",
            bg = "#e8eaeb",
        },
    },
    tag = {
        default = "#60a259",
        builtin = "#2f8728",
        attribute = "#51606b",
        delimiter = "#51606b",
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
