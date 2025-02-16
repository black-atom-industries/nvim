---@doc https://github.com/OXY2DEV/markview.nvim
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors)
        local syn = colors.syntax

        ---@type BlackAtom.Highlights
        return {
            MarkviewCode = { bg = syn.markup.code.bg },
            MarkviewInlineCode = { bg = syn.markup.code.bg },
        }
    end,
}
