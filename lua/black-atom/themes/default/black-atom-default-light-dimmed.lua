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
    d10 = "#12171b",
    d20 = "#20252a",
    d30 = "#2e3339",
    d40 = "#3e4349",
    m10 = "#595e64",
    m20 = "#6a6f76",
    m30 = "#7b8187",
    m40 = "#8d9399",
    l10 = "#bec5cc",
    l20 = "#cbd2d9",
    l30 = "#d8dfe6",
    l40 = "#e5ecf3",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#20252a",
    gray = "#595e64",
    dark_red = "#6a6f76",
    red = "#6a6f76",
    dark_green = "#8d9399",
    green = "#8d9399",
    dark_yellow = "#7b8187",
    yellow = "#7b8187",
    dark_blue = "#6a6f76",
    blue = "#6a6f76",
    dark_magenta = "#5981e0",
    magenta = "#8d85ed",
    dark_cyan = "#409d48",
    cyan = "#2eaf6b",
    light_gray = "#8d9399",
    white = "#bec5cc",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#d8dfe6",
        panel = "#cbd2d9",
        float = "#cbd2d9",
        active = "#e5ecf3",
        disabled = "#bec5cc",
        hover = "#bec5cc",
        selection = "#bec5cc",
        search = "#bec5cc",
        contrast = "#3e4349",
        negative = "#f6c9da",
        warn = "#f4d2be",
        info = "#c1dce1",
        hint = "#f4d2be",
        positive = "#bedcbb",
        add = "#bedcbb",
        delete = "#f6c9da",
        modify = "#c1dce1",
    },
    fg = {
        default = "#20252a",
        subtle = "#595e64",
        accent = "#2eaf6b",
        disabled = "#7b8187",
        contrast = "#cbd2d9",
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
        default = "#3e4349",
        builtin = "#3e4349",
        member = "#6a6f76",
        parameter = "#409d48",
    },
    property = {
        default = "#6a6f76",
    },
    string = {
        default = "#409d48",
        doc = "#409d48",
        regexp = "#409d48",
        escape = "#409d48",
    },
    constant = {
        default = "#3e4349",
        builtin = "#2e3339",
    },
    module = {
        default = "#2e3339",
    },
    boolean = {
        default = "#409d48",
    },
    number = {
        default = "#409d48",
    },
    type = {
        default = "#2eaf6b",
        builtin = "#409d48",
    },
    attribute = {
        default = "#2eaf6b",
        builtin = "#409d48",
    },
    func = {
        default = "#2e3339",
        builtin = "#20252a",
        method = "#20252a",
    },
    constructor = {
        default = "#2e3339",
    },
    keyword = {
        default = "#8d85ed",
        import = "#5981e0",
        export = "#5981e0",
    },
    operator = {
        default = "#2e3339",
    },
    punctuation = {
        default = "#3e4349",
        delimiter = "#3e4349",
        bracket = "#3e4349",
        special = "#3e4349",
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
            h1 = "#2eaf6b",
            h2 = "#2eaf6b",
            h3 = "#2eaf6b",
            h4 = "#3e4349",
            h5 = "#3e4349",
            h6 = "#3e4349",
        },
        strong = "#2eaf6b",
        italic = "#2eaf6b",
        strikethrough = "#595e64",
        quote = "#6a6f76",
        math = "#6a6f76",
        link = "#2eaf6b",
        list = {
            default = "#595e64",
            checked = "#00a800",
            unchecked = "#595e64",
        },
        code = {
            fg = "#3e4349",
            bg = "#cbd2d9",
        },
    },
    tag = {
        default = "#2eaf6b",
        builtin = "#409d48",
        attribute = "#595e64",
        delimiter = "#595e64",
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
