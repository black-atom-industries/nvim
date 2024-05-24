---@type BlackAtom.HighlightsSpec
local highlight_map_extension = {
    map = function(colors)
        ---@type BlackAtom.Highlights
        local highlights_map = {
            MiniIndentscopeSymbol = {
                fg = colors.semantics.fg.active,
            },
        }

        return highlights_map
    end,
}

return highlight_map_extension
