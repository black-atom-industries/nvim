local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-terra-winter-day",
    label = "Black Atom — TER ∷ Winter Day",
    collection = {
        key = "terra",
        label = "TERRA",
    },
    appearance = "light",
    icon = "  ",
    status = "development",
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#192125",
    d20 = "#1d272c",
    d30 = "#212c31",
    d40 = "#24333a",
    m10 = "#475e6a",
    m20 = "#516c7a",
    m30 = "#5b7988",
    m40 = "#7393a3",
    l10 = "#b6c2c9",
    l20 = "#c5ced3",
    l30 = "#d4dade",
    l40 = "#e2e6e9",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#212c31",
    gray = "#516c7a",
    dark_red = "#ca6d4c",
    red = "#dd7e5d",
    dark_green = "#4a7126",
    green = "#58852c",
    dark_yellow = "#cc764b",
    yellow = "#d19845",
    dark_blue = "#3d668e",
    blue = "#5980a6",
    dark_magenta = "#ab80a8",
    magenta = "#a58bc1",
    dark_cyan = "#296a50",
    cyan = "#348764",
    light_gray = "#b6c2c9",
    white = "#d4dade",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#d4dade",
        panel = "#c5ced3",
        float = "#c5ced3",
        active = "#b6c2c9",
        disabled = "#5b7988",
        hover = "#b6c2c9",
        selection = "#e2e6e9",
        search = "#e2e6e9",
        contrast = "#1d272c",
        negative = "#dd7e5d",
        warn = "#d19845",
        info = "#5980a6",
        hint = "#cc764b",
        positive = "#58852c",
        add = "#58852c",
        delete = "#dd7e5d",
        modify = "#5980a6",
    },
    fg = {
        default = "#1d272c",
        subtle = "#475e6a",
        accent = "#d19845",
        disabled = "#516c7a",
        contrast = "#d4dade",
        negative = "#dd7e5d",
        warn = "#d19845",
        info = "#5980a6",
        hint = "#cc764b",
        positive = "#58852c",
        add = "#58852c",
        delete = "#dd7e5d",
        modify = "#5980a6",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#5980a6",
        builtin = "#3d668e",
        member = "#3d668e",
        parameter = "#cc764b",
    },
    property = {
        default = "#3d668e",
    },
    string = {
        default = "#58852c",
        doc = "#58852c",
        regexp = "#dd7e5d",
        escape = "#dd7e5d",
    },
    constant = {
        default = "#cc764b",
        builtin = "#cc764b",
    },
    module = {
        default = "#3d668e",
    },
    boolean = {
        default = "#4a7126",
    },
    number = {
        default = "#4a7126",
    },
    type = {
        default = "#348764",
        builtin = "#296a50",
    },
    attribute = {
        default = "#cc764b",
        builtin = "#cc764b",
    },
    func = {
        default = "#d19845",
        builtin = "#d19845",
        method = "#d19845",
    },
    constructor = {
        default = "#d19845",
    },
    keyword = {
        default = "#dd7e5d",
        import = "#4a7126",
        export = "#ca6d4c",
    },
    operator = {
        default = "#212c31",
    },
    punctuation = {
        default = "#516c7a",
        delimiter = "#7393a3",
        bracket = "#516c7a",
        special = "#516c7a",
    },
    comment = {
        default = "#516c7a",
        doc = "#4a7126",
        todo = "#58852c",
        error = "#dd7e5d",
        warn = "#d19845",
        info = "#5980a6",
        hint = "#cc764b",
    },
    markup = {
        heading = {
            h1 = "#d19845",
            h2 = "#d19845",
            h3 = "#d19845",
            h4 = "#516c7a",
            h5 = "#516c7a",
            h6 = "#516c7a",
        },
        strong = "#d19845",
        italic = "#d19845",
        strikethrough = "#d19845",
        quote = "#58852c",
        math = "#4a7126",
        link = "#58852c",
        list = {
            default = "#516c7a",
            checked = "#58852c",
            unchecked = "#516c7a",
        },
        code = {
            fg = "#516c7a",
            bg = "#c5ced3",
        },
    },
    tag = {
        default = "#d19845",
        builtin = "#cc764b",
        attribute = "#475e6a",
        delimiter = "#24333a",
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
