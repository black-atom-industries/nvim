---@param primaries BlackAtom.Theme.Primaries
---@param palette BlackAtom.Theme.Palette
return function(primaries, palette)
    local darken = require("black-atom.lib.color").darken

    ---@type BlackAtom.Theme.UI
    return {
        bg = {
            default = primaries[1],
            panel = primaries[2],
            float = primaries[2],
            active = primaries[3],
            disabled = primaries[4],
            hover = primaries[3],
            selection = darken(palette.dark_yellow, 0.25),
            search = darken(palette.dark_yellow, 0.25),
            contrast = primaries[9],
            error = palette.red,
            warn = palette.yellow,
            info = palette.blue,
            hint = palette.dark_yellow,
            success = palette.green,
            add = palette.green,
            delete = palette.red,
            modify = palette.blue,
        },
        fg = {
            default = primaries[9],
            subtle = primaries[7],
            accent = palette.yellow,
            disabled = primaries[6],
            contrast = primaries[2],
            error = palette.red,
            warn = palette.yellow,
            info = palette.blue,
            hint = palette.dark_yellow,
            success = palette.green,
            add = palette.green,
            delete = palette.red,
            modify = palette.blue,
        },
    }
end
