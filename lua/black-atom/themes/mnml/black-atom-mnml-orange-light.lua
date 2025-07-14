local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-mnml-orange-light",
    label = "Black Atom — MNM ∷ Orange Light",
    appearance = "light",
    status = "development",
    collection = {
        key = "mnml",
        label = "MNM",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#131517",
    d20 = "#1f2326",
    d30 = "#2d3338",
    d40 = "#3b4249",
    m10 = "#507294",
    m20 = "#698cae",
    m30 = "#8caac1",
    m40 = "#adc1d3",
    l10 = "#e5ebf1",
    l20 = "#ebf1f4",
    l30 = "#f2f6f9",
    l40 = "#ffffff",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#1f2326",
    gray = "#507294",
    dark_red = "#e52800",
    red = "#ff4019",
    dark_green = "#507294",
    green = "#698cae",
    dark_yellow = "#ff4200",
    yellow = "#ff7200",
    dark_blue = "#698cae",
    blue = "#8caac1",
    dark_magenta = "#507294",
    magenta = "#698cae",
    dark_cyan = "#2d3338",
    cyan = "#1f2326",
    light_gray = "#8caac1",
    white = "#e5ebf1",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#ffffff",
        panel = "#f2f6f9",
        float = "#f2f6f9",
        active = "#ebf1f4",
        disabled = "#698cae",
        hover = "#e5ebf1",
        selection = "#e5ebf1",
        search = "#e5ebf1",
        contrast = "#1f2326",
        negative = "#ff4019",
        warn = "#ff4019",
        info = "#8caac1",
        hint = "#ff4200",
        positive = "#698cae",
        add = "#698cae",
        delete = "#ff4019",
        modify = "#8caac1",
    },
    fg = {
        default = "#1f2326",
        subtle = "#3b4249",
        accent = "#ff7200",
        disabled = "#698cae",
        contrast = "#ebf1f4",
        negative = "#ff4019",
        warn = "#ff4019",
        info = "#8caac1",
        hint = "#ff4200",
        positive = "#698cae",
        add = "#698cae",
        delete = "#ff4019",
        modify = "#8caac1",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#3b4249",
        builtin = "#3b4249",
        member = "#ff4019",
        parameter = "#ff7200",
    },
    property = {
        default = "#ff4019",
    },
    string = {
        default = "#2d3338",
        doc = "#3b4249",
        regexp = "#131517",
        escape = "#131517",
    },
    constant = {
        default = "#1f2326",
        builtin = "#131517",
    },
    module = {
        default = "#8caac1",
    },
    boolean = {
        default = "#507294",
    },
    number = {
        default = "#3b4249",
    },
    type = {
        default = "#131517",
        builtin = "#3b4249",
    },
    attribute = {
        default = "#ff4019",
        builtin = "#ff4019",
    },
    func = {
        default = "#ff7200",
        builtin = "#ff4019",
        method = "#ff4019",
    },
    constructor = {
        default = "#ff7200",
    },
    keyword = {
        default = "#2d3338",
        import = "#ff4019",
        export = "#e52800",
    },
    operator = {
        default = "#1f2326",
    },
    punctuation = {
        default = "#3b4249",
        delimiter = "#3b4249",
        bracket = "#3b4249",
        special = "#3b4249",
    },
    comment = {
        default = "#507294",
        doc = "#698cae",
        todo = "#698cae",
        error = "#ff4019",
        warn = "#ff7200",
        info = "#8caac1",
        hint = "#ff4019",
    },
    markup = {
        heading = {
            h1 = "#ff7200",
            h2 = "#ff7200",
            h3 = "#ff7200",
            h4 = "#507294",
            h5 = "#507294",
            h6 = "#507294",
        },
        strong = "#ff7200",
        italic = "#ff7200",
        strikethrough = "#ff7200",
        quote = "#698cae",
        math = "#507294",
        link = "#698cae",
        list = {
            default = "#507294",
            checked = "#698cae",
            unchecked = "#507294",
        },
        code = {
            fg = "#3b4249",
            bg = "#ebf1f4",
        },
    },
    tag = {
        default = "#ff7200",
        builtin = "#ff4019",
        attribute = "#507294",
        delimiter = "#3b4249",
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