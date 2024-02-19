---@type BlackAtomCore.HighlightsSpec
local highlight_map_extension = {
    map = function(colors)
        ---@type BlackAtomCore.Highlights
        local highlights_map = {
            IndentBlanklineChar = { fg = colors.semantics.fg.neutral },
            IndentBlanklineContextChar = { fg = colors.semantics.fg.active },
        }

        return highlights_map
    end,
}
return highlight_map_extension
