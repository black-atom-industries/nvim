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
    d10 = "#1c1121",
    d20 = "#261a2a",
    d30 = "#3a2d3f",
    d40 = "#4a3d50",
    m10 = "#59506a",
    m20 = "#756c89",
    m30 = "#927c5f",
    m40 = "#b19b7c",
    l10 = "#d1ba9b",
    l20 = "#e1caaa",
    l30 = "#ead2b2",
    l40 = "#fae2c2",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#4a3d50",
    gray = "#756c89",
    dark_red = "#da637a",
    red = "#fe838f",
    dark_green = "#60a06e",
    green = "#7fc08c",
    dark_yellow = "#f88f4f",
    yellow = "#e49e22",
    dark_blue = "#d39bb5",
    blue = "#b5a4d7",
    dark_magenta = "#c07d55",
    magenta = "#e19b73",
    dark_cyan = "#38a391",
    cyan = "#5cc3b0",
    light_gray = "#b19b7c",
    white = "#d1ba9b",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#261a2a",
        panel = "#1c1121",
        float = "#1c1121",
        active = "#3a2d3f",
        disabled = "#59506a",
        hover = "#3a2d3f",
        selection = "#4a3d50",
        search = "#4a3d50",
        contrast = "#ead2b2",
        negative = "#53324e",
        warn = "#573146",
        info = "#473850",
        hint = "#553149",
        positive = "#373d5a",
        add = "#373d5a",
        delete = "#53324e",
        modify = "#473850",
    },
    fg = {
        default = "#ead2b2",
        subtle = "#b19b7c",
        accent = "#e49e22",
        disabled = "#927c5f",
        contrast = "#261a2a",
        negative = "#fe838f",
        warn = "#e49e22",
        info = "#b5a4d7",
        hint = "#f88f4f",
        positive = "#7fc08c",
        add = "#7fc08c",
        delete = "#fe838f",
        modify = "#b5a4d7",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#e1caaa",
        builtin = "#b19b7c",
        member = "#b5a4d7",
        parameter = "#f88f4f",
    },
    property = {
        default = "#b5a4d7",
    },
    string = {
        default = "#7fc08c",
        doc = "#7fc08c",
        regexp = "#fe838f",
        escape = "#fe838f",
    },
    constant = {
        default = "#d39bb5",
        builtin = "#da637a",
    },
    module = {
        default = "#d39bb5",
    },
    boolean = {
        default = "#60a06e",
    },
    number = {
        default = "#60a06e",
    },
    type = {
        default = "#5cc3b0",
        builtin = "#38a391",
    },
    attribute = {
        default = "#f88f4f",
        builtin = "#f88f4f",
    },
    func = {
        default = "#e49e22",
        builtin = "#e49e22",
        method = "#e49e22",
    },
    constructor = {
        default = "#e49e22",
    },
    keyword = {
        default = "#e19b73",
        import = "#fe838f",
        export = "#fe838f",
    },
    operator = {
        default = "#d39bb5",
    },
    punctuation = {
        default = "#b19b7c",
        delimiter = "#d39bb5",
        bracket = "#b19b7c",
        special = "#b19b7c",
    },
    comment = {
        default = "#756c89",
        doc = "#60a06e",
        todo = "#7fc08c",
        error = "#fe838f",
        warn = "#e49e22",
        info = "#b5a4d7",
        hint = "#f88f4f",
    },
    markup = {
        heading = {
            h1 = "#e49e22",
            h2 = "#e49e22",
            h3 = "#e49e22",
            h4 = "#b19b7c",
            h5 = "#b19b7c",
            h6 = "#b19b7c",
        },
        strong = "#e49e22",
        italic = "#e49e22",
        strikethrough = "#e49e22",
        quote = "#7fc08c",
        math = "#60a06e",
        link = "#7fc08c",
        list = {
            default = "#b19b7c",
            checked = "#7fc08c",
            unchecked = "#b19b7c",
        },
        code = {
            fg = "#b19b7c",
            bg = "#1c1121",
        },
    },
    tag = {
        default = "#e49e22",
        builtin = "#f88f4f",
        attribute = "#b19b7c",
        delimiter = "#d1ba9b",
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
