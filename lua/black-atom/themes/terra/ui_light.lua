---@param prim BlackAtom.Theme.Primaries
---@param pal BlackAtom.Theme.Palette
return function(prim, pal)
    ---@type BlackAtom.Theme.UI
    return {
        bg = {
            default = prim[11],
            panel = prim[10],
            float = prim[10],
            active = prim[9],
            disabled = prim[7],
            hover = prim[9],
            selection = prim[12],
            search = prim[12],
            contrast = prim[2],
            error = pal.red,
            warn = pal.yellow,
            info = pal.blue,
            hint = pal.dark_yellow,
            success = pal.green,
            add = pal.green,
            delete = pal.red,
            modify = pal.blue,
        },
        fg = {
            default = prim[2],
            subtle = prim[5],
            disabled = prim[6],
            accent = pal.yellow,
            contrast = prim[11],
            error = pal.red,
            warn = pal.yellow,
            info = pal.blue,
            hint = pal.dark_yellow,
            success = pal.green,
            add = pal.green,
            delete = pal.red,
            modify = pal.blue,
        },
    }
end
