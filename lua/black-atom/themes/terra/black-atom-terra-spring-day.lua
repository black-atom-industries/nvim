local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-terra-spring-day",
    label = "Black Atom — TER ∷ Spring Day",
    appearance = "light",
    status = "beta",
    collection = {
        key = "terra",
        label = "TERRA",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#304a3f",
    d20 = "#385547",
    d30 = "#416353",
    d40 = "#517b67",
    m10 = "#55816a",
    m20 = "#62937a",
    m30 = "#78a48e",
    m40 = "#8bb19e",
    l10 = "#b9c6bf",
    l20 = "#c7d1cc",
    l30 = "#d4dcd8",
    l40 = "#e2eae6",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#517b67",
    gray = "#55816a",
    dark_red = "#ca6d4c",
    red = "#dd7e5d",
    dark_green = "#0e9b55",
    green = "#11b066",
    dark_yellow = "#de7b1f",
    yellow = "#e49f1a",
    dark_blue = "#3473b2",
    blue = "#588dc1",
    dark_magenta = "#b07bac",
    magenta = "#a586c6",
    dark_cyan = "#0f945d",
    cyan = "#0fab6a",
    light_gray = "#b9c6bf",
    white = "#d4dcd8",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#d4dcd8",
        panel = "#c7d1cc",
        float = "#c7d1cc",
        active = "#b9c6bf",
        disabled = "#78a48e",
        hover = "#b9c6bf",
        selection = "#e2eae6",
        search = "#e2eae6",
        contrast = "#385547",
        negative = "#cadac0",
        warn = "#c8e1c6",
        info = "#b9d6d2",
        hint = "#c5dbbe",
        positive = "#b7ddc9",
        add = "#b7ddc9",
        delete = "#cadac0",
        modify = "#b9d6d2",
    },
    fg = {
        default = "#385547",
        subtle = "#55816a",
        accent = "#e49f1a",
        disabled = "#62937a",
        contrast = "#d4dcd8",
        negative = "#dd7e5d",
        warn = "#e49f1a",
        info = "#588dc1",
        hint = "#de7b1f",
        positive = "#11b066",
        add = "#11b066",
        delete = "#dd7e5d",
        modify = "#588dc1",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#588dc1",
        builtin = "#3473b2",
        member = "#3473b2",
        parameter = "#de7b1f",
    },
    property = {
        default = "#3473b2",
    },
    string = {
        default = "#11b066",
        doc = "#11b066",
        regexp = "#dd7e5d",
        escape = "#dd7e5d",
    },
    constant = {
        default = "#de7b1f",
        builtin = "#de7b1f",
    },
    module = {
        default = "#3473b2",
    },
    boolean = {
        default = "#0e9b55",
    },
    number = {
        default = "#0e9b55",
    },
    type = {
        default = "#0fab6a",
        builtin = "#0f945d",
    },
    attribute = {
        default = "#de7b1f",
        builtin = "#de7b1f",
    },
    func = {
        default = "#e49f1a",
        builtin = "#e49f1a",
        method = "#e49f1a",
    },
    constructor = {
        default = "#e49f1a",
    },
    keyword = {
        default = "#a586c6",
        import = "#dd7e5d",
        export = "#dd7e5d",
    },
    operator = {
        default = "#385547",
    },
    punctuation = {
        default = "#55816a",
        delimiter = "#8bb19e",
        bracket = "#55816a",
        special = "#55816a",
    },
    comment = {
        default = "#55816a",
        doc = "#0e9b55",
        todo = "#11b066",
        error = "#dd7e5d",
        warn = "#e49f1a",
        info = "#588dc1",
        hint = "#de7b1f",
    },
    markup = {
        heading = {
            h1 = "#e49f1a",
            h2 = "#e49f1a",
            h3 = "#e49f1a",
            h4 = "#55816a",
            h5 = "#55816a",
            h6 = "#55816a",
        },
        strong = "#e49f1a",
        italic = "#e49f1a",
        strikethrough = "#e49f1a",
        quote = "#11b066",
        math = "#0e9b55",
        link = "#11b066",
        list = {
            default = "#55816a",
            checked = "#11b066",
            unchecked = "#55816a",
        },
        code = {
            fg = "#55816a",
            bg = "#b9c6bf",
        },
    },
    tag = {
        default = "#e49f1a",
        builtin = "#de7b1f",
        attribute = "#55816a",
        delimiter = "#517b67",
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
