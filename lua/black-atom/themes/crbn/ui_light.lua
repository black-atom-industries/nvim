---@param primaries BlackAtom.Theme.Primaries
---@param palette BlackAtom.Theme.Palette
return function(primaries, palette)
    local lighten = require("black-atom.lib.color").lighten

    ---@type BlackAtom.Theme.UI
    return {
        bg = {
            default = primaries[9],
            panel = primaries[8],
            float = primaries[8],
            active = primaries[7],
            disabled = primaries[4],
            hover = primaries[7],
            selection = lighten(palette.dark_yellow, 0.1),
            search = lighten(palette.dark_yellow, 0.1),
            contrast = primaries[1],
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
            default = primaries[2],
            subtle = primaries[1],
            accent = palette.yellow,
            disabled = primaries[4],
            contrast = primaries[8],
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
