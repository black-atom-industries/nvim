local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-jpn-koyo-hiru",
    label = "Black Atom — JPN ∷ Koyo Hiru",
    appearance = "light",
    status = "release",
    collection = {
        key = "jpn",
        label = "JPN",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#29212a",
    d20 = "#3a2e3b",
    d30 = "#4e3b4f",
    d40 = "#634c64",
    m10 = "#725a73",
    m20 = "#907691",
    m30 = "#b19b7c",
    m40 = "#d1ba9b",
    l10 = "#f2daba",
    l20 = "#f8e7d0",
    l30 = "#fef2e1",
    l40 = "#fff5e5",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#634c64",
    gray = "#725a73",
    dark_red = "#b7445d",
    red = "#db6371",
    dark_green = "#05893e",
    green = "#3aa85b",
    dark_yellow = "#f1771e",
    yellow = "#ed9a00",
    dark_blue = "#d1649c",
    blue = "#9e77dc",
    dark_magenta = "#f2943c",
    magenta = "#f88f4f",
    dark_cyan = "#008c75",
    cyan = "#00ab93",
    light_gray = "#d1ba9b",
    white = "#f2daba",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#fef2e1",
        panel = "#f8e7d0",
        float = "#f8e7d0",
        active = "#fff5e5",
        disabled = "#d1ba9b",
        hover = "#f8e7d0",
        selection = "#f8e7d0",
        search = "#f8e7d0",
        contrast = "#3a2e3b",
        negative = "#f6d2b4",
        warn = "#faddb6",
        info = "#fccebd",
        hint = "#fad7b1",
        positive = "#e5dab0",
        add = "#e5dab0",
        delete = "#f6d2b4",
        modify = "#fccebd",
    },
    fg = {
        default = "#3a2e3b",
        subtle = "#b19b7c",
        accent = "#ed9a00",
        disabled = "#d1ba9b",
        contrast = "#fef2e1",
        negative = "#db6371",
        warn = "#ed9a00",
        info = "#9e77dc",
        hint = "#f1771e",
        positive = "#3aa85b",
        add = "#3aa85b",
        delete = "#db6371",
        modify = "#9e77dc",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#9e77dc",
        builtin = "#d1649c",
        member = "#f2943c",
        parameter = "#f2943c",
    },
    property = {
        default = "#9e77dc",
    },
    string = {
        default = "#3aa85b",
        doc = "#3aa85b",
        regexp = "#db6371",
        escape = "#db6371",
    },
    constant = {
        default = "#d1649c",
        builtin = "#b7445d",
    },
    module = {
        default = "#d1649c",
    },
    boolean = {
        default = "#05893e",
    },
    number = {
        default = "#05893e",
    },
    type = {
        default = "#00ab93",
        builtin = "#008c75",
    },
    attribute = {
        default = "#f1771e",
        builtin = "#f1771e",
    },
    func = {
        default = "#ed9a00",
        builtin = "#ed9a00",
        method = "#ed9a00",
    },
    constructor = {
        default = "#ed9a00",
    },
    keyword = {
        default = "#f88f4f",
        import = "#db6371",
        export = "#db6371",
    },
    operator = {
        default = "#d1649c",
    },
    punctuation = {
        default = "#725a73",
        delimiter = "#d1649c",
        bracket = "#725a73",
        special = "#725a73",
    },
    comment = {
        default = "#725a73",
        doc = "#05893e",
        todo = "#3aa85b",
        error = "#db6371",
        warn = "#ed9a00",
        info = "#9e77dc",
        hint = "#f1771e",
    },
    markup = {
        heading = {
            h1 = "#ed9a00",
            h2 = "#ed9a00",
            h3 = "#ed9a00",
            h4 = "#725a73",
            h5 = "#725a73",
            h6 = "#725a73",
        },
        strong = "#ed9a00",
        italic = "#ed9a00",
        strikethrough = "#ed9a00",
        quote = "#3aa85b",
        math = "#05893e",
        link = "#3aa85b",
        list = {
            default = "#725a73",
            checked = "#3aa85b",
            unchecked = "#725a73",
        },
        code = {
            fg = "#725a73",
            bg = "#f8e7d0",
        },
    },
    tag = {
        default = "#ed9a00",
        builtin = "#f1771e",
        attribute = "#725a73",
        delimiter = "#634c64",
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
