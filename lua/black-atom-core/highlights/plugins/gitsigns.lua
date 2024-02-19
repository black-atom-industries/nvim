---@type BlackAtomCore.HighlightsSpec
local highlight_map_extension = {
    map = function(colors)
        ---@type BlackAtomCore.Highlights
        local highlights_map = {
            GitSignsAdd = { fg = colors.palette.green },
            GitSignsAddLn = { fg = colors.palette.green },
            GitSignsAddNr = { fg = colors.palette.green },
            GitSignsChange = { fg = colors.palette.blue },
            GitSignsChangeLn = { fg = colors.palette.blue },
            GitSignsChangeNr = { fg = colors.palette.blue },
            GitSignsDelete = { fg = colors.palette.red },
            GitSignsDeleteLn = { fg = colors.palette.red },
            GitSignsDeleteNr = { fg = colors.palette.red },
        }

        return highlights_map
    end,
}

return highlight_map_extension
