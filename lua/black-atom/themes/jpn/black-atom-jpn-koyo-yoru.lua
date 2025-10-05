local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-jpn-koyo-yoru",
    label = "Black Atom — JPN ∷ Koyo Yoru",
    appearance = "dark",
    status = "release",
    collection = {
        key = "jpn",
        label = "JPN",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#291d2e",
    d20 = "#35293a",
    d30 = "#413446",
    d40 = "#4d4053",
    m10 = "#605872",
    m20 = "#76718f",
    m30 = "#8d89a8",
    m40 = "#9c98b3",
    l10 = "#dcaf87",
    l20 = "#ecbd96",
    l30 = "#fbcaa4",
    l40 = "#ffdbbf",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#4d4053",
    gray = "#76718f",
    dark_red = "#d56b7c",
    red = "#e47889",
    dark_green = "#4fa480",
    green = "#5db28d",
    dark_yellow = "#fd9e66",
    yellow = "#edaa4b",
    dark_blue = "#958aab",
    blue = "#a298b9",
    dark_magenta = "#d08c63",
    magenta = "#eda77d",
    dark_cyan = "#719b8f",
    cyan = "#7ea99c",
    light_gray = "#9c98b3",
    white = "#fbcaa4",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#35293a",
        panel = "#291d2e",
        float = "#291d2e",
        active = "#413446",
        disabled = "#605872",
        hover = "#413446",
        selection = "#4d4053",
        search = "#4d4053",
        contrast = "#fbcaa4",
        negative = "#4f3546",
        warn = "#513c3d",
        info = "#453a4d",
        hint = "#533b41",
        positive = "#3b3e46",
        add = "#3b3e46",
        delete = "#4f3546",
        modify = "#453a4d",
    },
    fg = {
        default = "#fbcaa4",
        subtle = "#9c98b3",
        accent = "#edaa4b",
        disabled = "#8d89a8",
        contrast = "#35293a",
        negative = "#e47889",
        warn = "#edaa4b",
        info = "#a298b9",
        hint = "#fd9e66",
        positive = "#5db28d",
        add = "#5db28d",
        delete = "#e47889",
        modify = "#a298b9",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#ecbd96",
        builtin = "#9c98b3",
        member = "#a298b9",
        parameter = "#fd9e66",
    },
    property = {
        default = "#a298b9",
    },
    string = {
        default = "#5db28d",
        doc = "#5db28d",
        regexp = "#e47889",
        escape = "#e47889",
    },
    constant = {
        default = "#958aab",
        builtin = "#d56b7c",
    },
    module = {
        default = "#958aab",
    },
    boolean = {
        default = "#4fa480",
    },
    number = {
        default = "#4fa480",
    },
    type = {
        default = "#7ea99c",
        builtin = "#719b8f",
    },
    attribute = {
        default = "#fd9e66",
        builtin = "#fd9e66",
    },
    func = {
        default = "#edaa4b",
        builtin = "#edaa4b",
        method = "#edaa4b",
    },
    constructor = {
        default = "#edaa4b",
    },
    keyword = {
        default = "#eda77d",
        import = "#e47889",
        export = "#e47889",
    },
    operator = {
        default = "#958aab",
    },
    punctuation = {
        default = "#9c98b3",
        delimiter = "#958aab",
        bracket = "#9c98b3",
        special = "#9c98b3",
    },
    comment = {
        default = "#76718f",
        doc = "#4fa480",
        todo = "#5db28d",
        error = "#e47889",
        warn = "#edaa4b",
        info = "#a298b9",
        hint = "#fd9e66",
    },
    markup = {
        heading = {
            h1 = "#edaa4b",
            h2 = "#edaa4b",
            h3 = "#edaa4b",
            h4 = "#9c98b3",
            h5 = "#9c98b3",
            h6 = "#9c98b3",
        },
        strong = "#edaa4b",
        italic = "#edaa4b",
        strikethrough = "#edaa4b",
        quote = "#5db28d",
        math = "#4fa480",
        link = "#5db28d",
        list = {
            default = "#9c98b3",
            checked = "#5db28d",
            unchecked = "#9c98b3",
        },
        code = {
            fg = "#9c98b3",
            bg = "#291d2e",
        },
    },
    tag = {
        default = "#edaa4b",
        builtin = "#fd9e66",
        attribute = "#9c98b3",
        delimiter = "#dcaf87",
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
