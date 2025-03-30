local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-terra-spring-day",
    label = "Black Atom — TER ∷ Spring Day",
    collection = {
        key = "terra",
        label = "TERRA",
    },
    appearance = "light",
    icon = "󰧲  ",
    status = "beta",
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
    black = "#416353",
    gray = "#62937a",
    dark_red = "#ca6d4c",
    red = "#dd7e5d",
    dark_green = "#0d8a4e",
    green = "#0f9d58",
    dark_yellow = "#de7b1f",
    yellow = "#e49f19",
    dark_blue = "#3473b2",
    blue = "#588dc1",
    dark_magenta = "#B07BAC",
    magenta = "#a586c6",
    dark_cyan = "#0e945d",
    cyan = "#10ab6a",
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
        negative = "#dd7e5d",
        warn = "#e49f19",
        info = "#588dc1",
        hint = "#de7b1f",
        positive = "#0f9d58",
        add = "#0f9d58",
        delete = "#dd7e5d",
        modify = "#588dc1",
    },
    fg = {
        default = "#385547",
        subtle = "#55816a",
        accent = "#e49f19",
        disabled = "#62937a",
        contrast = "#d4dcd8",
        negative = "#dd7e5d",
        warn = "#e49f19",
        info = "#588dc1",
        hint = "#de7b1f",
        positive = "#0f9d58",
        add = "#0f9d58",
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
        default = "#0f9d58",
        doc = "#0f9d58",
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
        default = "#0d8a4e",
    },
    number = {
        default = "#0d8a4e",
    },
    type = {
        default = "#10ab6a",
        builtin = "#0e945d",
    },
    attribute = {
        default = "#de7b1f",
        builtin = "#de7b1f",
    },
    func = {
        default = "#e49f19",
        builtin = "#e49f19",
        method = "#e49f19",
    },
    constructor = {
        default = "#e49f19",
    },
    keyword = {
        default = "#dd7e5d",
        import = "#0d8a4e",
        export = "#ca6d4c",
    },
    operator = {
        default = "#416353",
    },
    punctuation = {
        default = "#62937a",
        delimiter = "#8bb19e",
        bracket = "#62937a",
        special = "#62937a",
    },
    comment = {
        default = "#62937a",
        doc = "#0d8a4e",
        todo = "#0f9d58",
        error = "#dd7e5d",
        warn = "#e49f19",
        info = "#588dc1",
        hint = "#de7b1f",
    },
    markup = {
        heading = {
            h1 = "#e49f19",
            h2 = "#e49f19",
            h3 = "#e49f19",
            h4 = "#62937a",
            h5 = "#62937a",
            h6 = "#62937a",
        },
        strong = "#e49f19",
        italic = "#e49f19",
        strikethrough = "#e49f19",
        quote = "#0f9d58",
        math = "#0d8a4e",
        link = "#0f9d58",
        list = {
            default = "#62937a",
            checked = "#0f9d58",
            unchecked = "#62937a",
        },
        code = {
            fg = "#62937a",
            bg = "#c7d1cc",
        },
    },
    tag = {
        default = "#e49f19",
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
