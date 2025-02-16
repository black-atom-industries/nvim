---@param primaries BlackAtom.Theme.Primaries
---@param palette BlackAtom.Theme.Palette
return function(primaries, palette)
    ---@type BlackAtom.Theme.UI
    return {
        bg = {
            default = primaries[2],
            panel = primaries[1],
            float = primaries[1],
            active = primaries[3],
            disabled = primaries[5],
            hover = primaries[3],
            selection = primaries[4],
            search = primaries[4],
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
        fg = {
            default = primaries[11],
            subtle = primaries[9],
            disabled = primaries[7],
            accent = palette.yellow,
            contrast = primaries[2],
            error = palette.red,
            warn = palette.yellow,
            info = palette.blue,
            hint = palette.dark_yellow,
            success = palette.green,
            add = palette.green,
            delete = palette.red,
            modify = palette.blue, -- Was diff.change
        },
    }
end
