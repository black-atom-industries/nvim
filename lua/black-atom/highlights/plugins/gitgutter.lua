---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors)
        ---@type BlackAtom.Highlights
        return {
            GitGutterAdd = { fg = colors.palette.green },
            GitGutterChange = { fg = colors.palette.blue },
            GitGutterDelete = { fg = colors.palette.red },
        }
    end,
}
