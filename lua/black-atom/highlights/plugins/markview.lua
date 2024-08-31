---@doc https://github.com/OXY2DEV/markview.nvim
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors)
        local s = colors.syntax

        ---@type BlackAtom.Highlights
        return {
            MarkviewCode = { bg = s.markup.code.bg },
            MarkviewInlineCode = { bg = s.markup.code.bg },
        }
    end,
}
