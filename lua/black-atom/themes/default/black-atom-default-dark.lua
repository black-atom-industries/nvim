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
    d10 = "#080f0f",
    d20 = "#111817",
    d30 = "#1a2121",
    d40 = "#232a2a",
    m10 = "#495762",
    m20 = "#5c6b76",
    m30 = "#73838e",
    m40 = "#91a1ad",
    l10 = "#a3b4c0",
    l20 = "#b6c7d3",
    l30 = "#c9dae7",
    l40 = "#d6e7f4",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#232a2a",
    gray = "#5c6b76",
    dark_red = "#91a1ad",
    red = "#91a1ad",
    dark_green = "#91a1ad",
    green = "#91a1ad",
    dark_yellow = "#73838e",
    yellow = "#73838e",
    dark_blue = "#5c6b76",
    blue = "#5c6b76",
    dark_magenta = "#8fbc8a",
    magenta = "#8fbc8a",
    dark_cyan = "#afdca9",
    cyan = "#afdca9",
    light_gray = "#b6c7d3",
    white = "#c9dae7",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#111817",
        panel = "#080f0f",
        float = "#080f0f",
        active = "#1a2121",
        disabled = "#232a2a",
        hover = "#1a2121",
        selection = "#232a2a",
        search = "#232a2a",
        contrast = "#a3b4c0",
        negative = "#143041",
        warn = "#143426",
        info = "#123434",
        hint = "#143426",
        positive = "#0a3430",
        add = "#0a3430",
        delete = "#143041",
        modify = "#123434",
    },
    fg = {
        default = "#c9dae7",
        subtle = "#73838e",
        accent = "#afdca9",
        disabled = "#5c6b76",
        contrast = "#111817",
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
        default = "#a3b4c0",
        builtin = "#a3b4c0",
        member = "#73838e",
        parameter = "#ada5e1",
    },
    property = {
        default = "#73838e",
    },
    string = {
        default = "#8fbc8a",
        doc = "#8fbc8a",
        regexp = "#c9dae7",
        escape = "#c9dae7",
    },
    constant = {
        default = "#a3b4c0",
        builtin = "#b6c7d3",
    },
    module = {
        default = "#b6c7d3",
    },
    boolean = {
        default = "#a3b4c0",
    },
    number = {
        default = "#a3b4c0",
    },
    type = {
        default = "#afdca9",
        builtin = "#8fbc8a",
    },
    attribute = {
        default = "#8fbc8a",
        builtin = "#8fbc8a",
    },
    func = {
        default = "#afdca9",
        builtin = "#8fbc8a",
        method = "#8fbc8a",
    },
    constructor = {
        default = "#afdca9",
    },
    keyword = {
        default = "#ccc5ff",
        import = "#ada5e1",
        export = "#ada5e1",
    },
    operator = {
        default = "#b6c7d3",
    },
    punctuation = {
        default = "#a3b4c0",
        delimiter = "#a3b4c0",
        bracket = "#a3b4c0",
        special = "#a3b4c0",
    },
    comment = {
        default = "#73838e",
        doc = "#73838e",
        todo = "#4cb86a",
        error = "#e97292",
        warn = "#dd881b",
        info = "#00b9c3",
        hint = "#00b9c3",
    },
    markup = {
        heading = {
            h1 = "#afdca9",
            h2 = "#afdca9",
            h3 = "#afdca9",
            h4 = "#a3b4c0",
            h5 = "#a3b4c0",
            h6 = "#a3b4c0",
        },
        strong = "#afdca9",
        italic = "#afdca9",
        strikethrough = "#91a1ad",
        quote = "#73838e",
        math = "#73838e",
        link = "#8fbc8a",
        list = {
            default = "#91a1ad",
            checked = "#4cb86a",
            unchecked = "#91a1ad",
        },
        code = {
            fg = "#a3b4c0",
            bg = "#080f0f",
        },
    },
    tag = {
        default = "#afdca9",
        builtin = "#8fbc8a",
        attribute = "#91a1ad",
        delimiter = "#91a1ad",
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
