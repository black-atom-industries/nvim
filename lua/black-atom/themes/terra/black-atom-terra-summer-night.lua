local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-terra-summer-night",
    label = "Black Atom — TERRA ∷ Summer Night",
    appearance = "dark",
    status = "release",
    collection = {
        key = "terra",
        label = "TERRA",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#021109",
    d20 = "#0a1a10",
    d30 = "#152318",
    d40 = "#334133",
    m10 = "#394e35",
    m20 = "#5a694b",
    m30 = "#7c8563",
    m40 = "#a0a27e",
    l10 = "#baad8a",
    l20 = "#cdbc9a",
    l30 = "#dfcbaa",
    l40 = "#f9e1c0",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#334133",
    gray = "#394e35",
    dark_red = "#c88b94",
    red = "#c88f7b",
    dark_green = "#6c8c4a",
    green = "#96a85e",
    dark_yellow = "#d6a177",
    yellow = "#bab06f",
    dark_blue = "#5f8d68",
    blue = "#7dac86",
    dark_magenta = "#92768f",
    magenta = "#ba929d",
    dark_cyan = "#4b8f7e",
    cyan = "#6dae97",
    light_gray = "#baad8a",
    white = "#dfcbaa",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#0a1a10",
        panel = "#021109",
        float = "#021109",
        active = "#152318",
        disabled = "#394e35",
        hover = "#152318",
        selection = "#334133",
        search = "#334133",
        contrast = "#dfcbaa",
        negative = "#503c35",
        warn = "#4a4732",
        info = "#364639",
        hint = "#544234",
        positive = "#3e452c",
        add = "#3e452c",
        delete = "#503c35",
        modify = "#364639",
    },
    fg = {
        default = "#dfcbaa",
        subtle = "#a0a27e",
        accent = "#bab06f",
        disabled = "#7c8563",
        contrast = "#0a1a10",
        negative = "#c88f7b",
        warn = "#bab06f",
        info = "#7dac86",
        hint = "#d6a177",
        positive = "#96a85e",
        add = "#96a85e",
        delete = "#c88f7b",
        modify = "#7dac86",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#7dac86",
        builtin = "#5f8d68",
        member = "#5f8d68",
        parameter = "#d6a177",
    },
    property = {
        default = "#5f8d68",
    },
    string = {
        default = "#96a85e",
        doc = "#96a85e",
        regexp = "#d6a177",
        escape = "#c88f7b",
    },
    constant = {
        default = "#d6a177",
        builtin = "#d6a177",
    },
    module = {
        default = "#5f8d68",
    },
    boolean = {
        default = "#d6a177",
    },
    number = {
        default = "#d6a177",
    },
    type = {
        default = "#6dae97",
        builtin = "#4b8f7e",
    },
    attribute = {
        default = "#6dae97",
        builtin = "#6dae97",
    },
    func = {
        default = "#bab06f",
        builtin = "#bab06f",
        method = "#bab06f",
    },
    constructor = {
        default = "#bab06f",
    },
    keyword = {
        default = "#ba929d",
        import = "#c88f7b",
        export = "#c88f7b",
    },
    operator = {
        default = "#ba929d",
    },
    punctuation = {
        default = "#baad8a",
        delimiter = "#a0a27e",
        bracket = "#baad8a",
        special = "#baad8a",
    },
    comment = {
        default = "#394e35",
        doc = "#6c8c4a",
        todo = "#96a85e",
        error = "#c88f7b",
        warn = "#bab06f",
        info = "#7dac86",
        hint = "#d6a177",
    },
    markup = {
        heading = {
            h1 = "#bab06f",
            h2 = "#bab06f",
            h3 = "#bab06f",
            h4 = "#baad8a",
            h5 = "#baad8a",
            h6 = "#baad8a",
        },
        strong = "#bab06f",
        italic = "#bab06f",
        strikethrough = "#bab06f",
        quote = "#96a85e",
        math = "#6c8c4a",
        link = "#96a85e",
        list = {
            default = "#baad8a",
            checked = "#96a85e",
            unchecked = "#baad8a",
        },
        code = {
            fg = "#baad8a",
            bg = "#152318",
        },
    },
    tag = {
        default = "#bab06f",
        builtin = "#bab06f",
        attribute = "#d6a177",
        delimiter = "#d6a177",
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
