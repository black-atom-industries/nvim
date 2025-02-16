---@param prim BlackAtom.Theme.Primaries
---@param pal BlackAtom.Theme.Palette
return function(prim, pal)
    ---@type BlackAtom.Theme.Syntax
    return {
        variable = {
            default = prim[2],
            builtin = prim[2],
            member = prim[3],
            parameter = pal.dark_yellow,
        },
        property = {
            default = prim[3],
        },
        string = {
            default = prim[4],
            doc = prim[6],
            regexp = prim[1],
            escape = prim[1],
        },
        constant = {
            default = prim[1],
            builtin = prim[1],
        },
        module = {
            default = pal.blue,
        },
        boolean = {
            default = pal.gray,
        },
        number = {
            default = prim[4],
        },
        type = {
            default = prim[1],
            builtin = prim[3],
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
            default = prim[3],
            import = prim[5],
            export = prim[5],
        },
        operator = {
            default = pal.black,
        },
        punctuation = {
            default = pal.black,
            delimiter = pal.black,
            bracket = pal.black,
            special = pal.black,
        },
        comment = {
            default = pal.gray,
            doc = prim[5],
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
