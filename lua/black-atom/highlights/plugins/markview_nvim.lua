---@doc https://github.com/OXY2DEV/markview.nvim
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors)
        local syntax = colors.syntax

        ---@type BlackAtom.Highlights
        return {
            MarkviewCode = { bg = syntax.markup.code.bg },
            MarkviewInlineCode = { bg = syntax.markup.code.bg },
        }
    end,
}
