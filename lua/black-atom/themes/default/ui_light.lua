---@param prim BlackAtom.Theme.Primaries
---@param pal BlackAtom.Theme.Palette
return function(prim, pal)
    local lighten = require("black-atom.lib.color").lighten

    ---@type BlackAtom.Theme.UI
    return {
        bg = {
            default = prim[11],
            panel = prim[10],
            float = prim[10],
            active = prim[12],
            disabled = prim[9],
            hover = prim[12],
            selection = lighten(pal.dark_yellow, 0.1),
            search = lighten(pal.dark_yellow, 0.1),
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
            accent = pal.red,
            disabled = prim[9],
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
