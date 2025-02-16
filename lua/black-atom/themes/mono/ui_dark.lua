---@param prim BlackAtom.Theme.Primaries
---@param pal BlackAtom.Theme.Palette
return function(prim, pal)
    ---@type BlackAtom.Theme.UI
    return {
        bg = {
            default = prim[2],
            panel = prim[1],
            float = prim[1],
            active = prim[4],
            disabled = prim[6],
            hover = prim[4],
            selection = prim[4],
            search = pal.yellow,
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
        fg = {
            default = prim[11],
            subtle = prim[8],
            accent = pal.dark_yellow,
            disabled = prim[6],
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
    }
end
