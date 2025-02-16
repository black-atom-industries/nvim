---@param prim BlackAtom.Theme.Primaries
---@param pal BlackAtom.Theme.Palette
return function(prim, pal)
    ---@type BlackAtom.Theme.UI
    return {
        bg = {
            default = prim[2],
            panel = prim[1],
            float = prim[1],
            active = prim[3],
            disabled = prim[5],
            hover = prim[3],
            selection = prim[4],
            search = prim[4],
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
            subtle = prim[9],
            disabled = prim[7],
            accent = pal.yellow,
            contrast = prim[2],
            error = pal.red,
            warn = pal.yellow,
            info = pal.blue,
            hint = pal.dark_yellow,
            success = pal.green,
            add = pal.green,
            delete = pal.red,
            modify = pal.blue, -- Was diff.change
        },
    }
end
