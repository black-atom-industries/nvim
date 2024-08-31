---@doc https://github.com/otavioschwanck/arrow.nvim
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors)
        local p = colors.palette

        ---@type BlackAtom.Highlights
        return {
            ArrowCurrentFile = { fg = p.yellow, bold = true },
            ArrowFileIndex = { fg = p.cyan },
            ArrowAction = { fg = p.dark_yellow },
            ArrowDeleteMode = { fg = p.red, bold = true },
        }
    end,
}
