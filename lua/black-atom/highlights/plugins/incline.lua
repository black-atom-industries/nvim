---@type BlackAtom.HighlightsSpec
local highlight_map_extension = {
    map = function(colors)
        ---@type BlackAtom.Highlights
        local highlights_map = {
            InclineNormal = {
                fg = colors.ui.fg.active,
                bg = colors.ui.bg.primary.dark,
                bold = true,
            },
            InclineNormalNC = {
                fg = colors.ui.fg.neutral,
                bg = colors.ui.bg.primary.dark,
            },
        }

        return highlights_map
    end,
}

return highlight_map_extension
