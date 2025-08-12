local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-mnml-47-dark",
    label = "Black Atom — MNM ∷ 47 Dark",
    appearance = "dark",
    status = "development",
    collection = {
        key = "mnml",
        label = "MNM",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#1c1a17",
    d20 = "#232019",
    d30 = "#2e2b22",
    d40 = "#454133",
    m10 = "#61705d",
    m20 = "#6d7e68",
    m30 = "#788c72",
    m40 = "#93a38f",
    l10 = "#b2d7a8",
    l20 = "#c0dfb9",
    l30 = "#d0e7cb",
    l40 = "#e0efdc",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#61705d",
    gray = "#61705d",
    dark_red = "#61705d",
    red = "#93a38f",
    dark_green = "#02b193",
    green = "#02b193",
    dark_yellow = "#ff8b4d",
    yellow = "#ff8b4d",
    dark_blue = "#61705d",
    blue = "#6d7e68",
    dark_magenta = "#61705d",
    magenta = "#788c72",
    dark_cyan = "#61705d",
    cyan = "#93a38f",
    light_gray = "#61705d",
    white = "#c0dfb9",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#1c1a17",
        panel = "#232019",
        float = "#232019",
        active = "#2e2b22",
        disabled = "#454133",
        hover = "#2e2b22",
        selection = "#454133",
        search = "#454133",
        contrast = "#b2d7a8",
        negative = "#f77b63",
        warn = "#EDE5A6",
        info = "#805E73",
        hint = "#EDE5A6",
        positive = "#02b193",
        add = "#02b193",
        delete = "#f77b63",
        modify = "#805E73",
    },
    fg = {
        default = "#d0e7cb",
        subtle = "#93a38f",
        accent = "#02b193",
        disabled = "#6d7e68",
        contrast = "#232019",
        negative = "#f77b63",
        warn = "#EDE5A6",
        info = "#805E73",
        hint = "#EDE5A6",
        positive = "#02b193",
        add = "#02b193",
        delete = "#f77b63",
        modify = "#805E73",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#b2d7a8",
        builtin = "#b2d7a8",
        member = "#ff8b4d",
        parameter = "#02b193",
    },
    property = {
        default = "#ff8b4d",
    },
    string = {
        default = "#c0dfb9",
        doc = "#b2d7a8",
        regexp = "#e0efdc",
        escape = "#e0efdc",
    },
    constant = {
        default = "#b2d7a8",
        builtin = "#c0dfb9",
    },
    module = {
        default = "#c0dfb9",
    },
    boolean = {
        default = "#93a38f",
    },
    number = {
        default = "#b2d7a8",
    },
    type = {
        default = "#e0efdc",
        builtin = "#e0efdc",
    },
    attribute = {
        default = "#ff8b4d",
        builtin = "#ff8b4d",
    },
    func = {
        default = "#02b193",
        builtin = "#ff8b4d",
        method = "#ff8b4d",
    },
    constructor = {
        default = "#02b193",
    },
    keyword = {
        default = "#d0e7cb",
        import = "#e0efdc",
        export = "#e0efdc",
    },
    operator = {
        default = "#d0e7cb",
    },
    punctuation = {
        default = "#b2d7a8",
        delimiter = "#b2d7a8",
        bracket = "#b2d7a8",
        special = "#b2d7a8",
    },
    comment = {
        default = "#788c72",
        doc = "#788c72",
        todo = "#02b193",
        error = "#f77b63",
        warn = "#EDE5A6",
        info = "#805E73",
        hint = "#805E73",
    },
    markup = {
        heading = {
            h1 = "#02b193",
            h2 = "#02b193",
            h3 = "#02b193",
            h4 = "#93a38f",
            h5 = "#93a38f",
            h6 = "#93a38f",
        },
        strong = "#02b193",
        italic = "#02b193",
        strikethrough = "#02b193",
        quote = "#6d7e68",
        math = "#6d7e68",
        link = "#ff8b4d",
        list = {
            default = "#93a38f",
            checked = "#02b193",
            unchecked = "#93a38f",
        },
        code = {
            fg = "#b2d7a8",
            bg = "#232019",
        },
    },
    tag = {
        default = "#02b193",
        builtin = "#ff8b4d",
        attribute = "#788c72",
        delimiter = "#b2d7a8",
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
