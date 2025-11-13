local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-terra-winter-day",
    label = "Black Atom — TER ∷ Winter Day",
    appearance = "light",
    status = "development",
    collection = {
        key = "terra",
        label = "TERRA",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#2e3440",
    d20 = "#3b4252",
    d30 = "#434c5e",
    d40 = "#4c566a",
    m10 = "#4e6f98",
    m20 = "#668db4",
    m30 = "#6eb2c6",
    m40 = "#7fb2b1",
    l10 = "#ced6e3",
    l20 = "#dfe4ec",
    l30 = "#e9ecf2",
    l40 = "#eceff4",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#434c5e",
    gray = "#668db4",
    dark_red = "#4a6785",
    red = "#5d7ca0",
    dark_green = "#5a7085",
    green = "#6d8599",
    dark_yellow = "#6b7a8a",
    yellow = "#7e8f9c",
    dark_blue = "#3d5a77",
    blue = "#506f94",
    dark_magenta = "#5a6785",
    magenta = "#6d7ca0",
    dark_cyan = "#4a677a",
    cyan = "#5d7c94",
    light_gray = "#ced6e3",
    white = "#e9ecf2",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#e9ecf2",
        panel = "#dfe4ec",
        float = "#dfe4ec",
        active = "#ced6e3",
        disabled = "#6eb2c6",
        hover = "#ced6e3",
        selection = "#eceff4",
        search = "#eceff4",
        contrast = "#3b4252",
        negative = "#d6dde7",
        warn = "#dbe0e7",
        info = "#d4dbe6",
        hint = "#d8dce4",
        positive = "#d9dee6",
        add = "#d9dee6",
        delete = "#d6dde7",
        modify = "#d4dbe6",
    },
    fg = {
        default = "#3b4252",
        subtle = "#4e6f98",
        accent = "#7e8f9c",
        disabled = "#668db4",
        contrast = "#e9ecf2",
        negative = "#5d7ca0",
        warn = "#7e8f9c",
        info = "#506f94",
        hint = "#6b7a8a",
        positive = "#6d8599",
        add = "#6d8599",
        delete = "#5d7ca0",
        modify = "#506f94",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#506f94",
        builtin = "#3d5a77",
        member = "#3d5a77",
        parameter = "#6b7a8a",
    },
    property = {
        default = "#3d5a77",
    },
    string = {
        default = "#6d8599",
        doc = "#6d8599",
        regexp = "#5d7ca0",
        escape = "#5d7ca0",
    },
    constant = {
        default = "#6b7a8a",
        builtin = "#6b7a8a",
    },
    module = {
        default = "#3d5a77",
    },
    boolean = {
        default = "#5a7085",
    },
    number = {
        default = "#5a7085",
    },
    type = {
        default = "#5d7c94",
        builtin = "#4a677a",
    },
    attribute = {
        default = "#6b7a8a",
        builtin = "#6b7a8a",
    },
    func = {
        default = "#7e8f9c",
        builtin = "#7e8f9c",
        method = "#7e8f9c",
    },
    constructor = {
        default = "#7e8f9c",
    },
    keyword = {
        default = "#6d7ca0",
        import = "#5d7ca0",
        export = "#5d7ca0",
    },
    operator = {
        default = "#3b4252",
    },
    punctuation = {
        default = "#668db4",
        delimiter = "#7fb2b1",
        bracket = "#668db4",
        special = "#668db4",
    },
    comment = {
        default = "#668db4",
        doc = "#5a7085",
        todo = "#6d8599",
        error = "#5d7ca0",
        warn = "#7e8f9c",
        info = "#506f94",
        hint = "#6b7a8a",
    },
    markup = {
        heading = {
            h1 = "#7e8f9c",
            h2 = "#7e8f9c",
            h3 = "#7e8f9c",
            h4 = "#668db4",
            h5 = "#668db4",
            h6 = "#668db4",
        },
        strong = "#7e8f9c",
        italic = "#7e8f9c",
        strikethrough = "#7e8f9c",
        quote = "#6d8599",
        math = "#5a7085",
        link = "#6d8599",
        list = {
            default = "#668db4",
            checked = "#6d8599",
            unchecked = "#668db4",
        },
        code = {
            fg = "#4e6f98",
            bg = "#ced6e3",
        },
    },
    tag = {
        default = "#7e8f9c",
        builtin = "#6b7a8a",
        attribute = "#4e6f98",
        delimiter = "#4c566a",
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
