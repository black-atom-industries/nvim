---@type TerraHighlightsSpec
local highlight_map_extension = {
    map = function(colors)
        ---@type TerraHighlights
        local highlights_map = {
            TreesitterContext = {
                fg = colors.semantics.fg.neutral,
                bg = colors.semantics.bg.primary.main,
            },
            TreesitterContextLineNumber = {
                fg = colors.semantics.fg.neutral,
                bg = colors.semantics.bg.primary.main,
            },
        }

        return highlights_map
    end,
}

return highlight_map_extension
