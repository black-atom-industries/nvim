---@param primaries BlackAtom.Theme.Primaries
---@param palette BlackAtom.Theme.Palette
return function(primaries, palette)
    ---@type BlackAtom.Theme.UI
    return {
        bg = {
            default = primaries[11],
            panel = primaries[10],
            float = primaries[10],
            active = primaries[12],
            disabled = primaries[9],
            hover = primaries[12],
            selection = primaries[12],
            search = primaries[12],
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
        fg = {
            default = primaries[2],
            subtle = primaries[4],
            disabled = primaries[6],
            accent = palette.yellow,
            contrast = primaries[11],
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
