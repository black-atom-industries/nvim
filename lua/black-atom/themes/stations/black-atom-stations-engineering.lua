local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-stations-engineering",
    label = "Black Atom — STA ∷ Engineering",
    appearance = "dark",
    status = "release",
    collection = {
        key = "stations",
        label = "Stations",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#151d1d",
    d20 = "#192422",
    d30 = "#21302b",
    d40 = "#2d423b",
    m10 = "#51796d",
    m20 = "#5b8972",
    m30 = "#75a490",
    m40 = "#91bcad",
    l10 = "#b2e5cd",
    l20 = "#c3eed9",
    l30 = "#d5f4e3",
    l40 = "#e8fbf0",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#21302b",
    gray = "#5b8972",
    dark_red = "#eb7aa8",
    red = "#f08cb4",
    dark_green = "#5dba5d",
    green = "#80c980",
    dark_yellow = "#e9b565",
    yellow = "#b7db6e",
    dark_blue = "#91bcad",
    blue = "#c3eed9",
    dark_magenta = "#8b9dd8",
    magenta = "#9baae6",
    dark_cyan = "#59bf84",
    cyan = "#75d69e",
    light_gray = "#91bcad",
    white = "#d5f4e3",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#192422",
        panel = "#151d1d",
        float = "#151d1d",
        active = "#21302b",
        disabled = "#51796d",
        hover = "#21302b",
        selection = "#2d423b",
        search = "#2d423b",
        contrast = "#d5f4e3",
        negative = "#f08cb4",
        warn = "#b7db6e",
        info = "#c3eed9",
        hint = "#e9b565",
        positive = "#80c980",
        add = "#80c980",
        delete = "#f08cb4",
        modify = "#c3eed9",
    },
    fg = {
        default = "#d5f4e3",
        subtle = "#b2e5cd",
        accent = "#b7db6e",
        disabled = "#75a490",
        contrast = "#192422",
        negative = "#f08cb4",
        warn = "#b7db6e",
        info = "#c3eed9",
        hint = "#e9b565",
        positive = "#80c980",
        add = "#80c980",
        delete = "#f08cb4",
        modify = "#c3eed9",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#c3eed9",
        builtin = "#c3eed9",
        member = "#91bcad",
        parameter = "#e9b565",
    },
    property = {
        default = "#91bcad",
    },
    string = {
        default = "#80c980",
        doc = "#80c980",
        regexp = "#f08cb4",
        escape = "#f08cb4",
    },
    constant = {
        default = "#c3eed9",
        builtin = "#eb7aa8",
    },
    module = {
        default = "#91bcad",
    },
    boolean = {
        default = "#5dba5d",
    },
    number = {
        default = "#5dba5d",
    },
    type = {
        default = "#75d69e",
        builtin = "#59bf84",
    },
    attribute = {
        default = "#e9b565",
        builtin = "#e9b565",
    },
    func = {
        default = "#b7db6e",
        builtin = "#b7db6e",
        method = "#b7db6e",
    },
    constructor = {
        default = "#b7db6e",
    },
    keyword = {
        default = "#9baae6",
        import = "#f08cb4",
        export = "#f08cb4",
    },
    operator = {
        default = "#9baae6",
    },
    punctuation = {
        default = "#91bcad",
        delimiter = "#91bcad",
        bracket = "#91bcad",
        special = "#91bcad",
    },
    comment = {
        default = "#5b8972",
        doc = "#5dba5d",
        todo = "#80c980",
        error = "#f08cb4",
        warn = "#b7db6e",
        info = "#c3eed9",
        hint = "#e9b565",
    },
    markup = {
        heading = {
            h1 = "#b7db6e",
            h2 = "#b7db6e",
            h3 = "#b7db6e",
            h4 = "#91bcad",
            h5 = "#91bcad",
            h6 = "#91bcad",
        },
        strong = "#b7db6e",
        italic = "#b7db6e",
        strikethrough = "#b7db6e",
        quote = "#80c980",
        math = "#5dba5d",
        link = "#80c980",
        list = {
            default = "#91bcad",
            checked = "#80c980",
            unchecked = "#91bcad",
        },
        code = {
            fg = "#5b8972",
            bg = "#21302b",
        },
    },
    tag = {
        default = "#b7db6e",
        builtin = "#e9b565",
        attribute = "#91bcad",
        delimiter = "#b2e5cd",
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

