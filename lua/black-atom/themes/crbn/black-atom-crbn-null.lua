local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-crbn-null",
    label = "Black At•m — CRB ∷ NULL",
    collection = {
        key = "crbn",
        label = "CRBN",
    },
    appearance = "dark",
    icon = " 󰛸 ",
    status = "release",
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#1f1f1f",
    d20 = "#282828",
    d30 = "#3d3d3d",
    d40 = "#515151",
    m10 = "#727272",
    m20 = "#8c8c8c",
    m30 = "#a6a6a6",
    m40 = "#c0c0c0",
    l10 = "#cdcdcd",
    l20 = "#dadada",
    l30 = "#ececec",
    l40 = "#f1f1f1",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#282828",
    gray = "#727272",
    dark_red = "#515151",
    red = "#8c8c8c",
    dark_green = "#cdcdcd",
    green = "#ececec",
    dark_yellow = "#ee9366",
    yellow = "#ff8357",
    dark_blue = "#a6a6a6",
    blue = "#cdcdcd",
    dark_magenta = "#727272",
    magenta = "#8c8c8c",
    dark_cyan = "#727272",
    cyan = "#8c8c8c",
    light_gray = "#a6a6a6",
    white = "#cdcdcd",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#282828",
        panel = "#1f1f1f",
        float = "#1f1f1f",
        active = "#3d3d3d",
        disabled = "#515151",
        hover = "#3d3d3d",
        selection = "#3d3d3d",
        search = "#3d3d3d",
        contrast = "#cdcdcd",
        negative = "#8c8c8c",
        warn = "#ff8357",
        info = "#cdcdcd",
        hint = "#ee9366",
        positive = "#ececec",
        add = "#ececec",
        delete = "#8c8c8c",
        modify = "#cdcdcd",
    },
    fg = {
        default = "#cdcdcd",
        subtle = "#a6a6a6",
        accent = "#ff8357",
        disabled = "#8c8c8c",
        contrast = "#282828",
        negative = "#8c8c8c",
        warn = "#ff8357",
        info = "#cdcdcd",
        hint = "#ee9366",
        positive = "#ececec",
        add = "#ececec",
        delete = "#8c8c8c",
        modify = "#cdcdcd",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#8c8c8c",
        builtin = "#8c8c8c",
        member = "#727272",
        parameter = "#ee9366",
    },
    property = {
        default = "#a6a6a6",
    },
    string = {
        default = "#cdcdcd",
        doc = "#c0c0c0",
        regexp = "#dadada",
        escape = "#dadada",
    },
    constant = {
        default = "#8c8c8c",
        builtin = "#a6a6a6",
    },
    module = {
        default = "#ff8357",
    },
    boolean = {
        default = "#727272",
    },
    number = {
        default = "#8c8c8c",
    },
    type = {
        default = "#cdcdcd",
        builtin = "#a6a6a6",
    },
    attribute = {
        default = "#ee9366",
        builtin = "#ee9366",
    },
    func = {
        default = "#ff8357",
        builtin = "#ee9366",
        method = "#ff8357",
    },
    constructor = {
        default = "#ff8357",
    },
    keyword = {
        default = "#c0c0c0",
        import = "#8c8c8c",
        export = "#8c8c8c",
    },
    operator = {
        default = "#cdcdcd",
    },
    punctuation = {
        default = "#cdcdcd",
        delimiter = "#cdcdcd",
        bracket = "#cdcdcd",
        special = "#cdcdcd",
    },
    comment = {
        default = "#727272",
        doc = "#8c8c8c",
        todo = "#ececec",
        error = "#8c8c8c",
        warn = "#ff8357",
        info = "#cdcdcd",
        hint = "#ee9366",
    },
    markup = {
        heading = {
            h1 = "#ff8357",
            h2 = "#ff8357",
            h3 = "#ff8357",
            h4 = "#727272",
            h5 = "#727272",
            h6 = "#727272",
        },
        strong = "#ff8357",
        italic = "#ff8357",
        strikethrough = "#ff8357",
        quote = "#ececec",
        math = "#cdcdcd",
        link = "#ececec",
        list = {
            default = "#727272",
            checked = "#ececec",
            unchecked = "#727272",
        },
        code = {
            fg = "#a6a6a6",
            bg = "#282828",
        },
    },
    tag = {
        default = "#ff8357",
        builtin = "#ee9366",
        attribute = "#727272",
        delimiter = "#727272",
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
