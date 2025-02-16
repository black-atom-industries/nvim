---@param prim BlackAtom.Theme.Primaries
---@param pal BlackAtom.Theme.Palette
---@return BlackAtom.Theme.Syntax
return function(prim, pal)
    return {
        variable = {
            default = pal.blue,
            builtin = pal.dark_blue,
            member = pal.dark_blue,
            parameter = pal.dark_yellow,
        },
        property = {
            default = pal.dark_blue,
        },
        string = {
            default = pal.green,
            doc = pal.green,
            regexp = pal.red,
            escape = pal.red,
        },
        constant = {
            default = pal.dark_yellow,
            builtin = pal.dark_yellow,
        },
        module = {
            default = pal.dark_blue,
        },
        boolean = {
            default = pal.dark_green,
        },
        number = {
            default = pal.dark_green,
        },
        type = {
            default = pal.cyan,
            builtin = pal.dark_cyan,
        },
        attribute = {
            default = pal.dark_yellow,
            builtin = pal.dark_yellow,
        },
        func = {
            default = pal.yellow,
            builtin = pal.yellow,
            method = pal.yellow,
        },
        constructor = {
            default = pal.yellow,
        },
        keyword = {
            default = pal.red,
            import = pal.dark_green,
            export = pal.dark_red,
        },
        operator = {
            default = pal.black,
        },
        punctuation = {
            default = pal.gray,
            delimiter = prim[8],
            bracket = pal.gray,
            special = pal.gray,
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
                h4 = pal.gray,
                h5 = pal.gray,
                h6 = pal.gray,
            },
            list = {
                default = pal.gray,
                checked = pal.green,
                unchecked = pal.gray,
            },
            quote = pal.green,
            math = pal.dark_green,
            link = pal.green,
            code = {
                fg = prim[6],
                bg = prim[10],
            },
        },
        tag = {
            default = pal.yellow,
            builtin = pal.dark_yellow,
            custom = pal.yellow,
            attribute = prim[5],
            delimiter = prim[4],
        },
    }
end
