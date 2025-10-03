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
    d10 = "#321c11",
    d20 = "#422617",
    d30 = "#4f3222",
    d40 = "#694a39",
    m10 = "#815137",
    m20 = "#9b6a4f",
    m30 = "#b78368",
    m40 = "#d39e82",
    l10 = "#d4b09d",
    l20 = "#eac5b1",
    l30 = "#f8d2bf",
    l40 = "#ffe3d5",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#4f3222",
    gray = "#815137",
    dark_red = "#d96c5d",
    red = "#e87969",
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
    light_gray = "#d4b09d",
    white = "#f8d2bf",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#422617",
        panel = "#321c11",
        float = "#321c11",
        active = "#4f3222",
        disabled = "#815137",
        hover = "#4f3222",
        selection = "#694a39",
        search = "#694a39",
        contrast = "#f8d2bf",
        negative = "#e87969",
        warn = "#d68c00",
        info = "#d08c62",
        hint = "#e67f3c",
        positive = "#95a483",
        add = "#95a483",
        delete = "#e87969",
        modify = "#d08c62",
    },
    fg = {
        default = "#f8d2bf",
        subtle = "#d4b09d",
        accent = "#d68c00",
        disabled = "#b78368",
        contrast = "#422617",
        negative = "#e87969",
        warn = "#d68c00",
        info = "#d08c62",
        hint = "#e67f3c",
        positive = "#95a483",
        add = "#95a483",
        delete = "#e87969",
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
        escape = "#e87969",
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
        import = "#e87969",
        export = "#e87969",
    },
    operator = {
        default = "#d4896e",
    },
    punctuation = {
        default = "#d4b09d",
        delimiter = "#d39e82",
        bracket = "#d4b09d",
        special = "#d4b09d",
    },
    comment = {
        default = "#815137",
        doc = "#889776",
        todo = "#95a483",
        error = "#e87969",
        warn = "#d68c00",
        info = "#d08c62",
        hint = "#e67f3c",
    },
    markup = {
        heading = {
            h1 = "#d68c00",
            h2 = "#d68c00",
            h3 = "#d68c00",
            h4 = "#d4b09d",
            h5 = "#d4b09d",
            h6 = "#d4b09d",
        },
        strong = "#d68c00",
        italic = "#d68c00",
        strikethrough = "#d68c00",
        quote = "#95a483",
        math = "#889776",
        link = "#95a483",
        list = {
            default = "#d4b09d",
            checked = "#95a483",
            unchecked = "#d4b09d",
        },
        code = {
            fg = "#d4b09d",
            bg = "#694a39",
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
