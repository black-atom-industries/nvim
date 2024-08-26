---@param primaries BlackAtom.Theme.Primaries
---@param palette BlackAtom.Theme.Palette
---@return BlackAtom.Theme.Syntax
return function(primaries, palette)
    return {
        default = palette.gray,
        variable = {
            default = palette.blue,
            builtin = palette.blue,
            parameter = palette.dark_yellow,
            member = palette.dark_blue,
        },
        property = {
            default = palette.blue,
        },
        constant = {
            default = palette.dark_yellow,
            builtin = palette.dark_yellow,
        },
        module = {
            default = palette.dark_blue,
        },
        string = {
            default = palette.green,
            doc = palette.green,
            regexp = palette.dark_yellow,
            escape = palette.red,
        },
        boolean = {
            default = palette.dark_yellow,
        },
        number = {
            default = palette.dark_yellow,
        },
        type = {
            default = palette.cyan,
            builtin = palette.dark_cyan,
        },
        attribute = {
            default = palette.cyan,
            builtin = palette.cyan,
        },
        func = {
            default = palette.yellow,
            builtin = palette.yellow,
            method = palette.yellow,
        },
        constructor = {
            default = palette.yellow,
        },
        operator = {
            default = palette.magenta,
        },
        keyword = {
            default = palette.red,
            import = palette.magenta,
            export = palette.magenta,
        },
        punctuation = {
            default = palette.light_gray,
            delimiter = primaries[8],
            bracket = palette.light_gray,
            special = palette.light_gray,
        },
        comment = {
            default = palette.gray,
            doc = palette.dark_green,
            todo = palette.green,
            error = palette.red,
            warn = palette.yellow,
            info = palette.blue,
            hint = palette.dark_yellow,
        },
        markup = {
            heading = {
                h1 = palette.yellow,
                h2 = palette.yellow,
                h3 = palette.yellow,
                h4 = palette.light_gray,
                h5 = palette.light_gray,
                h6 = palette.light_gray,
            },
            list = {
                default = palette.light_gray,
                checked = palette.green,
                unchecked = palette.light_gray,
            },
            quote = palette.green,
            math = palette.dark_green,
            link = palette.green,
            code = palette.light_gray,
        },
        tag = {
            default = palette.yellow,
            builtin = palette.yellow,
            custom = palette.yellow,
            attribute = palette.dark_yellow,
            delimiter = palette.dark_yellow,
        },
    }
end
