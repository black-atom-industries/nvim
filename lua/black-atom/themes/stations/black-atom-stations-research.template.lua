local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "<%= theme.meta.key %>",
    label = "<%= theme.meta.label %>",
    collection = {
        key = "<%= theme.meta.collection.key %>",
        label = "<%= theme.meta.collection.label %>",
    },
    appearance = "<%= theme.meta.appearance %>",
    icon = " 󱃪 ",
    status = "<%= theme.meta.status %>",
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    "<%= theme.primaries[0] %>",
    "<%= theme.primaries[1] %>",
    "<%= theme.primaries[2] %>",
    "<%= theme.primaries[3] %>",
    "<%= theme.primaries[4] %>",
    "<%= theme.primaries[5] %>",
    "<%= theme.primaries[6] %>",
    "<%= theme.primaries[7] %>",
    "<%= theme.primaries[8] %>",
    "<%= theme.primaries[9] %>",
    "<%= theme.primaries[10] %>",
    "<%= theme.primaries[11] %>",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "<%= theme.palette.black %>",
    gray = "<%= theme.palette.gray %>",
    dark_red = "<%= theme.palette.darkRed %>",
    red = "<%= theme.palette.red %>",
    dark_green = "<%= theme.palette.darkGreen %>",
    green = "<%= theme.palette.green %>",
    dark_yellow = "<%= theme.palette.darkYellow %>",
    yellow = "<%= theme.palette.yellow %>",
    dark_blue = "<%= theme.palette.darkBlue %>",
    blue = "<%= theme.palette.blue %>",
    dark_magenta = "<%= theme.palette.darkMagenta %>",
    magenta = "<%= theme.palette.magenta %>",
    dark_cyan = "<%= theme.palette.darkCyan %>",
    cyan = "<%= theme.palette.cyan %>",
    light_gray = "<%= theme.palette.lightGray %>",
    white = "<%= theme.palette.white %>",
}

