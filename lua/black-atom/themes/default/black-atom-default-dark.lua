local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-default-dark",
    label = "Black Atom — Dark",
    appearance = "dark",
    status = "release",
    collection = {
        key = "default",
        label = "Default",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#03110c",
    d20 = "#091a14",
    d30 = "#13231d",
    d40 = "#1c2d27",
    m10 = "#50625b",
    m20 = "#61746c",
    m30 = "#72857e",
    m40 = "#849790",
    l10 = "#c8ddd5",
    l20 = "#d2e7df",
    l30 = "#dcf1e9",
    l40 = "#e6fbf2",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#1c2d27",
    gray = "#61746c",
    dark_red = "#849790",
    red = "#849790",
    dark_green = "#849790",
    green = "#849790",
    dark_yellow = "#72857e",
    yellow = "#72857e",
    dark_blue = "#61746c",
    blue = "#61746c",
    dark_magenta = "#709afb",
    magenta = "#a59eff",
    dark_cyan = "#00b9a9",
    cyan = "#25c9a9",
    light_gray = "#d2e7df",
    white = "#dcf1e9",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#091a14",
        panel = "#03110c",
        float = "#03110c",
        active = "#13231d",
        disabled = "#1c2d27",
        hover = "#13231d",
        selection = "#1c2d27",
        search = "#1c2d27",
        contrast = "#c8ddd5",
        negative = "#5d343e",
        warn = "#583b1d",
        info = "#1f4b4e",
        hint = "#583b1d",
        positive = "#294b31",
        add = "#294b31",
        delete = "#5d343e",
        modify = "#1f4b4e",
    },
    fg = {
        default = "#dcf1e9",
        subtle = "#72857e",
        accent = "#25c9a9",
        disabled = "#61746c",
        contrast = "#091a14",
        negative = "#e97292",
        warn = "#dd881b",
        info = "#00b9c3",
        hint = "#dd881b",
        positive = "#4cb86a",
        add = "#4cb86a",
        delete = "#e97292",
        modify = "#00b9c3",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#c8ddd5",
        builtin = "#c8ddd5",
        member = "#72857e",
        parameter = "#00b9a9",
    },
    property = {
        default = "#72857e",
    },
    string = {
        default = "#00b9a9",
        doc = "#00b9a9",
        regexp = "#00b9a9",
        escape = "#00b9a9",
    },
    constant = {
        default = "#c8ddd5",
        builtin = "#d2e7df",
    },
    module = {
        default = "#d2e7df",
    },
    boolean = {
        default = "#00b9a9",
    },
    number = {
        default = "#00b9a9",
    },
    type = {
        default = "#25c9a9",
        builtin = "#00b9a9",
    },
    attribute = {
        default = "#25c9a9",
        builtin = "#00b9a9",
    },
    func = {
        default = "#dcf1e9",
        builtin = "#d2e7df",
        method = "#d2e7df",
    },
    constructor = {
        default = "#dcf1e9",
    },
    keyword = {
        default = "#a59eff",
        import = "#709afb",
        export = "#709afb",
    },
    operator = {
        default = "#d2e7df",
    },
    punctuation = {
        default = "#c8ddd5",
        delimiter = "#c8ddd5",
        bracket = "#c8ddd5",
        special = "#c8ddd5",
    },
    comment = {
        default = "#5e6a5d",
        doc = "#5e6a5d",
        todo = "#4cb86a",
        error = "#e97292",
        warn = "#dd881b",
        info = "#00b9c3",
        hint = "#00b9c3",
    },
    markup = {
        heading = {
            h1 = "#25c9a9",
            h2 = "#25c9a9",
            h3 = "#25c9a9",
            h4 = "#c8ddd5",
            h5 = "#c8ddd5",
            h6 = "#c8ddd5",
        },
        strong = "#25c9a9",
        italic = "#25c9a9",
        strikethrough = "#849790",
        quote = "#72857e",
        math = "#72857e",
        link = "#25c9a9",
        list = {
            default = "#849790",
            checked = "#4cb86a",
            unchecked = "#849790",
        },
        code = {
            fg = "#c8ddd5",
            bg = "#03110c",
        },
    },
    tag = {
        default = "#25c9a9",
        builtin = "#00b9a9",
        attribute = "#849790",
        delimiter = "#849790",
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
