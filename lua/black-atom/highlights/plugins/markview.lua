---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors)
        ---@type BlackAtom.Highlights
        return {
            MarkviewCode = { bg = colors.syntax.markup.code.bg },
            MarkviewInlineCode = { bg = colors.syntax.markup.code.bg },
        }
    end,
}
