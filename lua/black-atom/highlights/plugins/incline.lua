---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors)
        ---@type BlackAtom.Highlights
        return {
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
    end,
}
