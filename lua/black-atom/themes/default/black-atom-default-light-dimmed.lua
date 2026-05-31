local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-default-light-dimmed",
    label = "Black Atom — Light Dimmed",
    appearance = "light",
    status = "release",
    collection = {
        key = "default",
        label = "Default",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#0f1814",
    d20 = "#1d2722",
    d30 = "#2b3631",
    d40 = "#3b4541",
    m10 = "#55615c",
    m20 = "#66726d",
    m30 = "#78837e",
    m40 = "#899590",
    l10 = "#bbc8c2",
    l20 = "#c8d4cf",
    l30 = "#d5e2dc",
    l40 = "#e2efe9",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#1d2722",
    gray = "#55615c",
    dark_red = "#66726d",
    red = "#66726d",
    dark_green = "#899590",
    green = "#899590",
    dark_yellow = "#78837e",
    yellow = "#78837e",
    dark_blue = "#66726d",
    blue = "#66726d",
    dark_magenta = "#5981e0",
    magenta = "#8d85ed",
    dark_cyan = "#0fa05c",
    cyan = "#00b290",
    light_gray = "#899590",
    white = "#bbc8c2",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#d5e2dc",
        panel = "#c8d4cf",
        float = "#c8d4cf",
        active = "#e2efe9",
        disabled = "#bbc8c2",
        hover = "#bbc8c2",
        selection = "#bbc8c2",
        search = "#bbc8c2",
        contrast = "#3b4541",
        negative = "#f6c9da",
        warn = "#f4d2be",
        info = "#c1dce1",
        hint = "#f4d2be",
        positive = "#bedcbb",
        add = "#bedcbb",
        delete = "#f6c9da",
        modify = "#c1dce1",
    },
    fg = {
        default = "#1d2722",
        subtle = "#55615c",
        accent = "#00b290",
        disabled = "#78837e",
        contrast = "#c8d4cf",
        negative = "#ff50a7",
        warn = "#ff7e00",
        info = "#00abc1",
        hint = "#ff7e00",
        positive = "#00a800",
        add = "#00a800",
        delete = "#ff50a7",
        modify = "#00abc1",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#3b4541",
        builtin = "#3b4541",
        member = "#66726d",
        parameter = "#0fa05c",
    },
    property = {
        default = "#66726d",
    },
    string = {
        default = "#0fa05c",
        doc = "#0fa05c",
        regexp = "#0fa05c",
        escape = "#0fa05c",
    },
    constant = {
        default = "#3b4541",
        builtin = "#2b3631",
    },
    module = {
        default = "#2b3631",
    },
    boolean = {
        default = "#0fa05c",
    },
    number = {
        default = "#0fa05c",
    },
    type = {
        default = "#00b290",
        builtin = "#0fa05c",
    },
    attribute = {
        default = "#00b290",
        builtin = "#0fa05c",
    },
    func = {
        default = "#2b3631",
        builtin = "#1d2722",
        method = "#1d2722",
    },
    constructor = {
        default = "#2b3631",
    },
    keyword = {
        default = "#8d85ed",
        import = "#5981e0",
        export = "#5981e0",
    },
    operator = {
        default = "#2b3631",
    },
    punctuation = {
        default = "#3b4541",
        delimiter = "#3b4541",
        bracket = "#3b4541",
        special = "#3b4541",
    },
    comment = {
        default = "#606d60",
        doc = "#606d60",
        todo = "#00a800",
        error = "#ff50a7",
        warn = "#ff7e00",
        info = "#00abc1",
        hint = "#00abc1",
    },
    markup = {
        heading = {
            h1 = "#00b290",
            h2 = "#00b290",
            h3 = "#00b290",
            h4 = "#3b4541",
            h5 = "#3b4541",
            h6 = "#3b4541",
        },
        strong = "#00b290",
        italic = "#00b290",
        strikethrough = "#55615c",
        quote = "#66726d",
        math = "#66726d",
        link = "#00b290",
        list = {
            default = "#55615c",
            checked = "#00a800",
            unchecked = "#55615c",
        },
        code = {
            fg = "#3b4541",
            bg = "#c8d4cf",
        },
    },
    tag = {
        default = "#00b290",
        builtin = "#0fa05c",
        attribute = "#55615c",
        delimiter = "#55615c",
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
