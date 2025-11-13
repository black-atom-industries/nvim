local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-terra-fall-night",
    label = "Black Atom — TER ∷ Fall Night",
    appearance = "dark",
    status = "release",
    collection = {
        key = "terra",
        label = "TERRA",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#1b0e08",
    d20 = "#241710",
    d30 = "#2e2119",
    d40 = "#382a23",
    m10 = "#86563b",
    m20 = "#a57357",
    m30 = "#b58266",
    m40 = "#c59174",
    l10 = "#c9a592",
    l20 = "#d9b5a2",
    l30 = "#eac5b1",
    l40 = "#f7d6c5",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#2e2119",
    gray = "#86563b",
    dark_red = "#c65b4c",
    red = "#e87a69",
    dark_green = "#889776",
    green = "#95a483",
    dark_yellow = "#e67f3c",
    yellow = "#d68c00",
    dark_blue = "#c27e56",
    blue = "#d08c62",
    dark_magenta = "#c67a65",
    magenta = "#d4896e",
    dark_cyan = "#719b8f",
    cyan = "#7ea99c",
    light_gray = "#c9a592",
    white = "#eac5b1",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#241710",
        panel = "#1b0e08",
        float = "#1b0e08",
        active = "#2e2119",
        disabled = "#86563b",
        hover = "#2e2119",
        selection = "#382a23",
        search = "#382a23",
        contrast = "#eac5b1",
        negative = "#351c12",
        warn = "#341d0f",
        info = "#321e14",
        hint = "#351c10",
        positive = "#2e2015",
        add = "#2e2015",
        delete = "#351c12",
        modify = "#321e14",
    },
    fg = {
        default = "#eac5b1",
        subtle = "#c59174",
        accent = "#d68c00",
        disabled = "#b58266",
        contrast = "#241710",
        negative = "#e87a69",
        warn = "#d68c00",
        info = "#d08c62",
        hint = "#e67f3c",
        positive = "#95a483",
        add = "#95a483",
        delete = "#e87a69",
        modify = "#d08c62",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#d08c62",
        builtin = "#c27e56",
        member = "#c27e56",
        parameter = "#e67f3c",
    },
    property = {
        default = "#c27e56",
    },
    string = {
        default = "#95a483",
        doc = "#95a483",
        regexp = "#e67f3c",
        escape = "#e87a69",
    },
    constant = {
        default = "#e67f3c",
        builtin = "#e67f3c",
    },
    module = {
        default = "#c27e56",
    },
    boolean = {
        default = "#e67f3c",
    },
    number = {
        default = "#e67f3c",
    },
    type = {
        default = "#7ea99c",
        builtin = "#719b8f",
    },
    attribute = {
        default = "#7ea99c",
        builtin = "#7ea99c",
    },
    func = {
        default = "#d68c00",
        builtin = "#d68c00",
        method = "#d68c00",
    },
    constructor = {
        default = "#d68c00",
    },
    keyword = {
        default = "#d4896e",
        import = "#e87a69",
        export = "#e87a69",
    },
    operator = {
        default = "#d4896e",
    },
    punctuation = {
        default = "#c9a592",
        delimiter = "#c59174",
        bracket = "#c9a592",
        special = "#c9a592",
    },
    comment = {
        default = "#86563b",
        doc = "#889776",
        todo = "#95a483",
        error = "#e87a69",
        warn = "#d68c00",
        info = "#d08c62",
        hint = "#e67f3c",
    },
    markup = {
        heading = {
            h1 = "#d68c00",
            h2 = "#d68c00",
            h3 = "#d68c00",
            h4 = "#c9a592",
            h5 = "#c9a592",
            h6 = "#c9a592",
        },
        strong = "#d68c00",
        italic = "#d68c00",
        strikethrough = "#d68c00",
        quote = "#95a483",
        math = "#889776",
        link = "#95a483",
        list = {
            default = "#c9a592",
            checked = "#95a483",
            unchecked = "#c9a592",
        },
        code = {
            fg = "#c9a592",
            bg = "#2e2119",
        },
    },
    tag = {
        default = "#d68c00",
        builtin = "#d68c00",
        attribute = "#e67f3c",
        delimiter = "#e67f3c",
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
