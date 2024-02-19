---@type BlackAtomCore.HighlightsSpec
local highlight_map_extension = {
    map = function(colors)
        ---@type BlackAtomCore.Highlights
        local highlights_map = {
            InclineNormal = {
                fg = colors.semantics.fg.active,
                bg = colors.semantics.bg.primary.dark,
                bold = true,
            },
            InclineNormalNC = {
                fg = colors.semantics.fg.neutral,
                bg = colors.semantics.bg.primary.dark,
            },
        }

        return highlights_map
    end,
}

return highlight_map_extension
