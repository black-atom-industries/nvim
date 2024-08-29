---@type BlackAtom.HighlightsSpec
return {
    enabled = true,

    map = function(colors, config)
        ---@type BlackAtom.Highlights
        local highlights_map = {
            MarkviewCode = { bg = colors.syntax.markup.code_bg },
            MarkviewInlineCode = { bg = colors.syntax.markup.code_bg },
        }

        return highlights_map
    end,
}
