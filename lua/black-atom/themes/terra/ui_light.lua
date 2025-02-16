---@param prim BlackAtom.Theme.Primaries
---@param pal BlackAtom.Theme.Palette
return function(prim, pal)
    local darken = require("black-atom.lib.color").darken

    ---@type BlackAtom.Theme.UI
    return {
        bg = {
            default = prim[11],
            panel = prim[10],
            float = prim[10],
            active = prim[9],
            disabled = prim[7],
            hover = prim[9],
            selection = darken(pal.green, 0.15, prim[12]),
            search = darken(pal.magenta, 0.25, prim[12]),
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
            modify = pal.blue,
        },
    }
end
