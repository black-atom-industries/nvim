---@param prim BlackAtom.Theme.Primaries
---@param pal BlackAtom.Theme.Palette
return function(prim, pal)
    ---@type BlackAtom.Theme.Syntax
    return {
        variable = {
            default = prim[6],
            builtin = prim[6],
            member = prim[5],
            parameter = pal.dark_yellow,
        },
        property = {
            default = prim[7],
        },
        string = {
            default = prim[5],
            doc = prim[4],
            regexp = prim[9],
            escape = prim[9],
        },
        constant = {
            default = prim[6],
            builtin = prim[7],
        },
        module = {
            default = pal.yellow,
        },
        boolean = {
            default = pal.gray,
        },
        number = {
            default = prim[6],
        },
        type = {
            default = prim[9],
            builtin = prim[7],
        },
        attribute = {
            default = pal.dark_yellow,
            builtin = pal.dark_yellow,
        },
        func = {
            default = pal.yellow,
            builtin = pal.dark_yellow,
            method = pal.yellow,
        },
        constructor = {
            default = pal.yellow,
        },
        keyword = {
            default = prim[8],
            import = prim[6],
            export = prim[6],
        },
        operator = {
            default = pal.white,
        },
        punctuation = {
            default = pal.white,
            delimiter = pal.white,
            bracket = pal.white,
            special = pal.white,
        },
        comment = {
            default = pal.gray,
            doc = prim[6],
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
                fg = prim[7],
                bg = prim[2],
            },
        },
        tag = {
            default = pal.yellow,
            builtin = pal.dark_yellow,
            custom = pal.yellow,
            attribute = prim[5],
            delimiter = prim[5],
        },
    }
end
