---@param prim BlackAtom.Theme.Primaries
---@param pal BlackAtom.Theme.Palette
---@return BlackAtom.Theme.Syntax
return function(prim, pal)
    return {
        default = pal.gray,
        variable = {
            default = pal.blue,
            builtin = pal.blue,
            parameter = pal.dark_yellow,
            member = pal.dark_blue,
        },
        property = {
            default = pal.blue,
        },
        constant = {
            default = pal.dark_yellow,
            builtin = pal.dark_yellow,
        },
        module = {
            default = pal.dark_blue,
        },
        string = {
            default = pal.green,
            doc = pal.green,
            regexp = pal.dark_yellow,
            escape = pal.red,
        },
        boolean = {
            default = pal.dark_yellow,
        },
        number = {
            default = pal.dark_yellow,
        },
        type = {
            default = pal.cyan,
            builtin = pal.dark_cyan,
        },
        attribute = {
            default = pal.cyan,
            builtin = pal.cyan,
        },
        func = {
            default = pal.yellow,
            builtin = pal.yellow,
            method = pal.yellow,
        },
        constructor = {
            default = pal.yellow,
        },
        operator = {
            default = pal.magenta,
        },
        keyword = {
            default = pal.red,
            import = pal.magenta,
            export = pal.magenta,
        },
        punctuation = {
            default = pal.light_gray,
            delimiter = prim[8],
            bracket = pal.light_gray,
            special = pal.light_gray,
        },
        comment = {
            default = pal.gray,
            doc = pal.dark_green,
            todo = pal.green,
            error = pal.red,
            warn = pal.yellow,
            info = pal.blue,
            hint = pal.dark_yellow,
        },
        markup = {
            heading = {
                h1 = pal.yellow,
                h2 = pal.yellow,
                h3 = pal.yellow,
                h4 = pal.light_gray,
                h5 = pal.light_gray,
                h6 = pal.light_gray,
            },
            list = {
                default = pal.light_gray,
                checked = pal.green,
                unchecked = pal.light_gray,
            },
            quote = pal.green,
            math = pal.dark_green,
            link = pal.green,
            code = {
                fg = prim[10],
                bg = prim[6],
            },
        },
        tag = {
            default = pal.yellow,
            builtin = pal.yellow,
            custom = pal.yellow,
            attribute = pal.dark_yellow,
            delimiter = pal.dark_yellow,
        },
    }
end