---@type BlackAtom.Theme.UI
M.ui = {
    bg = {
        default = "<%= theme.ui.bg.default %>",
        panel = "<%= theme.ui.bg.panel %>",
        float = "<%= theme.ui.bg.float %>",
        active = "<%= theme.ui.bg.active %>",
        disabled = "<%= theme.ui.bg.disabled %>",
        hover = "<%= theme.ui.bg.hover %>",
        selection = "<%= theme.ui.bg.selection %>",
        search = "<%= theme.ui.bg.search %>",
        contrast = "<%= theme.ui.bg.contrast %>",
        negative = "<%= theme.ui.bg.negative %>",
        warn = "<%= theme.ui.bg.warn %>",
        info = "<%= theme.ui.bg.info %>",
        hint = "<%= theme.ui.bg.hint %>",
        positive = "<%= theme.ui.bg.positive %>",
        add = "<%= theme.ui.bg.add %>",
        delete = "<%= theme.ui.bg.delete %>",
        modify = "<%= theme.ui.bg.modify %>",
    },
    fg = {
        default = "<%= theme.ui.fg.default %>",
        subtle = "<%= theme.ui.fg.subtle %>",
        accent = "<%= theme.ui.fg.accent %>",
        disabled = "<%= theme.ui.fg.disabled %>",
        contrast = "<%= theme.ui.fg.contrast %>",
        negative = "<%= theme.ui.fg.negative %>",
        warn = "<%= theme.ui.fg.warn %>",
        info = "<%= theme.ui.fg.info %>",
        hint = "<%= theme.ui.fg.hint %>",
        positive = "<%= theme.ui.fg.positive %>",
        add = "<%= theme.ui.fg.add %>",
        delete = "<%= theme.ui.fg.delete %>",
        modify = "<%= theme.ui.fg.modify %>",
    },
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = "<%= theme.syntax.variable.default %>",
        builtin = "<%= theme.syntax.variable.builtin %>",
        member = "<%= theme.syntax.variable.member %>",
        parameter = "<%= theme.syntax.variable.parameter %>",
    },
    property = {
        default = "<%= theme.syntax.property.default %>",
    },
    string = {
        default = "<%= theme.syntax.string.default %>",
        doc = "<%= theme.syntax.string.doc %>",
        regexp = "<%= theme.syntax.string.regexp %>",
        escape = "<%= theme.syntax.string.escape %>",
    },
    constant = {
        default = "<%= theme.syntax.constant.default %>",
        builtin = "<%= theme.syntax.constant.builtin %>",
    },
    module = {
        default = "<%= theme.syntax.module.default %>",
    },
    boolean = {
        default = "<%= theme.syntax.boolean.default %>",
    },
    number = {
        default = "<%= theme.syntax.number.default %>",
    },
    type = {
        default = "<%= theme.syntax.type.default %>",
        builtin = "<%= theme.syntax.type.builtin %>",
    },
    attribute = {
        default = "<%= theme.syntax.attribute.default %>",
        builtin = "<%= theme.syntax.attribute.builtin %>",
    },
    func = {
        default = "<%= theme.syntax.func.default %>",
        builtin = "<%= theme.syntax.func.builtin %>",
        method = "<%= theme.syntax.func.method %>",
    },
    constructor = {
        default = "<%= theme.syntax.constructor.default %>",
    },
    keyword = {
        default = "<%= theme.syntax.keyword.default %>",
        import = "<%= theme.syntax.keyword.import %>",
        export = "<%= theme.syntax.keyword.export %>",
    },
    operator = {
        default = "<%= theme.syntax.operator.default %>",
    },
    punctuation = {
        default = "<%= theme.syntax.punctuation.default %>",
        delimiter = "<%= theme.syntax.punctuation.delimiter %>",
        bracket = "<%= theme.syntax.punctuation.bracket %>",
        special = "<%= theme.syntax.punctuation.special %>",
    },
    comment = {
        default = "<%= theme.syntax.comment.default %>",
        doc = "<%= theme.syntax.comment.doc %>",
        todo = "<%= theme.syntax.comment.todo %>",
        error = "<%= theme.syntax.comment.error %>",
        warn = "<%= theme.syntax.comment.warn %>",
        info = "<%= theme.syntax.comment.info %>",
        hint = "<%= theme.syntax.comment.hint %>",
    },
    markup = {
        heading = {
            h1 = "<%= theme.syntax.markup.heading.h1 %>",
            h2 = "<%= theme.syntax.markup.heading.h2 %>",
            h3 = "<%= theme.syntax.markup.heading.h3 %>",
            h4 = "<%= theme.syntax.markup.heading.h4 %>",
            h5 = "<%= theme.syntax.markup.heading.h5 %>",
            h6 = "<%= theme.syntax.markup.heading.h6 %>",
        },
        strong = "<%= theme.syntax.markup.strong %>",
        italic = "<%= theme.syntax.markup.italic %>",
        strikethrough = "<%= theme.syntax.markup.strikethrough %>",
        quote = "<%= theme.syntax.markup.quote %>",
        math = "<%= theme.syntax.markup.math %>",
        link = "<%= theme.syntax.markup.link%>",
        list = {
            default = "<%= theme.syntax.markup.list.default %>",
            checked = "<%= theme.syntax.markup.list.checked %>",
            unchecked = "<%= theme.syntax.markup.list.unchecked %>",
        },
        code = {
            fg = "<%= theme.syntax.markup.code.fg %>",
            bg = "<%= theme.syntax.markup.code.bg %>",
        },
    },
    tag = {
        default = "<%= theme.syntax.tag.default %>",
        builtin = "<%= theme.syntax.tag.builtin %>",
        attribute = "<%= theme.syntax.tag.attribute %>",
        delimiter = "<%= theme.syntax.tag.delimiter %>",
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
