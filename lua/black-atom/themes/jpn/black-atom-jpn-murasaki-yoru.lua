local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-jpn-murasaki-yoru",
    label = "Black Atom — JPN ∷ Murasaki Yoru",
    appearance = "dark",
    status = "release",
    collection = {
        key = "jpn",
        label = "JPN",
    },
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    d10 = "#250d15",
    d20 = "#351b23",
    d30 = "#452a32",
    d40 = "#5b3e47",
    m10 = "#6d4769",
    m20 = "#7d5178",
    m30 = "#865f88",
    m40 = "#946996",
    l10 = "#b796b8",
    l20 = "#c9b1cb",
    l30 = "#d4bfd6",
    l40 = "#e8dbe9",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#5b3e47",
    gray = "#7d5178",
    dark_red = "#ed7668",
    red = "#ff857b",
    dark_green = "#72ad91",
    green = "#80bda2",
    dark_yellow = "#e89a47",
    yellow = "#dca23a",
    dark_blue = "#7ea5b7",
    blue = "#8cb6c5",
    dark_magenta = "#b9a2d4",
    magenta = "#d49bb2",
    dark_cyan = "#62adac",
    cyan = "#72bdbc",
    light_gray = "#946996",
    white = "#b796b8",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "#351b23",
        panel = "#250d15",
        float = "#250d15",
        active = "#452a32",
        disabled = "#6d4769",
        hover = "#452a32",
        selection = "#5b3e47",
        search = "#5b3e47",
        contrast = "#d4bfd6",
        negative = "#62323d",
        warn = "#623434",
        info = "#503b50",
        hint = "#613437",
        positive = "#5a3a2e",
        add = "#5a3a2e",
        delete = "#62323d",
        modify = "#503b50",
    },
    fg = {
        default = "#d4bfd6",
        subtle = "#946996",
        accent = "#dca23a",
        disabled = "#865f88",
        contrast = "#351b23",
        negative = "#ff857b",
        warn = "#dca23a",
        info = "#8cb6c5",
        hint = "#e89a47",
        positive = "#80bda2",
        add = "#80bda2",
        delete = "#ff857b",
        modify = "#8cb6c5",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "#c9b1cb",
        builtin = "#946996",
        member = "#8cb6c5",
        parameter = "#e89a47",
    },
    property = {
        default = "#8cb6c5",
    },
    string = {
        default = "#80bda2",
        doc = "#80bda2",
        regexp = "#ff857b",
        escape = "#ff857b",
    },
    constant = {
        default = "#7ea5b7",
        builtin = "#ed7668",
    },
    module = {
        default = "#7ea5b7",
    },
    boolean = {
        default = "#72ad91",
    },
    number = {
        default = "#72ad91",
    },
    type = {
        default = "#72bdbc",
        builtin = "#62adac",
    },
    attribute = {
        default = "#e89a47",
        builtin = "#e89a47",
    },
    func = {
        default = "#dca23a",
        builtin = "#dca23a",
        method = "#dca23a",
    },
    constructor = {
        default = "#dca23a",
    },
    keyword = {
        default = "#d49bb2",
        import = "#ff857b",
        export = "#ff857b",
    },
    operator = {
        default = "#7ea5b7",
    },
    punctuation = {
        default = "#946996",
        delimiter = "#7ea5b7",
        bracket = "#946996",
        special = "#946996",
    },
    comment = {
        default = "#7d5178",
        doc = "#72ad91",
        todo = "#80bda2",
        error = "#ff857b",
        warn = "#dca23a",
        info = "#8cb6c5",
        hint = "#e89a47",
    },
    markup = {
        heading = {
            h1 = "#dca23a",
            h2 = "#dca23a",
            h3 = "#dca23a",
            h4 = "#946996",
            h5 = "#946996",
            h6 = "#946996",
        },
        strong = "#dca23a",
        italic = "#dca23a",
        strikethrough = "#dca23a",
        quote = "#80bda2",
        math = "#72ad91",
        link = "#80bda2",
        list = {
            default = "#946996",
            checked = "#80bda2",
            unchecked = "#946996",
        },
        code = {
            fg = "#946996",
            bg = "#250d15",
        },
    },
    tag = {
        default = "#dca23a",
        builtin = "#e89a47",
        attribute = "#946996",
        delimiter = "#b796b8",
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
