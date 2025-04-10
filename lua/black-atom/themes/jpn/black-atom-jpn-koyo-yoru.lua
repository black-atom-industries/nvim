local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-jpn-koyo-yoru",
    label = "Black Atom — JPN ∷ Koyo Yoru",
    appearance = "dark",
    status = "release",
    collection = {
        key = "jpn",
        label = "JPN",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#100f18",
    d20 = "#191724",
    d30 = "#262337",
    d40 = "#332f4a",
    m10 = "#605872",
    m20 = "#76718f",
    m30 = "#8d89a8",
    m40 = "#9c98b3",
    l10 = "#aaa7be",
    l20 = "#e6bfb2",
    l30 = "#eccfc5",
    l40 = "#f2dfd8",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#332f4a",
    gray = "#76718f",
    dark_red = "#ba5d6d",
    red = "#e27889",
    dark_green = "#619f81",
    green = "#80b29a",
    dark_yellow = "#e29f77",
    yellow = "#e4ae67",
    dark_blue = "#ad8593",
    blue = "#a095a8",
    dark_magenta = "#ef9d6c",
    magenta = "#ffb488",
    dark_cyan = "#70a997",
    cyan = "#91bcaf",
    light_gray = "#9c98b3",
    white = "#eccfc5",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#191724",
        panel = "#100f18",
        float = "#100f18",
        active = "#262337",
        disabled = "#605872",
        hover = "#262337",
        selection = "#332f4a",
        search = "#332f4a",
        contrast = "#eccfc5",
        negative = "#e27889",
        warn = "#e4ae67",
        info = "#a095a8",
        hint = "#e29f77",
        positive = "#80b29a",
        add = "#80b29a",
        delete = "#e27889",
        modify = "#a095a8",
    },
    fg = {
        default = "#eccfc5",
        subtle = "#aaa7be",
        accent = "#e4ae67",
        disabled = "#8d89a8",
        contrast = "#191724",
        negative = "#e27889",
        warn = "#e4ae67",
        info = "#a095a8",
        hint = "#e29f77",
        positive = "#80b29a",
        add = "#80b29a",
        delete = "#e27889",
        modify = "#a095a8",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#e6bfb2",
        builtin = "#9c98b3",
        member = "#a095a8",
        parameter = "#e29f77",
    },
    property = {
        default = "#a095a8",
    },
    string = {
        default = "#80b29a",
        doc = "#80b29a",
        regexp = "#e27889",
        escape = "#e27889",
    },
    constant = {
        default = "#ad8593",
        builtin = "#ba5d6d",
    },
    module = {
        default = "#ad8593",
    },
    boolean = {
        default = "#619f81",
    },
    number = {
        default = "#619f81",
    },
    type = {
        default = "#91bcaf",
        builtin = "#70a997",
    },
    attribute = {
        default = "#e29f77",
        builtin = "#e29f77",
    },
    func = {
        default = "#e4ae67",
        builtin = "#e4ae67",
        method = "#e4ae67",
    },
    constructor = {
        default = "#e4ae67",
    },
    keyword = {
        default = "#ffb488",
        import = "#e27889",
        export = "#e27889",
    },
    operator = {
        default = "#ad8593",
    },
    punctuation = {
        default = "#9c98b3",
        delimiter = "#ad8593",
        bracket = "#9c98b3",
        special = "#9c98b3",
    },
    comment = {
        default = "#76718f",
        doc = "#619f81",
        todo = "#80b29a",
        error = "#e27889",
        warn = "#e4ae67",
        info = "#a095a8",
        hint = "#e29f77",
    },
    markup = {
        heading = {
            h1 = "#e4ae67",
            h2 = "#e4ae67",
            h3 = "#e4ae67",
            h4 = "#9c98b3",
            h5 = "#9c98b3",
            h6 = "#9c98b3",
        },
        strong = "#e4ae67",
        italic = "#e4ae67",
        strikethrough = "#e4ae67",
        quote = "#80b29a",
        math = "#619f81",
        link = "#80b29a",
        list = {
            default = "#9c98b3",
            checked = "#80b29a",
            unchecked = "#9c98b3",
        },
        code = {
            fg = "#9c98b3",
            bg = "#100f18",
        },
    },
    tag = {
        default = "#e4ae67",
        builtin = "#e29f77",
        attribute = "#9c98b3",
        delimiter = "#aaa7be",
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

