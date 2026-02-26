local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-default-light",
    label = "Black Atom — Light",
    appearance = "light",
    status = "release",
    collection = {
        key = "default",
        label = "Default",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#191b1c",
    d20 = "#28292a",
    d30 = "#313334",
    d40 = "#3c3d3e",
    m10 = "#576570",
    m20 = "#788288",
    m30 = "#999fa4",
    m40 = "#bbbec1",
    l10 = "#d3d6d9",
    l20 = "#dbdee1",
    l30 = "#eceff1",
    l40 = "#f9fcff",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#28292a",
    gray = "#576570",
    dark_red = "#788288",
    red = "#788288",
    dark_green = "#bbbec1",
    green = "#bbbec1",
    dark_yellow = "#999fa4",
    yellow = "#999fa4",
    dark_blue = "#788288",
    blue = "#788288",
    dark_magenta = "#2f8728",
    magenta = "#2f8728",
    dark_cyan = "#60a259",
    cyan = "#60a259",
    light_gray = "#bbbec1",
    white = "#d3d6d9",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#eceff1",
        panel = "#dbdee1",
        float = "#dbdee1",
        active = "#f9fcff",
        disabled = "#d3d6d9",
        hover = "#dbdee1",
        selection = "#d3d6d9",
        search = "#d3d6d9",
        contrast = "#3c3d3e",
        negative = "#cdd3fc",
        warn = "#cfd0f6",
        info = "#c8dbea",
        hint = "#cfd0f6",
        positive = "#b3deed",
        add = "#b3deed",
        delete = "#cdd3fc",
        modify = "#c8dbea",
    },
    fg = {
        default = "#28292a",
        subtle = "#576570",
        accent = "#60a259",
        disabled = "#999fa4",
        contrast = "#dbdee1",
        negative = "#c70050",
        warn = "#ba2000",
        info = "#00839a",
        hint = "#ba2000",
        positive = "#008400",
        add = "#008400",
        delete = "#c70050",
        modify = "#00839a",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#3c3d3e",
        builtin = "#3c3d3e",
        member = "#788288",
        parameter = "#735dc4",
    },
    property = {
        default = "#788288",
    },
    string = {
        default = "#2f8728",
        doc = "#2f8728",
        regexp = "#28292a",
        escape = "#28292a",
    },
    constant = {
        default = "#3c3d3e",
        builtin = "#313334",
    },
    module = {
        default = "#313334",
    },
    boolean = {
        default = "#3c3d3e",
    },
    number = {
        default = "#3c3d3e",
    },
    type = {
        default = "#60a259",
        builtin = "#2f8728",
    },
    attribute = {
        default = "#2f8728",
        builtin = "#2f8728",
    },
    func = {
        default = "#60a259",
        builtin = "#2f8728",
        method = "#2f8728",
    },
    constructor = {
        default = "#60a259",
    },
    keyword = {
        default = "#8f81d6",
        import = "#735dc4",
        export = "#735dc4",
    },
    operator = {
        default = "#313334",
    },
    punctuation = {
        default = "#3c3d3e",
        delimiter = "#3c3d3e",
        bracket = "#3c3d3e",
        special = "#3c3d3e",
    },
    comment = {
        default = "#788288",
        doc = "#788288",
        todo = "#008400",
        error = "#c70050",
        warn = "#ba2000",
        info = "#00839a",
        hint = "#00839a",
    },
    markup = {
        heading = {
            h1 = "#60a259",
            h2 = "#60a259",
            h3 = "#60a259",
            h4 = "#3c3d3e",
            h5 = "#3c3d3e",
            h6 = "#3c3d3e",
        },
        strong = "#60a259",
        italic = "#60a259",
        strikethrough = "#576570",
        quote = "#788288",
        math = "#788288",
        link = "#2f8728",
        list = {
            default = "#576570",
            checked = "#008400",
            unchecked = "#576570",
        },
        code = {
            fg = "#3c3d3e",
            bg = "#dbdee1",
        },
    },
    tag = {
        default = "#60a259",
        builtin = "#2f8728",
        attribute = "#576570",
        delimiter = "#576570",
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
