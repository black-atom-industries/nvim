---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors)
        ---@type BlackAtom.Highlights
        return {
            MiniIndentscopeSymbol = {
                fg = colors.ui.fg.active,
            },
        }
    end,
}
