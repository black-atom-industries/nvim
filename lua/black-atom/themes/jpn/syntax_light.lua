---@param primaries BlackAtom.Theme.Primaries
---@param palette BlackAtom.Theme.Palette
---@return BlackAtom.Theme.Syntax
return function(primaries, palette)
    return {
        variable = {
            default = primaries[4],
            builtin = primaries[6],
            member = palette.blue,
            parameter = palette.dark_magenta,
        },
        property = {
            default = palette.blue,
        },
        string = {
            default = palette.green,
            doc = palette.green,
            regexp = palette.red,
            escape = palette.red,
        },
        constant = {
            default = palette.dark_yellow,
            builtin = palette.dark_yellow,
        },
        module = {
            default = palette.dark_blue,
        },
        boolean = {
            default = palette.dark_green,
        },
        number = {
            default = palette.dark_green,
        },
        type = {
            default = palette.cyan,
            builtin = palette.dark_cyan,
        },
        attribute = {
            default = palette.dark_yellow,
            builtin = palette.dark_yellow,
        },
        func = {
            default = palette.yellow,
            builtin = palette.yellow,
            method = palette.yellow,
        },
        constructor = {
            default = palette.yellow,
        },
        keyword = {
            default = palette.magenta,
            import = palette.red,
            export = palette.red,
        },
        operator = {
            default = palette.dark_blue,
        },
        punctuation = {
            default = palette.gray,
            delimiter = palette.dark_blue,
            bracket = palette.gray,
            special = palette.gray,
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
                h4 = palette.gray,
                h5 = palette.gray,
                h6 = palette.gray,
            },
            list = {
                default = palette.gray,
                checked = palette.green,
                unchecked = palette.gray,
            },
            quote = palette.green,
            math = palette.dark_green,
            link = palette.green,
            code = {
                fg = primaries[6],
                bg = primaries[10],
            },
        },
        tag = {
            default = palette.yellow,
            builtin = palette.dark_yellow,
            custom = palette.yellow,
            attribute = primaries[5],
            delimiter = primaries[4],
        },
    }
end
