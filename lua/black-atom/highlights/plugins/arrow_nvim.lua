---@doc https://github.com/otavioschwanck/arrow.nvim
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors)
        local palette = colors.palette

        ---@type BlackAtom.Highlights
        return {
            ArrowCurrentFile = { fg = palette.yellow, bold = true },
            ArrowFileIndex = { fg = palette.cyan },
            ArrowAction = { fg = palette.dark_yellow },
            ArrowDeleteMode = { fg = palette.red, bold = true },
        }
    end,
}
