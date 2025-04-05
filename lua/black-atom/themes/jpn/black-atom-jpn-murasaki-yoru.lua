local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-jpn-murasaki-yoru",
    label = "Black Atom — JPN ∷ Murasaki Yoru",
    appearance = "dark",
    status = "release",
    collection = {
        key = "jpn",
        label = "Japan",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#20141f",
    d20 = "#332031",
    d30 = "#462c43",
    d40 = "#573954",
    m10 = "#6d4769",
    m20 = "#7d5178",
    m30 = "#865f88",
    m40 = "#946996",
    l10 = "#b796b8",
    l20 = "#c9b1cb",
    l30 = "#D4BFD6",
    l40 = "#E8DBE9",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#462c43",
    gray = "#7d5178",
    dark_red = "#ec362d",
    red = "#F0635C",
    dark_green = "#4DB58A",
    green = "#6dc29f",
    dark_yellow = "#FE9B16",
    yellow = "#F7C012",
    dark_blue = "#39a6cd",
    blue = "#71c0db",
    dark_magenta = "#7E5BA2",
    magenta = "#EC6EAA",
    dark_cyan = "#6fa9a8",
    cyan = "#8FBCBB",
    light_gray = "#946996",
    white = "#D4BFD6",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#332031",
        panel = "#20141f",
        float = "#20141f",
        active = "#462c43",
        disabled = "#6d4769",
        hover = "#462c43",
        selection = "#573954",
        search = "#573954",
        contrast = "#D4BFD6",
        negative = "#F0635C",
        warn = "#F7C012",
        info = "#71c0db",
        hint = "#FE9B16",
        positive = "#6dc29f",
        add = "#6dc29f",
        delete = "#F0635C",
        modify = "#71c0db",
    },
    fg = {
        default = "#D4BFD6",
        subtle = "#b796b8",
        accent = "#F7C012",
        disabled = "#865f88",
        contrast = "#332031",
        negative = "#F0635C",
        warn = "#F7C012",
        info = "#71c0db",
        hint = "#FE9B16",
        positive = "#6dc29f",
        add = "#6dc29f",
        delete = "#F0635C",
        modify = "#71c0db",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#c9b1cb",
        builtin = "#946996",
        member = "#71c0db",
        parameter = "#FE9B16",
    },
    property = {
        default = "#71c0db",
    },
    string = {
        default = "#6dc29f",
        doc = "#6dc29f",
        regexp = "#F0635C",
        escape = "#F0635C",
    },
    constant = {
        default = "#39a6cd",
        builtin = "#ec362d",
    },
    module = {
        default = "#39a6cd",
    },
    boolean = {
        default = "#4DB58A",
    },
    number = {
        default = "#4DB58A",
    },
    type = {
        default = "#8FBCBB",
        builtin = "#6fa9a8",
    },
    attribute = {
        default = "#FE9B16",
        builtin = "#FE9B16",
    },
    func = {
        default = "#F7C012",
        builtin = "#F7C012",
        method = "#F7C012",
    },
    constructor = {
        default = "#F7C012",
    },
    keyword = {
        default = "#EC6EAA",
        import = "#F0635C",
        export = "#F0635C",
    },
    operator = {
        default = "#39a6cd",
    },
    punctuation = {
        default = "#946996",
        delimiter = "#39a6cd",
        bracket = "#946996",
        special = "#946996",
    },
    comment = {
        default = "#7d5178",
        doc = "#4DB58A",
        todo = "#6dc29f",
        error = "#F0635C",
        warn = "#F7C012",
        info = "#71c0db",
        hint = "#FE9B16",
    },
    markup = {
        heading = {
            h1 = "#F7C012",
            h2 = "#F7C012",
            h3 = "#F7C012",
            h4 = "#946996",
            h5 = "#946996",
            h6 = "#946996",
        },
        strong = "#F7C012",
        italic = "#F7C012",
        strikethrough = "#F7C012",
        quote = "#6dc29f",
        math = "#4DB58A",
        link = "#6dc29f",
        list = {
            default = "#946996",
            checked = "#6dc29f",
            unchecked = "#946996",
        },
        code = {
            fg = "#946996",
            bg = "#20141f",
        },
    },
    tag = {
        default = "#F7C012",
        builtin = "#FE9B16",
        attribute = "#946996",
        delimiter = "#b796b8",
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

