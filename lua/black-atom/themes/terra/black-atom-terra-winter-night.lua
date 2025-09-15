local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-terra-winter-night",
    label = "Black Atom — TER ∷ Winter Night",
    appearance = "dark",
    status = "release",
    collection = {
        key = "terra",
        label = "TERRA",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#242935",
    d20 = "#2d3240",
    d30 = "#363c4b",
    d40 = "#414857",
    m10 = "#4a5264",
    m20 = "#556073",
    m30 = "#617083",
    m40 = "#6f8094",
    l10 = "#8a9bb0",
    l20 = "#9cacc0",
    l30 = "#afbecf",
    l40 = "#c3d0dc",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#363c4b",
    gray = "#556073",
    dark_red = "#B5A085",
    red = "#D1BB96",
    dark_green = "#7A8394",
    green = "#9CACC0",
    dark_yellow = "#C4B089",
    yellow = "#E0CC9A",
    dark_blue = "#5D7CA0",
    blue = "#7596BD",
    dark_magenta = "#8A9BB0",
    magenta = "#A6B7CC",
    dark_cyan = "#6B8296",
    cyan = "#8399AD",
    light_gray = "#8a9bb0",
    white = "#afbecf",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#2d3240",
        panel = "#242935",
        float = "#242935",
        active = "#363c4b",
        disabled = "#4a5264",
        hover = "#363c4b",
        selection = "#414857",
        search = "#414857",
        contrast = "#afbecf",
        negative = "#D1BB96",
        warn = "#E0CC9A",
        info = "#7596BD",
        hint = "#C4B089",
        positive = "#9CACC0",
        add = "#9CACC0",
        delete = "#D1BB96",
        modify = "#7596BD",
    },
    fg = {
        default = "#afbecf",
        subtle = "#8a9bb0",
        accent = "#E0CC9A",
        disabled = "#617083",
        contrast = "#2d3240",
        negative = "#D1BB96",
        warn = "#E0CC9A",
        info = "#7596BD",
        hint = "#C4B089",
        positive = "#9CACC0",
        add = "#9CACC0",
        delete = "#D1BB96",
        modify = "#7596BD",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#7596BD",
        builtin = "#7596BD",
        member = "#5D7CA0",
        parameter = "#C4B089",
    },
    property = {
        default = "#7596BD",
    },
    string = {
        default = "#9CACC0",
        doc = "#9CACC0",
        regexp = "#C4B089",
        escape = "#D1BB96",
    },
    constant = {
        default = "#C4B089",
        builtin = "#C4B089",
    },
    module = {
        default = "#5D7CA0",
    },
    boolean = {
        default = "#C4B089",
    },
    number = {
        default = "#C4B089",
    },
    type = {
        default = "#8399AD",
        builtin = "#6B8296",
    },
    attribute = {
        default = "#8399AD",
        builtin = "#8399AD",
    },
    func = {
        default = "#E0CC9A",
        builtin = "#E0CC9A",
        method = "#E0CC9A",
    },
    constructor = {
        default = "#E0CC9A",
    },
    keyword = {
        default = "#D1BB96",
        import = "#A6B7CC",
        export = "#A6B7CC",
    },
    operator = {
        default = "#A6B7CC",
    },
    punctuation = {
        default = "#8a9bb0",
        delimiter = "#6f8094",
        bracket = "#8a9bb0",
        special = "#8a9bb0",
    },
    comment = {
        default = "#556073",
        doc = "#7A8394",
        todo = "#9CACC0",
        error = "#D1BB96",
        warn = "#E0CC9A",
        info = "#7596BD",
        hint = "#C4B089",
    },
    markup = {
        heading = {
            h1 = "#E0CC9A",
            h2 = "#E0CC9A",
            h3 = "#E0CC9A",
            h4 = "#8a9bb0",
            h5 = "#8a9bb0",
            h6 = "#8a9bb0",
        },
        strong = "#E0CC9A",
        italic = "#E0CC9A",
        strikethrough = "#E0CC9A",
        quote = "#9CACC0",
        math = "#7A8394",
        link = "#9CACC0",
        list = {
            default = "#8a9bb0",
            checked = "#9CACC0",
            unchecked = "#8a9bb0",
        },
        code = {
            fg = "#8a9bb0",
            bg = "#414857",
        },
    },
    tag = {
        default = "#E0CC9A",
        builtin = "#E0CC9A",
        attribute = "#C4B089",
        delimiter = "#C4B089",
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
