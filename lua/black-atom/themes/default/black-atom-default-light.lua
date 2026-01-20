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
    l10 = "#d5d8d8",
    l20 = "#e2e5e5",
    l30 = "#ecefef",
    l40 = "#f6f9f9",
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
    dark_magenta = "#007a1f",
    magenta = "#007a1f",
    dark_cyan = "#009c67",
    cyan = "#009c67",
    light_gray = "#e2e5e5",
    white = "#ecefef",
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
        contrast = "#3c3d3e",
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
        default = "#28292a",
        subtle = "#51606b",
        accent = "#009c67",
        disabled = "#7f8f9a",
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
        default = "#3c3d3e",
        builtin = "#3c3d3e",
        member = "#687782",
        parameter = "#51606b",
    },
    property = {
        default = "#687782",
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
            h1 = "#009c67",
            h2 = "#009c67",
            h3 = "#009c67",
            h4 = "#3c3d3e",
            h5 = "#3c3d3e",
            h6 = "#3c3d3e",
        },
        strong = "#009c67",
        italic = "#009c67",
        strikethrough = "#51606b",
        quote = "#687782",
        math = "#687782",
        link = "#007a1f",
        list = {
            default = "#51606b",
            checked = "#008400",
            unchecked = "#51606b",
        },
        code = {
            fg = "#3c3d3e",
            bg = "#e2e5e5",
        },
    },
    tag = {
        default = "#009c67",
        builtin = "#007a1f",
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
