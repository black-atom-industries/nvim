---@param prim BlackAtom.Theme.Primaries
---@param pal BlackAtom.Theme.Palette
return function(prim, pal)
    ---@type BlackAtom.Theme.Syntax
    return {
        variable = {
            default = prim[10],
            builtin = prim[8],
            member = pal.blue,
            parameter = pal.dark_yellow,
        },
        property = {
            default = pal.blue,
        },
        string = {
            default = pal.green,
            doc = pal.green,
            regexp = pal.red,
            escape = pal.red,
        },
        constant = {
            default = pal.dark_blue,
            builtin = pal.dark_red,
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
            default = pal.magenta,
            import = pal.red,
            export = pal.red,
        },
        operator = {
            default = pal.dark_blue,
        },
        punctuation = {
            default = pal.light_gray,
            delimiter = pal.dark_blue,
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
                fg = pal.magenta,
            },
        },
        tag = {
            default = pal.yellow,
            builtin = pal.dark_yellow,
            custom = pal.yellow,
            attribute = prim[8],
            delimiter = prim[9],
        },
    }
end
