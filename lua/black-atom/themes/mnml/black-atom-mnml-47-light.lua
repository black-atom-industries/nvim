local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-mnml-47-light",
    label = "Black Atom — MNM ∷ 47 Light",
    appearance = "light",
    status = "development",
    collection = {
        key = "mnml",
        label = "MNM",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#151712",
    d20 = "#20231b",
    d30 = "#373d2f",
    d40 = "#434b36",
    m10 = "#5d684c",
    m20 = "#6b765a",
    m30 = "#7a8568",
    m40 = "#98a485",
    l10 = "#dfd6c9",
    l20 = "#e6dcd0",
    l30 = "#f3eadd",
    l40 = "#fff6e3",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#434b36",
    gray = "#5d684c",
    dark_red = "#98a485",
    red = "#98a485",
    dark_green = "#00936b",
    green = "#00936b",
    dark_yellow = "#ec5a00",
    yellow = "#ec5a00",
    dark_blue = "#6b765a",
    blue = "#6b765a",
    dark_magenta = "#7a8568",
    magenta = "#7a8568",
    dark_cyan = "#98a485",
    cyan = "#98a485",
    light_gray = "#e6dcd0",
    white = "#f3eadd",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#f3eadd",
        panel = "#e6dcd0",
        float = "#e6dcd0",
        active = "#fff6e3",
        disabled = "#dfd6c9",
        hover = "#e6dcd0",
        selection = "#dfd6c9",
        search = "#dfd6c9",
        contrast = "#434b36",
        negative = "#f9d6a9",
        warn = "#f4d8af",
        info = "#ffceb8",
        hint = "#f4d8af",
        positive = "#dbdab3",
        add = "#dbdab3",
        delete = "#f9d6a9",
        modify = "#ffceb8",
    },
    fg = {
        default = "#20231b",
        subtle = "#5d684c",
        accent = "#00936b",
        disabled = "#7a8568",
        contrast = "#e6dcd0",
        negative = "#f0532b",
        warn = "#dd6d00",
        info = "#6f7dff",
        hint = "#dd6d00",
        positive = "#00936b",
        add = "#00936b",
        delete = "#f0532b",
        modify = "#6f7dff",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#434b36",
        builtin = "#434b36",
        member = "#5d684c",
        parameter = "#00936b",
    },
    property = {
        default = "#5d684c",
    },
    string = {
        default = "#6b765a",
        doc = "#ec5a00",
        regexp = "#00936b",
        escape = "#00936b",
    },
    constant = {
        default = "#20231b",
        builtin = "#151712",
    },
    module = {
        default = "#373d2f",
    },
    boolean = {
        default = "#5d684c",
    },
    number = {
        default = "#434b36",
    },
    type = {
        default = "#151712",
        builtin = "#434b36",
    },
    attribute = {
        default = "#ec5a00",
        builtin = "#ec5a00",
    },
    func = {
        default = "#00936b",
        builtin = "#ec5a00",
        method = "#ec5a00",
    },
    constructor = {
        default = "#00936b",
    },
    keyword = {
        default = "#ec5a00",
        import = "#ec5a00",
        export = "#ec5a00",
    },
    operator = {
        default = "#20231b",
    },
    punctuation = {
        default = "#434b36",
        delimiter = "#434b36",
        bracket = "#434b36",
        special = "#434b36",
    },
    comment = {
        default = "#6b765a",
        doc = "#6b765a",
        todo = "#00936b",
        error = "#f0532b",
        warn = "#dd6d00",
        info = "#6f7dff",
        hint = "#6f7dff",
    },
    markup = {
        heading = {
            h1 = "#00936b",
            h2 = "#00936b",
            h3 = "#00936b",
            h4 = "#5d684c",
            h5 = "#5d684c",
            h6 = "#5d684c",
        },
        strong = "#00936b",
        italic = "#00936b",
        strikethrough = "#00936b",
        quote = "#7a8568",
        math = "#6b765a",
        link = "#ec5a00",
        list = {
            default = "#5d684c",
            checked = "#00936b",
            unchecked = "#5d684c",
        },
        code = {
            fg = "#434b36",
            bg = "#e6dcd0",
        },
    },
    tag = {
        default = "#ec5a00",
        builtin = "#00936b",
        attribute = "#5d684c",
        delimiter = "#7a8568",
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
