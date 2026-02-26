local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-jpn-murasaki-yoru",
    label = "Black Atom — JPN ∷ Murasaki Yoru",
    appearance = "dark",
    status = "release",
    collection = {
        key = "jpn",
        label = "JPN",
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
    l30 = "#d4bfd6",
    l40 = "#e8dbe9",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#573954",
    gray = "#6d4769",
    dark_red = "#ec362d",
    red = "#f0635c",
    dark_green = "#4cb58a",
    green = "#6dc29f",
    dark_yellow = "#fe9b15",
    yellow = "#e6a318",
    dark_blue = "#38a6cd",
    blue = "#71c0db",
    dark_magenta = "#7e5ba2",
    magenta = "#ec6eaa",
    dark_cyan = "#70a9a8",
    cyan = "#8fbcbb",
    light_gray = "#946996",
    white = "#b796b8",
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
        contrast = "#d4bfd6",
        negative = "#5c304b",
        warn = "#643647",
        info = "#4d405e",
        hint = "#66364a",
        positive = "#454162",
        add = "#454162",
        delete = "#5c304b",
        modify = "#4d405e",
    },
    fg = {
        default = "#d4bfd6",
        subtle = "#946996",
        accent = "#e6a318",
        disabled = "#865f88",
        contrast = "#332031",
        negative = "#f0635c",
        warn = "#e6a318",
        info = "#71c0db",
        hint = "#fe9b15",
        positive = "#6dc29f",
        add = "#6dc29f",
        delete = "#f0635c",
        modify = "#71c0db",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#c9b1cb",
        builtin = "#946996",
        member = "#71c0db",
        parameter = "#fe9b15",
    },
    property = {
        default = "#71c0db",
    },
    string = {
        default = "#6dc29f",
        doc = "#6dc29f",
        regexp = "#f0635c",
        escape = "#f0635c",
    },
    constant = {
        default = "#38a6cd",
        builtin = "#ec362d",
    },
    module = {
        default = "#38a6cd",
    },
    boolean = {
        default = "#4cb58a",
    },
    number = {
        default = "#4cb58a",
    },
    type = {
        default = "#8fbcbb",
        builtin = "#70a9a8",
    },
    attribute = {
        default = "#fe9b15",
        builtin = "#fe9b15",
    },
    func = {
        default = "#e6a318",
        builtin = "#e6a318",
        method = "#e6a318",
    },
    constructor = {
        default = "#e6a318",
    },
    keyword = {
        default = "#ec6eaa",
        import = "#f0635c",
        export = "#f0635c",
    },
    operator = {
        default = "#38a6cd",
    },
    punctuation = {
        default = "#946996",
        delimiter = "#38a6cd",
        bracket = "#946996",
        special = "#946996",
    },
    comment = {
        default = "#6d4769",
        doc = "#4cb58a",
        todo = "#6dc29f",
        error = "#f0635c",
        warn = "#e6a318",
        info = "#71c0db",
        hint = "#fe9b15",
    },
    markup = {
        heading = {
            h1 = "#e6a318",
            h2 = "#e6a318",
            h3 = "#e6a318",
            h4 = "#946996",
            h5 = "#946996",
            h6 = "#946996",
        },
        strong = "#e6a318",
        italic = "#e6a318",
        strikethrough = "#e6a318",
        quote = "#6dc29f",
        math = "#4cb58a",
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
        default = "#e6a318",
        builtin = "#fe9b15",
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
