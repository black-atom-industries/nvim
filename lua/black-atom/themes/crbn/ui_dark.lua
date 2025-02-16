---@param prim BlackAtom.Theme.Primaries
---@param pal BlackAtom.Theme.Palette
return function(prim, pal)
    local darken = require("black-atom.lib.color").darken

    ---@type BlackAtom.Theme.UI
    return {
        bg = {
            default = prim[1],
            panel = prim[2],
            float = prim[2],
            active = prim[3],
            disabled = prim[4],
            hover = prim[3],
            selection = darken(pal.dark_yellow, 0.25),
            search = darken(pal.dark_yellow, 0.25),
            contrast = prim[9],
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
            default = prim[9],
            subtle = prim[7],
            accent = pal.yellow,
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
