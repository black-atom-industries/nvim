---@param prim BlackAtom.Theme.Primaries
---@param pal BlackAtom.Theme.Palette
return function(prim, pal)
    local lighten = require("black-atom.lib.color").lighten

    ---@type BlackAtom.Theme.UI
    return {
        bg = {
            default = prim[9],
            panel = prim[8],
            float = prim[8],
            active = prim[7],
            disabled = prim[4],
            hover = prim[7],
            selection = lighten(pal.dark_yellow, 0.1),
            search = lighten(pal.dark_yellow, 0.1),
            contrast = prim[1],
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
            subtle = prim[1],
            accent = pal.yellow,
            disabled = prim[4],
            contrast = prim[8],
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
