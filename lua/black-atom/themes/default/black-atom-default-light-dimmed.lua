local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-default-light-dimmed",
    label = "Black Atom — Light Dimmed",
    appearance = "light",
    status = "release",
    collection = {
        key = "default",
        label = "Default",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#091a14",
    d20 = "#172822",
    d30 = "#263731",
    d40 = "#354740",
    m10 = "#50625b",
    m20 = "#61746c",
    m30 = "#72857e",
    m40 = "#849790",
    l10 = "#c2d7ce",
    l20 = "#cbe0d8",
    l30 = "#d5eae2",
    l40 = "#dff4ec",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#172822",
    gray = "#50625b",
    dark_red = "#61746c",
    red = "#61746c",
    dark_green = "#849790",
    green = "#849790",
    dark_yellow = "#72857e",
    yellow = "#72857e",
    dark_blue = "#61746c",
    blue = "#61746c",
    dark_magenta = "#5981e0",
    magenta = "#8d85ed",
    dark_cyan = "#00a292",
    cyan = "#00b290",
    light_gray = "#849790",
    white = "#c2d7ce",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#d5eae2",
        panel = "#cbe0d8",
        float = "#cbe0d8",
        active = "#dff4ec",
        disabled = "#c2d7ce",
        hover = "#c2d7ce",
        selection = "#c2d7ce",
        search = "#c2d7ce",
        contrast = "#354740",
        negative = "#f9cbdc",
        warn = "#f6d4c0",
        info = "#c3dee3",
        hint = "#f6d4c0",
        positive = "#c1debe",
        add = "#c1debe",
        delete = "#f9cbdc",
        modify = "#c3dee3",
    },
    fg = {
        default = "#172822",
        subtle = "#50625b",
        accent = "#00b290",
        disabled = "#72857e",
        contrast = "#cbe0d8",
        negative = "#ff50a7",
        warn = "#ff7e00",
        info = "#00abc1",
        hint = "#ff7e00",
        positive = "#00a800",
        add = "#00a800",
        delete = "#ff50a7",
        modify = "#00abc1",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#354740",
        builtin = "#354740",
        member = "#61746c",
        parameter = "#00a292",
    },
    property = {
        default = "#61746c",
    },
    string = {
        default = "#00a292",
        doc = "#00a292",
        regexp = "#00a292",
        escape = "#00a292",
    },
    constant = {
        default = "#354740",
        builtin = "#263731",
    },
    module = {
        default = "#263731",
    },
    boolean = {
        default = "#00a292",
    },
    number = {
        default = "#00a292",
    },
    type = {
        default = "#00b290",
        builtin = "#00a292",
    },
    attribute = {
        default = "#00b290",
        builtin = "#00a292",
    },
    func = {
        default = "#263731",
        builtin = "#172822",
        method = "#172822",
    },
    constructor = {
        default = "#263731",
    },
    keyword = {
        default = "#8d85ed",
        import = "#5981e0",
        export = "#5981e0",
    },
    operator = {
        default = "#263731",
    },
    punctuation = {
        default = "#354740",
        delimiter = "#354740",
        bracket = "#354740",
        special = "#354740",
    },
    comment = {
        default = "#606d60",
        doc = "#606d60",
        todo = "#00a800",
        error = "#ff50a7",
        warn = "#ff7e00",
        info = "#00abc1",
        hint = "#00abc1",
    },
    markup = {
        heading = {
            h1 = "#00b290",
            h2 = "#00b290",
            h3 = "#00b290",
            h4 = "#354740",
            h5 = "#354740",
            h6 = "#354740",
        },
        strong = "#00b290",
        italic = "#00b290",
        strikethrough = "#50625b",
        quote = "#61746c",
        math = "#61746c",
        link = "#00b290",
        list = {
            default = "#50625b",
            checked = "#00a800",
            unchecked = "#50625b",
        },
        code = {
            fg = "#354740",
            bg = "#cbe0d8",
        },
    },
    tag = {
        default = "#00b290",
        builtin = "#00a292",
        attribute = "#50625b",
        delimiter = "#50625b",
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
