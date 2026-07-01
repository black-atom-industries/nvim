local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-default-dark-dimmed",
    label = "Black Atom — Dark Dimmed",
    appearance = "dark",
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
    l10 = "#d0dad6",
    l20 = "#dae4e0",
    l30 = "#e4eeea",
    l40 = "#eef8f4",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#3e4349",
    gray = "#6a6f76",
    dark_red = "#8d9399",
    red = "#8d9399",
    dark_green = "#8d9399",
    green = "#8d9399",
    dark_yellow = "#7b8187",
    yellow = "#7b8187",
    dark_blue = "#6a6f76",
    blue = "#6a6f76",
    dark_magenta = "#709afb",
    magenta = "#a59eff",
    dark_cyan = "#5bb661",
    cyan = "#4ec983",
    light_gray = "#dae4e0",
    white = "#e4eeea",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#20252a",
        panel = "#12171b",
        float = "#12171b",
        active = "#2e3339",
        disabled = "#3e4349",
        hover = "#2e3339",
        selection = "#3e4349",
        search = "#3e4349",
        contrast = "#d0dad6",
        negative = "#633943",
        warn = "#5e4123",
        info = "#255154",
        hint = "#5e4123",
        positive = "#2f5136",
        add = "#2f5136",
        delete = "#633943",
        modify = "#255154",
    },
    fg = {
        default = "#e4eeea",
        subtle = "#7b8187",
        accent = "#4ec983",
        disabled = "#6a6f76",
        contrast = "#20252a",
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
        default = "#d0dad6",
        builtin = "#d0dad6",
        member = "#7b8187",
        parameter = "#5bb661",
    },
    property = {
        default = "#7b8187",
    },
    string = {
        default = "#5bb661",
        doc = "#5bb661",
        regexp = "#5bb661",
        escape = "#5bb661",
    },
    constant = {
        default = "#d0dad6",
        builtin = "#dae4e0",
    },
    module = {
        default = "#dae4e0",
    },
    boolean = {
        default = "#5bb661",
    },
    number = {
        default = "#5bb661",
    },
    type = {
        default = "#4ec983",
        builtin = "#5bb661",
    },
    attribute = {
        default = "#4ec983",
        builtin = "#5bb661",
    },
    func = {
        default = "#e4eeea",
        builtin = "#dae4e0",
        method = "#dae4e0",
    },
    constructor = {
        default = "#e4eeea",
    },
    keyword = {
        default = "#a59eff",
        import = "#709afb",
        export = "#709afb",
    },
    operator = {
        default = "#dae4e0",
    },
    punctuation = {
        default = "#d0dad6",
        delimiter = "#d0dad6",
        bracket = "#d0dad6",
        special = "#d0dad6",
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
            h1 = "#4ec983",
            h2 = "#4ec983",
            h3 = "#4ec983",
            h4 = "#d0dad6",
            h5 = "#d0dad6",
            h6 = "#d0dad6",
        },
        strong = "#4ec983",
        italic = "#4ec983",
        strikethrough = "#8d9399",
        quote = "#7b8187",
        math = "#7b8187",
        link = "#4ec983",
        list = {
            default = "#8d9399",
            checked = "#4cb86a",
            unchecked = "#8d9399",
        },
        code = {
            fg = "#d0dad6",
            bg = "#12171b",
        },
    },
    tag = {
        default = "#4ec983",
        builtin = "#5bb661",
        attribute = "#8d9399",
        delimiter = "#8d9399",
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
