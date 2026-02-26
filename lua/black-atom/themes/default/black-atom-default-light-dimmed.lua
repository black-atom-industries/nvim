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
    d10 = "#232425",
    d20 = "#313334",
    d30 = "#3c3d3e",
    d40 = "#4c4d4e",
    m10 = "#5c6b76",
    m20 = "#6d7d88",
    m30 = "#8595a0",
    m40 = "#9dadb9",
    l10 = "#dcdee0",
    l20 = "#e4e6e8",
    l30 = "#eef0f2",
    l40 = "#f5f7f9",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#313334",
    gray = "#5c6b76",
    dark_red = "#6d7d88",
    red = "#6d7d88",
    dark_green = "#9dadb9",
    green = "#9dadb9",
    dark_yellow = "#8595a0",
    yellow = "#8595a0",
    dark_blue = "#6d7d88",
    blue = "#6d7d88",
    dark_magenta = "#2f8728",
    magenta = "#2f8728",
    dark_cyan = "#50a648",
    cyan = "#50a648",
    light_gray = "#9dadb9",
    white = "#dcdee0",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#eef0f2",
        panel = "#e4e6e8",
        float = "#e4e6e8",
        active = "#f5f7f9",
        disabled = "#dcdee0",
        hover = "#e4e6e8",
        selection = "#dcdee0",
        search = "#dcdee0",
        contrast = "#4c4d4e",
        negative = "#c9cff7",
        warn = "#cccdf1",
        info = "#c5d8e5",
        hint = "#cccdf1",
        positive = "#b1dae9",
        add = "#b1dae9",
        delete = "#c9cff7",
        modify = "#c5d8e5",
    },
    fg = {
        default = "#313334",
        subtle = "#5c6b76",
        accent = "#50a648",
        disabled = "#8595a0",
        contrast = "#e4e6e8",
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
        default = "#4c4d4e",
        builtin = "#4c4d4e",
        member = "#6d7d88",
        parameter = "#735dc4",
    },
    property = {
        default = "#6d7d88",
    },
    string = {
        default = "#2f8728",
        doc = "#2f8728",
        regexp = "#313334",
        escape = "#313334",
    },
    constant = {
        default = "#4c4d4e",
        builtin = "#3c3d3e",
    },
    module = {
        default = "#3c3d3e",
    },
    boolean = {
        default = "#4c4d4e",
    },
    number = {
        default = "#4c4d4e",
    },
    type = {
        default = "#50a648",
        builtin = "#2f8728",
    },
    attribute = {
        default = "#2f8728",
        builtin = "#2f8728",
    },
    func = {
        default = "#50a648",
        builtin = "#2f8728",
        method = "#2f8728",
    },
    constructor = {
        default = "#50a648",
    },
    keyword = {
        default = "#8f7be6",
        import = "#735dc4",
        export = "#735dc4",
    },
    operator = {
        default = "#3c3d3e",
    },
    punctuation = {
        default = "#4c4d4e",
        delimiter = "#4c4d4e",
        bracket = "#4c4d4e",
        special = "#4c4d4e",
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
            h1 = "#50a648",
            h2 = "#50a648",
            h3 = "#50a648",
            h4 = "#4c4d4e",
            h5 = "#4c4d4e",
            h6 = "#4c4d4e",
        },
        strong = "#50a648",
        italic = "#50a648",
        strikethrough = "#5c6b76",
        quote = "#6d7d88",
        math = "#6d7d88",
        link = "#2f8728",
        list = {
            default = "#5c6b76",
            checked = "#008400",
            unchecked = "#5c6b76",
        },
        code = {
            fg = "#4c4d4e",
            bg = "#e4e6e8",
        },
    },
    tag = {
        default = "#50a648",
        builtin = "#2f8728",
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
