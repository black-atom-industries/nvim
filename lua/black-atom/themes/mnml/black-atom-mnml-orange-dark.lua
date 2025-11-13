local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-mnml-orange-dark",
    label = "Black Atom — MNM ∷ Orange Dark",
    appearance = "dark",
    status = "development",
    collection = {
        key = "mnml",
        label = "MNM",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#13242e",
    d20 = "#1f303b",
    d30 = "#2b3d48",
    d40 = "#384b56",
    m10 = "#47687c",
    m20 = "#55778b",
    m30 = "#63859a",
    m40 = "#7295aa",
    l10 = "#90b4c9",
    l20 = "#9fc4da",
    l30 = "#afd4ea",
    l40 = "#bfe4fb",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#47687c",
    gray = "#47687c",
    dark_red = "#7295aa",
    red = "#7295aa",
    dark_green = "#63859a",
    green = "#63859a",
    dark_yellow = "#f37513",
    yellow = "#fc8e05",
    dark_blue = "#55778b",
    blue = "#55778b",
    dark_magenta = "#63859a",
    magenta = "#63859a",
    dark_cyan = "#7295aa",
    cyan = "#7295aa",
    light_gray = "#9fc4da",
    white = "#9fc4da",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#1f303b",
        panel = "#13242e",
        float = "#13242e",
        active = "#2b3d48",
        disabled = "#384b56",
        hover = "#2b3d48",
        selection = "#384b56",
        search = "#384b56",
        contrast = "#90b4c9",
        negative = "#21314c",
        warn = "#093b42",
        info = "#163446",
        hint = "#093b42",
        positive = "#0f3642",
        add = "#0f3642",
        delete = "#21314c",
        modify = "#163446",
    },
    fg = {
        default = "#afd4ea",
        subtle = "#63859a",
        accent = "#fc8e05",
        disabled = "#55778b",
        contrast = "#1f303b",
        negative = "#ef632c",
        warn = "#fc8e05",
        info = "#3a93e6",
        hint = "#fc8e05",
        positive = "#3aa85b",
        add = "#3aa85b",
        delete = "#ef632c",
        modify = "#3a93e6",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#9fc4da",
        builtin = "#90b4c9",
        member = "#f37513",
        parameter = "#f37513",
    },
    property = {
        default = "#f37513",
    },
    string = {
        default = "#9fc4da",
        doc = "#90b4c9",
        regexp = "#bfe4fb",
        escape = "#bfe4fb",
    },
    constant = {
        default = "#90b4c9",
        builtin = "#9fc4da",
    },
    module = {
        default = "#9fc4da",
    },
    boolean = {
        default = "#7295aa",
    },
    number = {
        default = "#90b4c9",
    },
    type = {
        default = "#bfe4fb",
        builtin = "#bfe4fb",
    },
    attribute = {
        default = "#f37513",
        builtin = "#f37513",
    },
    func = {
        default = "#fc8e05",
        builtin = "#f37513",
        method = "#f37513",
    },
    constructor = {
        default = "#fc8e05",
    },
    keyword = {
        default = "#f37513",
        import = "#ef632c",
        export = "#ef632c",
    },
    operator = {
        default = "#afd4ea",
    },
    punctuation = {
        default = "#90b4c9",
        delimiter = "#90b4c9",
        bracket = "#90b4c9",
        special = "#90b4c9",
    },
    comment = {
        default = "#63859a",
        doc = "#63859a",
        todo = "#3aa85b",
        error = "#ef632c",
        warn = "#fc8e05",
        info = "#3a93e6",
        hint = "#3a93e6",
    },
    markup = {
        heading = {
            h1 = "#fc8e05",
            h2 = "#fc8e05",
            h3 = "#fc8e05",
            h4 = "#7295aa",
            h5 = "#7295aa",
            h6 = "#7295aa",
        },
        strong = "#fc8e05",
        italic = "#fc8e05",
        strikethrough = "#fc8e05",
        quote = "#55778b",
        math = "#55778b",
        link = "#f37513",
        list = {
            default = "#7295aa",
            checked = "#3aa85b",
            unchecked = "#7295aa",
        },
        code = {
            fg = "#90b4c9",
            bg = "#1f303b",
        },
    },
    tag = {
        default = "#fc8e05",
        builtin = "#f37513",
        attribute = "#63859a",
        delimiter = "#90b4c9",
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
