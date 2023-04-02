---@type TerraHighlightsSpec
local highlight_map_extension = {
    map = function(colors)
        ---@type TerraHighlights
        local highlights_map = {
            IndentBlanklineChar = { fg = colors.semantics.fg.neutral },
            IndentBlanklineContextChar = { fg = colors.semantics.fg.active },
        }

        return highlights_map
    end,
}
return highlight_map_extension
