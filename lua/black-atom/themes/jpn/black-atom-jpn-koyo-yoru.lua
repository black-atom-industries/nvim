local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-jpn-koyo-yoru",
    label = "Black At•m — JPN ∷ Koyo Yoru",
    appearance = "dark",
    status = "release",
    collection = {
        key = "jpn",
        label = "JPN",
    },
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#3f2f3f",
    gray = "#6e6a86",
    dark_red = "#b46371",
    red = "#eb6f84",
    dark_green = "#53ad82",
    green = "#7ab89b",
    dark_yellow = "#ee9c6b",
    yellow = "#e9b162",
    dark_blue = "#ad8593",
    blue = "#a095a8",
    dark_magenta = "#ef9d6c",
    magenta = "#ffb488",
    dark_cyan = "#68b19a",
    cyan = "#8cc1b0",
    light_gray = "#aaa7be",
    white = "#e6cbb2",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#332733",
        panel = "#271f27",
        float = "#271f27",
        active = "#3f2f3f",
        disabled = "#605872",
        hover = "#3f2f3f",
        selection = "#4a384a",
        search = "#4a384a",
        contrast = "#e6cbb2",
        negative = "#eb6f84",
        warn = "#e9b162",
        info = "#a095a8",
        hint = "#ee9c6b",
        positive = "#7ab89b",
        add = "#7ab89b",
        delete = "#eb6f84",
        modify = "#a095a8",
    },
    fg = {
        default = "#e6cbb2",
        subtle = "#dab18c",
        accent = "#e9b162",
        disabled = "#908caa",
        contrast = "#332733",
        negative = "#eb6f84",
        warn = "#e9b162",
        info = "#a095a8",
        hint = "#ee9c6b",
        positive = "#7ab89b",
        add = "#7ab89b",
        delete = "#eb6f84",
        modify = "#a095a8",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#e0be9f",
        builtin = "#aaa7be",
        member = "#a095a8",
        parameter = "#ee9c6b",
    },
    property = {
        default = "#a095a8",
    },
    string = {
        default = "#7ab89b",
        doc = "#7ab89b",
        regexp = "#eb6f84",
        escape = "#eb6f84",
    },
    constant = {
        default = "#ad8593",
        builtin = "#b46371",
    },
    module = {
        default = "#ad8593",
    },
    boolean = {
        default = "#53ad82",
    },
    number = {
        default = "#53ad82",
    },
    type = {
        default = "#8cc1b0",
        builtin = "#68b19a",
    },
    attribute = {
        default = "#ee9c6b",
        builtin = "#ee9c6b",
    },
    func = {
        default = "#e9b162",
        builtin = "#e9b162",
        method = "#e9b162",
    },
    constructor = {
        default = "#e9b162",
    },
    keyword = {
        default = "#ffb488",
        import = "#eb6f84",
        export = "#eb6f84",
    },
    operator = {
        default = "#ad8593",
    },
    punctuation = {
        default = "#aaa7be",
        delimiter = "#ad8593",
        bracket = "#aaa7be",
        special = "#aaa7be",
    },
    comment = {
        default = "#6e6a86",
        doc = "#53ad82",
        todo = "#7ab89b",
        error = "#eb6f84",
        warn = "#e9b162",
        info = "#a095a8",
        hint = "#ee9c6b",
    },
    markup = {
        heading = {
            h1 = "#e9b162",
            h2 = "#e9b162",
            h3 = "#e9b162",
            h4 = "#aaa7be",
            h5 = "#aaa7be",
            h6 = "#aaa7be",
        },
        strong = "#e9b162",
        italic = "#e9b162",
        strikethrough = "#e9b162",
        quote = "#7ab89b",
        math = "#53ad82",
        link = "#7ab89b",
        list = {
            default = "#aaa7be",
            checked = "#7ab89b",
            unchecked = "#aaa7be",
        },
        code = {
            fg = "#aaa7be",
            bg = "#271f27",
        },
    },
    tag = {
        default = "#e9b162",
        builtin = "#ee9c6b",
        attribute = "#aaa7be",
        delimiter = "#dab18c",
    },
}

---@type BlackAtom.Theme.Colors
M.colors = {
    none = "NONE",
    palette = M.palette,
    ui = M.ui,
    syntax = M.syntax,
}

return M
