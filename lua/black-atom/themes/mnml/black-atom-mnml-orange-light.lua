local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-mnml-orange-light",
    label = "Black Atom — MNM ∷ Orange Light",
    appearance = "light",
    status = "development",
    collection = {
        key = "mnml",
        label = "MNM",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#243540",
    d20 = "#2e404b",
    d30 = "#384b56",
    d40 = "#435561",
    m10 = "#47687c",
    m20 = "#55778b",
    m30 = "#63859a",
    m40 = "#7295aa",
    l10 = "#b4c7d4",
    l20 = "#c0d4e1",
    l30 = "#cde1ee",
    l40 = "#daeffb",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#47687c",
    gray = "#47687c",
    dark_red = "#47687c",
    red = "#7295aa",
    dark_green = "#47687c",
    green = "#63859a",
    dark_yellow = "#f57400",
    yellow = "#ff8c00",
    dark_blue = "#47687c",
    blue = "#55778b",
    dark_magenta = "#47687c",
    magenta = "#63859a",
    dark_cyan = "#47687c",
    cyan = "#7295aa",
    light_gray = "#47687c",
    white = "#c0d4e1",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#daeffb",
        panel = "#cde1ee",
        float = "#cde1ee",
        active = "#c0d4e1",
        disabled = "#b4c7d4",
        hover = "#c0d4e1",
        selection = "#b4c7d4",
        search = "#b4c7d4",
        contrast = "#435561",
        negative = "#cce1ff",
        warn = "#bcecf3",
        info = "#c1e3f8",
        hint = "#bcecf3",
        positive = "#bce5f2",
        add = "#bce5f2",
        delete = "#cce1ff",
        modify = "#c1e3f8",
    },
    fg = {
        default = "#2e404b",
        subtle = "#47687c",
        accent = "#ff8c00",
        disabled = "#63859a",
        contrast = "#c0d4e1",
        negative = "#f57400",
        warn = "#ff8c00",
        info = "#3a93e6",
        hint = "#ff8c00",
        positive = "#3aa85b",
        add = "#3aa85b",
        delete = "#f57400",
        modify = "#3a93e6",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#435561",
        builtin = "#435561",
        member = "#47687c",
        parameter = "#ff8c00",
    },
    property = {
        default = "#f57400",
    },
    string = {
        default = "#55778b",
        doc = "#f57400",
        regexp = "#ff8c00",
        escape = "#ff8c00",
    },
    constant = {
        default = "#2e404b",
        builtin = "#243540",
    },
    module = {
        default = "#384b56",
    },
    boolean = {
        default = "#47687c",
    },
    number = {
        default = "#435561",
    },
    type = {
        default = "#243540",
        builtin = "#435561",
    },
    attribute = {
        default = "#f57400",
        builtin = "#f57400",
    },
    func = {
        default = "#ff8c00",
        builtin = "#f57400",
        method = "#f57400",
    },
    constructor = {
        default = "#ff8c00",
    },
    keyword = {
        default = "#f57400",
        import = "#ef632c",
        export = "#ef632c",
    },
    operator = {
        default = "#2e404b",
    },
    punctuation = {
        default = "#435561",
        delimiter = "#435561",
        bracket = "#435561",
        special = "#435561",
    },
    comment = {
        default = "#55778b",
        doc = "#55778b",
        todo = "#3aa85b",
        error = "#f57400",
        warn = "#ff8c00",
        info = "#3a93e6",
        hint = "#3a93e6",
    },
    markup = {
        heading = {
            h1 = "#ff8c00",
            h2 = "#ff8c00",
            h3 = "#ff8c00",
            h4 = "#47687c",
            h5 = "#47687c",
            h6 = "#47687c",
        },
        strong = "#ff8c00",
        italic = "#ff8c00",
        strikethrough = "#ff8c00",
        quote = "#63859a",
        math = "#55778b",
        link = "#f57400",
        list = {
            default = "#47687c",
            checked = "#3aa85b",
            unchecked = "#47687c",
        },
        code = {
            fg = "#435561",
            bg = "#cde1ee",
        },
    },
    tag = {
        default = "#f57400",
        builtin = "#ff8c00",
        attribute = "#47687c",
        delimiter = "#63859a",
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
