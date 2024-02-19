---@type BlackAtomCore.HighlightsSpec
local highlight_map_extension = {
    map = function(colors)
        ---@type BlackAtomCore.Highlights
        local highlights_map = {
            GitGutterAdd = { fg = colors.palette.green },
            GitGutterChange = { fg = colors.palette.blue },
            GitGutterDelete = { fg = colors.palette.red },
        }

        return highlights_map
    end,
}

return highlight_map_extension
