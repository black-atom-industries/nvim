local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-mnml-clay-light",
    label = "Black Atom — MNM ∷ Clay Light",
    appearance = "light",
    status = "development",
    collection = {
        key = "mnml",
        label = "MNM",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#252117",
    d20 = "#322e22",
    d30 = "#3e3a2f",
    d40 = "#4c473c",
    m10 = "#5d553f",
    m20 = "#6b634d",
    m30 = "#79715a",
    m40 = "#888069",
    l10 = "#ddd8c2",
    l20 = "#ebe5cf",
    l30 = "#f8f2dc",
    l40 = "#fff9e2",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#4c473c",
    gray = "#5d553f",
    dark_red = "#888069",
    red = "#888069",
    dark_green = "#79715a",
    green = "#79715a",
    dark_yellow = "#79715a",
    yellow = "#79715a",
    dark_blue = "#888069",
    blue = "#888069",
    dark_magenta = "#79715a",
    magenta = "#79715a",
    dark_cyan = "#888069",
    cyan = "#888069",
    light_gray = "#888069",
    white = "#888069",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#f8f2dc",
        panel = "#ebe5cf",
        float = "#ebe5cf",
        active = "#fff9e2",
        disabled = "#ddd8c2",
        hover = "#ebe5cf",
        selection = "#ddd8c2",
        search = "#ddd8c2",
        contrast = "#4c473c",
        negative = "#f5dbaf",
        warn = "#eee1be",
        info = "#d7e8c7",
        hint = "#eee1be",
        positive = "#e6e4bf",
        add = "#e6e4bf",
        delete = "#f5dbaf",
        modify = "#d7e8c7",
    },
    fg = {
        default = "#322e22",
        subtle = "#5d553f",
        accent = "#e76b3e",
        disabled = "#79715a",
        contrast = "#ebe5cf",
        negative = "#e76b3e",
        warn = "#c39553",
        info = "#5aa8d4",
        hint = "#c39553",
        positive = "#8aab67",
        add = "#8aab67",
        delete = "#e76b3e",
        modify = "#5aa8d4",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#4c473c",
        builtin = "#4c473c",
        member = "#5d553f",
        parameter = "#e76b3e",
    },
    property = {
        default = "#5d553f",
    },
    string = {
        default = "#6b634d",
        doc = "#7b7250",
        regexp = "#e76b3e",
        escape = "#e76b3e",
    },
    constant = {
        default = "#322e22",
        builtin = "#252117",
    },
    module = {
        default = "#3e3a2f",
    },
    boolean = {
        default = "#5d553f",
    },
    number = {
        default = "#4c473c",
    },
    type = {
        default = "#252117",
        builtin = "#4c473c",
    },
    attribute = {
        default = "#7b7250",
        builtin = "#7b7250",
    },
    func = {
        default = "#e76b3e",
        builtin = "#7b7250",
        method = "#7b7250",
    },
    constructor = {
        default = "#e76b3e",
    },
    keyword = {
        default = "#7b7250",
        import = "#7b7250",
        export = "#7b7250",
    },
    operator = {
        default = "#322e22",
    },
    punctuation = {
        default = "#4c473c",
        delimiter = "#4c473c",
        bracket = "#4c473c",
        special = "#4c473c",
    },
    comment = {
        default = "#6b634d",
        doc = "#6b634d",
        todo = "#8aab67",
        error = "#e76b3e",
        warn = "#c39553",
        info = "#5aa8d4",
        hint = "#5aa8d4",
    },
    markup = {
        heading = {
            h1 = "#e76b3e",
            h2 = "#e76b3e",
            h3 = "#e76b3e",
            h4 = "#5d553f",
            h5 = "#5d553f",
            h6 = "#5d553f",
        },
        strong = "#e76b3e",
        italic = "#e76b3e",
        strikethrough = "#e76b3e",
        quote = "#79715a",
        math = "#6b634d",
        link = "#7b7250",
        list = {
            default = "#5d553f",
            checked = "#8aab67",
            unchecked = "#5d553f",
        },
        code = {
            fg = "#4c473c",
            bg = "#ebe5cf",
        },
    },
    tag = {
        default = "#7b7250",
        builtin = "#e76b3e",
        attribute = "#5d553f",
        delimiter = "#79715a",
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
