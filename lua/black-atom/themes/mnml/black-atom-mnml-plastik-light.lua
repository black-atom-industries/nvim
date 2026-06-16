local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-mnml-plastik-light",
    label = "Black Atom — MNML ∷ Plastik Light",
    appearance = "light",
    status = "development",
    collection = {
        key = "mnml",
        label = "MNML",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#000200",
    d20 = "#000c00",
    d30 = "#001a00",
    d40 = "#002809",
    m10 = "#344136",
    m20 = "#445146",
    m30 = "#5a675c",
    m40 = "#707f73",
    l10 = "#e6e6e6",
    l20 = "#eeeeee",
    l30 = "#fafafa",
    l40 = "#ffffff",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#002809",
    gray = "#344136",
    dark_red = "#c690ff",
    red = "#ff4f99",
    dark_green = "#11ad32",
    green = "#30bd44",
    dark_yellow = "#ff8800",
    yellow = "#00d15d",
    dark_blue = "#8776ff",
    blue = "#5285ff",
    dark_magenta = "#5a675c",
    magenta = "#5a675c",
    dark_cyan = "#707f73",
    cyan = "#707f73",
    light_gray = "#707f73",
    white = "#707f73",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#fafafa",
        panel = "#eeeeee",
        float = "#eeeeee",
        active = "#ffffff",
        disabled = "#e6e6e6",
        hover = "#eeeeee",
        selection = "#e6e6e6",
        search = "#e6e6e6",
        contrast = "#002809",
        negative = "#f0e4ff",
        warn = "#ffe3cd",
        info = "#dedeff",
        hint = "#ffe3cd",
        positive = "#ceecce",
        add = "#ceecce",
        delete = "#f0e4ff",
        modify = "#dedeff",
    },
    fg = {
        default = "#000c00",
        subtle = "#344136",
        accent = "#00d15d",
        disabled = "#5a675c",
        contrast = "#eeeeee",
        negative = "#c690ff",
        warn = "#ff8800",
        info = "#8776ff",
        hint = "#ff8800",
        positive = "#11ad32",
        add = "#11ad32",
        delete = "#c690ff",
        modify = "#8776ff",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#001a00",
        builtin = "#002809",
        member = "#344136",
        parameter = "#ff8800",
    },
    property = {
        default = "#344136",
    },
    string = {
        default = "#445146",
        doc = "#ff8800",
        regexp = "#00d15d",
        escape = "#00d15d",
    },
    constant = {
        default = "#000c00",
        builtin = "#000200",
    },
    module = {
        default = "#001a00",
    },
    boolean = {
        default = "#344136",
    },
    number = {
        default = "#002809",
    },
    type = {
        default = "#000200",
        builtin = "#002809",
    },
    attribute = {
        default = "#ff8800",
        builtin = "#ff8800",
    },
    func = {
        default = "#00d15d",
        builtin = "#ff8800",
        method = "#ff8800",
    },
    constructor = {
        default = "#00d15d",
    },
    keyword = {
        default = "#5285ff",
        import = "#8776ff",
        export = "#8776ff",
    },
    operator = {
        default = "#000c00",
    },
    punctuation = {
        default = "#002809",
        delimiter = "#002809",
        bracket = "#002809",
        special = "#002809",
    },
    comment = {
        default = "#445146",
        doc = "#445146",
        todo = "#11ad32",
        error = "#c690ff",
        warn = "#ff8800",
        info = "#8776ff",
        hint = "#8776ff",
    },
    markup = {
        heading = {
            h1 = "#00d15d",
            h2 = "#00d15d",
            h3 = "#00d15d",
            h4 = "#344136",
            h5 = "#344136",
            h6 = "#344136",
        },
        strong = "#00d15d",
        italic = "#00d15d",
        strikethrough = "#00d15d",
        quote = "#5a675c",
        math = "#445146",
        link = "#ff8800",
        list = {
            default = "#344136",
            checked = "#11ad32",
            unchecked = "#344136",
        },
        code = {
            fg = "#002809",
            bg = "#eeeeee",
        },
    },
    tag = {
        default = "#00d15d",
        builtin = "#ff8800",
        attribute = "#344136",
        delimiter = "#5a675c",
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
