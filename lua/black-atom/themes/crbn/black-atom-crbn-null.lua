local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-crbn-null",
    label = "Black Atom — CRB ∷ NULL",
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
    d10 = "#0d0d0d",
    d20 = "#131a20",
    d30 = "#253341",
    d40 = "#3b4c5c",
    m10 = "#566575",
    m20 = "#7b8d9e",
    m30 = "#a1b5c5",
    m40 = "#bacad8",
    l10 = "#d3d9df",
    l20 = "#e0e6ec",
    l30 = "#ebf2f8",
    l40 = "#f5f9ff",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#131a20",
    gray = "#566575",
    dark_red = "#f33e25",
    red = "#ff624d",
    dark_green = "#6ad147",
    green = "#8bdb70",
    dark_yellow = "#ee9366",
    yellow = "#ff8357",
    dark_blue = "#4481ef",
    blue = "#679cff",
    dark_magenta = "#566575",
    magenta = "#7b8d9e",
    dark_cyan = "#566575",
    cyan = "#7b8d9e",
    light_gray = "#a1b5c5",
    white = "#d3d9df",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#0d0d0d",
        panel = "#131a20",
        float = "#131a20",
        active = "#253341",
        disabled = "#3b4c5c",
        hover = "#253341",
        selection = "#3C2D00",
        search = "#3C2D00",
        contrast = "#d3d9df",
        negative = "#ff624d",
        warn = "#ff8357",
        info = "#679cff",
        hint = "#ee9366",
        positive = "#8bdb70",
        add = "#8bdb70",
        delete = "#ff624d",
        modify = "#679cff",
    },
    fg = {
        default = "#d3d9df",
        subtle = "#a1b5c5",
        accent = "#ff8357",
        disabled = "#7b8d9e",
        contrast = "#131a20",
        negative = "#ff624d",
        warn = "#ff8357",
        info = "#679cff",
        hint = "#ee9366",
        positive = "#8bdb70",
        add = "#8bdb70",
        delete = "#ff624d",
        modify = "#679cff",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#7b8d9e",
        builtin = "#7b8d9e",
        member = "#566575",
        parameter = "#ee9366",
    },
    property = {
        default = "#a1b5c5",
    },
    string = {
        default = "#566575",
        doc = "#3b4c5c",
        regexp = "#d3d9df",
        escape = "#d3d9df",
    },
    constant = {
        default = "#7b8d9e",
        builtin = "#a1b5c5",
    },
    module = {
        default = "#ff8357",
    },
    boolean = {
        default = "#566575",
    },
    number = {
        default = "#7b8d9e",
    },
    type = {
        default = "#d3d9df",
        builtin = "#a1b5c5",
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
        default = "#bacad8",
        import = "#7b8d9e",
        export = "#7b8d9e",
    },
    operator = {
        default = "#d3d9df",
    },
    punctuation = {
        default = "#d3d9df",
        delimiter = "#d3d9df",
        bracket = "#d3d9df",
        special = "#d3d9df",
    },
    comment = {
        default = "#566575",
        doc = "#7b8d9e",
        todo = "#8bdb70",
        error = "#ff624d",
        warn = "#ff8357",
        info = "#679cff",
        hint = "#ee9366",
    },
    markup = {
        heading = {
            h1 = "#ff8357",
            h2 = "#ff8357",
            h3 = "#ff8357",
            h4 = "#566575",
            h5 = "#566575",
            h6 = "#566575",
        },
        strong = "#ff8357",
        italic = "#ff8357",
        strikethrough = "#ff8357",
        quote = "#8bdb70",
        math = "#6ad147",
        link = "#8bdb70",
        list = {
            default = "#566575",
            checked = "#8bdb70",
            unchecked = "#566575",
        },
        code = {
            fg = "#a1b5c5",
            bg = "#131a20",
        },
    },
    tag = {
        default = "#ff8357",
        builtin = "#ee9366",
        attribute = "#566575",
        delimiter = "#566575",
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
