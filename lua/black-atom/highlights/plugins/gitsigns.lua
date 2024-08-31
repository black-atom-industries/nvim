---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors)
        ---@type BlackAtom.Highlights
        return {
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
    end,
}
