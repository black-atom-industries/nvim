local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-mnml-blue-dark",
    label = "Black Atom — MNM ∷ Blue Dark",
    appearance = "dark",
    status = "development",
    collection = {
        key = "mnml",
        label = "MNM",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#17191c",
    d20 = "#191d23",
    d30 = "#22272e",
    d40 = "#333a45",
    m10 = "#5d6570",
    m20 = "#68717e",
    m30 = "#727c8c",
    m40 = "#8f97a3",
    l10 = "#adbcd3",
    l20 = "#bcc8db",
    l30 = "#cbd6e7",
    l40 = "#dae4f2",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#5d6570",
    gray = "#5d6570",
    dark_red = "#5d6570",
    red = "#8f97a3",
    dark_green = "#5d6570",
    green = "#727c8c",
    dark_yellow = "#5d6570",
    yellow = "#727c8c",
    dark_blue = "#5d6570",
    blue = "#68717e",
    dark_magenta = "#5d6570",
    magenta = "#727c8c",
    dark_cyan = "#5d6570",
    cyan = "#8f97a3",
    light_gray = "#5d6570",
    white = "#bcc8db",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#17191c",
        panel = "#191d23",
        float = "#191d23",
        active = "#22272e",
        disabled = "#333a45",
        hover = "#22272e",
        selection = "#333a45",
        search = "#333a45",
        contrast = "#adbcd3",
        negative = "#e64433",
        warn = "#f7c423",
        info = "#3493ff",
        hint = "#f7c423",
        positive = "#43d480",
        add = "#43d480",
        delete = "#e64433",
        modify = "#3493ff",
    },
    fg = {
        default = "#cbd6e7",
        subtle = "#8f97a3",
        accent = "#57a5ff",
        disabled = "#68717e",
        contrast = "#191d23",
        negative = "#e64433",
        warn = "#f7c423",
        info = "#3493ff",
        hint = "#f7c423",
        positive = "#43d480",
        add = "#43d480",
        delete = "#e64433",
        modify = "#3493ff",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#adbcd3",
        builtin = "#adbcd3",
        member = "#3493ff",
        parameter = "#57a5ff",
    },
    property = {
        default = "#3493ff",
    },
    string = {
        default = "#bcc8db",
        doc = "#adbcd3",
        regexp = "#dae4f2",
        escape = "#dae4f2",
    },
    constant = {
        default = "#adbcd3",
        builtin = "#bcc8db",
    },
    module = {
        default = "#bcc8db",
    },
    boolean = {
        default = "#8f97a3",
    },
    number = {
        default = "#adbcd3",
    },
    type = {
        default = "#dae4f2",
        builtin = "#dae4f2",
    },
    attribute = {
        default = "#3493ff",
        builtin = "#3493ff",
    },
    func = {
        default = "#57a5ff",
        builtin = "#3493ff",
        method = "#3493ff",
    },
    constructor = {
        default = "#57a5ff",
    },
    keyword = {
        default = "#bcc8db",
        import = "#cbd6e7",
        export = "#cbd6e7",
    },
    operator = {
        default = "#cbd6e7",
    },
    punctuation = {
        default = "#adbcd3",
        delimiter = "#adbcd3",
        bracket = "#adbcd3",
        special = "#adbcd3",
    },
    comment = {
        default = "#727c8c",
        doc = "#727c8c",
        todo = "#43d480",
        error = "#e64433",
        warn = "#f7c423",
        info = "#3493ff",
        hint = "#3493ff",
    },
    markup = {
        heading = {
            h1 = "#57a5ff",
            h2 = "#57a5ff",
            h3 = "#57a5ff",
            h4 = "#8f97a3",
            h5 = "#8f97a3",
            h6 = "#8f97a3",
        },
        strong = "#57a5ff",
        italic = "#57a5ff",
        strikethrough = "#57a5ff",
        quote = "#68717e",
        math = "#68717e",
        link = "#3493ff",
        list = {
            default = "#8f97a3",
            checked = "#43d480",
            unchecked = "#8f97a3",
        },
        code = {
            fg = "#adbcd3",
            bg = "#191d23",
        },
    },
    tag = {
        default = "#57a5ff",
        builtin = "#3493ff",
        attribute = "#727c8c",
        delimiter = "#adbcd3",
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
