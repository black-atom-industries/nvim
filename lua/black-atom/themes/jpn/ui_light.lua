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
            disabled = prim[8],
            hover = prim[10],
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
            accent = pal.yellow,
            disabled = prim[7],
            contrast = prim[11],
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
