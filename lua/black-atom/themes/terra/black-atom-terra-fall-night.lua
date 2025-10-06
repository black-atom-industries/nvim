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
    d10 = "#190f0a",
    d20 = "#221812",
    d30 = "#2c211b",
    d40 = "#362b25",
    m10 = "#86563b",
    m20 = "#a57357",
    m30 = "#b58266",
    m40 = "#d5a183",
    l10 = "#d9b5a2",
    l20 = "#eac5b1",
    l30 = "#fbd5c2",
    l40 = "#ffe5d2",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#2c211b",
    gray = "#86563b",
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
    light_gray = "#d9b5a2",
    white = "#fbd5c2",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#221812",
        panel = "#190f0a",
        float = "#190f0a",
        active = "#2c211b",
        disabled = "#86563b",
        hover = "#2c211b",
        selection = "#362b25",
        search = "#362b25",
        contrast = "#fbd5c2",
        negative = "#3b261b",
        warn = "#3b2618",
        info = "#39271d",
        hint = "#3b2619",
        positive = "#34291f",
        add = "#34291f",
        delete = "#3b261b",
        modify = "#39271d",
    },
    fg = {
        default = "#fbd5c2",
        subtle = "#d9b5a2",
        accent = "#d68c00",
        disabled = "#b58266",
        contrast = "#221812",
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
        default = "#d9b5a2",
        delimiter = "#d5a183",
        bracket = "#d9b5a2",
        special = "#d9b5a2",
    },
    comment = {
        default = "#86563b",
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
            h4 = "#d9b5a2",
            h5 = "#d9b5a2",
            h6 = "#d9b5a2",
        },
        strong = "#d68c00",
        italic = "#d68c00",
        strikethrough = "#d68c00",
        quote = "#95a483",
        math = "#889776",
        link = "#95a483",
        list = {
            default = "#d9b5a2",
            checked = "#95a483",
            unchecked = "#d9b5a2",
        },
        code = {
            fg = "#d9b5a2",
            bg = "#2c211b",
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
