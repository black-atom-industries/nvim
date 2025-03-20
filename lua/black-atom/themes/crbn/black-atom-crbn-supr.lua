local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-crbn-supr",
    label = "Black At•m — CRB ∷ SUPR",
    collection = {
        key = "crbn",
        label = "CRBN",
    },
    appearance = "light",
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
    dark_yellow = "#ff4a00",
    yellow = "#FF6833",
    dark_blue = "#a6a6a6",
    blue = "#cdcdcd",
    dark_magenta = "#727272",
    magenta = "#8c8c8c",
    dark_cyan = "#3d3d3d",
    cyan = "#282828",
    light_gray = "#a6a6a6",
    white = "#cdcdcd",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#ececec",
        panel = "#dadada",
        float = "#dadada",
        active = "#cdcdcd",
        disabled = "#8c8c8c",
        hover = "#cdcdcd",
        selection = "#dadada",
        search = "#dadada",
        contrast = "#282828",
        negative = "#8c8c8c",
        warn = "#FF6833",
        info = "#cdcdcd",
        hint = "#ff4a00",
        positive = "#ececec",
        add = "#ececec",
        delete = "#8c8c8c",
        modify = "#cdcdcd",
    },
    fg = {
        default = "#282828",
        subtle = "#515151",
        accent = "#FF6833",
        disabled = "#8c8c8c",
        contrast = "#dadada",
        negative = "#8c8c8c",
        warn = "#FF6833",
        info = "#cdcdcd",
        hint = "#ff4a00",
        positive = "#ececec",
        add = "#ececec",
        delete = "#8c8c8c",
        modify = "#cdcdcd",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#515151",
        builtin = "#515151",
        member = "#727272",
        parameter = "#ff4a00",
    },
    property = {
        default = "#727272",
    },
    string = {
        default = "#727272",
        doc = "#8c8c8c",
        regexp = "#1f1f1f",
        escape = "#1f1f1f",
    },
    constant = {
        default = "#1f1f1f",
        builtin = "#1f1f1f",
    },
    module = {
        default = "#cdcdcd",
    },
    boolean = {
        default = "#727272",
    },
    number = {
        default = "#515151",
    },
    type = {
        default = "#1f1f1f",
        builtin = "#515151",
    },
    attribute = {
        default = "#ff4a00",
        builtin = "#ff4a00",
    },
    func = {
        default = "#FF6833",
        builtin = "#ff4a00",
        method = "#FF6833",
    },
    constructor = {
        default = "#FF6833",
    },
    keyword = {
        default = "#3d3d3d",
        import = "#727272",
        export = "#727272",
    },
    operator = {
        default = "#282828",
    },
    punctuation = {
        default = "#282828",
        delimiter = "#282828",
        bracket = "#282828",
        special = "#282828",
    },
    comment = {
        default = "#727272",
        doc = "#8c8c8c",
        todo = "#ececec",
        error = "#8c8c8c",
        warn = "#FF6833",
        info = "#cdcdcd",
        hint = "#ff4a00",
    },
    markup = {
        heading = {
            h1 = "#FF6833",
            h2 = "#FF6833",
            h3 = "#FF6833",
            h4 = "#727272",
            h5 = "#727272",
            h6 = "#727272",
        },
        strong = "#FF6833",
        italic = "#FF6833",
        strikethrough = "#FF6833",
        quote = "#ececec",
        math = "#cdcdcd",
        link = "#ececec",
        list = {
            default = "#727272",
            checked = "#ececec",
            unchecked = "#727272",
        },
        code = {
            fg = "#515151",
            bg = "#dadada",
        },
    },
    tag = {
        default = "#FF6833",
        builtin = "#ff4a00",
        attribute = "#727272",
        delimiter = "#515151",
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
