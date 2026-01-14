local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-mnml-clay-dark",
    label = "Black Atom — MNM ∷ Clay Dark",
    appearance = "dark",
    status = "development",
    collection = {
        key = "mnml",
        label = "MNM",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#23211c",
    d20 = "#302e28",
    d30 = "#3c3a35",
    d40 = "#4a4842",
    m10 = "#777161",
    m20 = "#868070",
    m30 = "#a49e8d",
    m40 = "#b4ae9c",
    l10 = "#c2beac",
    l20 = "#d3cebc",
    l30 = "#e3decc",
    l40 = "#f3efdc",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#4a4842",
    gray = "#777161",
    dark_red = "#b4ae9c",
    red = "#b4ae9c",
    dark_green = "#a49e8d",
    green = "#a49e8d",
    dark_yellow = "#a49e8d",
    yellow = "#a49e8d",
    dark_blue = "#868070",
    blue = "#868070",
    dark_magenta = "#a49e8d",
    magenta = "#a49e8d",
    dark_cyan = "#b4ae9c",
    cyan = "#b4ae9c",
    light_gray = "#d3cebc",
    white = "#e3decc",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#302e28",
        panel = "#23211c",
        float = "#23211c",
        active = "#3c3a35",
        disabled = "#4a4842",
        hover = "#3c3a35",
        selection = "#4a4842",
        search = "#4a4842",
        contrast = "#c2beac",
        negative = "#3c3222",
        warn = "#393326",
        info = "#343527",
        hint = "#393326",
        positive = "#373426",
        add = "#373426",
        delete = "#3c3222",
        modify = "#343527",
    },
    fg = {
        default = "#e3decc",
        subtle = "#a49e8d",
        accent = "#fc8a61",
        disabled = "#868070",
        contrast = "#302e28",
        negative = "#fc8a61",
        warn = "#d3a563",
        info = "#6ab8e4",
        hint = "#d3a563",
        positive = "#99bb77",
        add = "#99bb77",
        delete = "#fc8a61",
        modify = "#6ab8e4",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#d3cebc",
        builtin = "#c2beac",
        member = "#b8ae8a",
        parameter = "#b8ae8a",
    },
    property = {
        default = "#b8ae8a",
    },
    string = {
        default = "#d3cebc",
        doc = "#c2beac",
        regexp = "#f3efdc",
        escape = "#f3efdc",
    },
    constant = {
        default = "#c2beac",
        builtin = "#d3cebc",
    },
    module = {
        default = "#d3cebc",
    },
    boolean = {
        default = "#b4ae9c",
    },
    number = {
        default = "#c2beac",
    },
    type = {
        default = "#f3efdc",
        builtin = "#f3efdc",
    },
    attribute = {
        default = "#b8ae8a",
        builtin = "#b8ae8a",
    },
    func = {
        default = "#fc8a61",
        builtin = "#b8ae8a",
        method = "#b8ae8a",
    },
    constructor = {
        default = "#fc8a61",
    },
    keyword = {
        default = "#e3decc",
        import = "#f3efdc",
        export = "#f3efdc",
    },
    operator = {
        default = "#e3decc",
    },
    punctuation = {
        default = "#c2beac",
        delimiter = "#c2beac",
        bracket = "#c2beac",
        special = "#c2beac",
    },
    comment = {
        default = "#a49e8d",
        doc = "#a49e8d",
        todo = "#99bb77",
        error = "#fc8a61",
        warn = "#d3a563",
        info = "#6ab8e4",
        hint = "#6ab8e4",
    },
    markup = {
        heading = {
            h1 = "#fc8a61",
            h2 = "#fc8a61",
            h3 = "#fc8a61",
            h4 = "#b4ae9c",
            h5 = "#b4ae9c",
            h6 = "#b4ae9c",
        },
        strong = "#fc8a61",
        italic = "#fc8a61",
        strikethrough = "#fc8a61",
        quote = "#868070",
        math = "#868070",
        link = "#b8ae8a",
        list = {
            default = "#b4ae9c",
            checked = "#99bb77",
            unchecked = "#b4ae9c",
        },
        code = {
            fg = "#c2beac",
            bg = "#23211c",
        },
    },
    tag = {
        default = "#fc8a61",
        builtin = "#b8ae8a",
        attribute = "#a49e8d",
        delimiter = "#c2beac",
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
