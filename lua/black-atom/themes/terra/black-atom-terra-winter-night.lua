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
    d10 = "#0b0d12",
    d20 = "#12161d",
    d30 = "#1a222e",
    d40 = "#212f3f",
    m10 = "#3f556b",
    m20 = "#4c667f",
    m30 = "#5e748b",
    m40 = "#6f8298",
    l10 = "#c0ccdb",
    l20 = "#d3dbe8",
    l30 = "#e2e8f2",
    l40 = "#eef2f9",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#1a222e",
    gray = "#4c667f",
    dark_red = "#9790c7",
    red = "#a8a6e5",
    dark_green = "#74a8b8",
    green = "#82c3d3",
    dark_yellow = "#eb8656",
    yellow = "#fba952",
    dark_blue = "#729bcf",
    blue = "#7fb6ee",
    dark_magenta = "#9f8fbe",
    magenta = "#b4a7df",
    dark_cyan = "#64b3c0",
    cyan = "#71cfd9",
    light_gray = "#c0ccdb",
    white = "#e2e8f2",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#12161d",
        panel = "#0b0d12",
        float = "#0b0d12",
        active = "#1a222e",
        disabled = "#3f556b",
        hover = "#1a222e",
        selection = "#212f3f",
        search = "#212f3f",
        contrast = "#e2e8f2",
        negative = "#1d212c",
        warn = "#232031",
        info = "#1c212d",
        hint = "#1f1e2e",
        positive = "#1d222c",
        add = "#1d222c",
        delete = "#1d212c",
        modify = "#1c212d",
    },
    fg = {
        default = "#e2e8f2",
        subtle = "#6f8298",
        accent = "#fba952",
        disabled = "#5e748b",
        contrast = "#12161d",
        negative = "#a8a6e5",
        warn = "#fba952",
        info = "#7fb6ee",
        hint = "#eb8656",
        positive = "#82c3d3",
        add = "#82c3d3",
        delete = "#a8a6e5",
        modify = "#7fb6ee",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#7fb6ee",
        builtin = "#729bcf",
        member = "#729bcf",
        parameter = "#eb8656",
    },
    property = {
        default = "#729bcf",
    },
    string = {
        default = "#82c3d3",
        doc = "#82c3d3",
        regexp = "#eb8656",
        escape = "#a8a6e5",
    },
    constant = {
        default = "#eb8656",
        builtin = "#eb8656",
    },
    module = {
        default = "#729bcf",
    },
    boolean = {
        default = "#eb8656",
    },
    number = {
        default = "#eb8656",
    },
    type = {
        default = "#71cfd9",
        builtin = "#64b3c0",
    },
    attribute = {
        default = "#71cfd9",
        builtin = "#71cfd9",
    },
    func = {
        default = "#fba952",
        builtin = "#fba952",
        method = "#fba952",
    },
    constructor = {
        default = "#fba952",
    },
    keyword = {
        default = "#b4a7df",
        import = "#a8a6e5",
        export = "#a8a6e5",
    },
    operator = {
        default = "#b4a7df",
    },
    punctuation = {
        default = "#c0ccdb",
        delimiter = "#6f8298",
        bracket = "#c0ccdb",
        special = "#c0ccdb",
    },
    comment = {
        default = "#4c667f",
        doc = "#74a8b8",
        todo = "#82c3d3",
        error = "#a8a6e5",
        warn = "#fba952",
        info = "#7fb6ee",
        hint = "#eb8656",
    },
    markup = {
        heading = {
            h1 = "#fba952",
            h2 = "#fba952",
            h3 = "#fba952",
            h4 = "#c0ccdb",
            h5 = "#c0ccdb",
            h6 = "#c0ccdb",
        },
        strong = "#fba952",
        italic = "#fba952",
        strikethrough = "#fba952",
        quote = "#82c3d3",
        math = "#74a8b8",
        link = "#82c3d3",
        list = {
            default = "#c0ccdb",
            checked = "#82c3d3",
            unchecked = "#c0ccdb",
        },
        code = {
            fg = "#c0ccdb",
            bg = "#1a222e",
        },
    },
    tag = {
        default = "#fba952",
        builtin = "#fba952",
        attribute = "#eb8656",
        delimiter = "#eb8656",
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
