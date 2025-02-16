---@doc https://github.com/otavioschwanck/arrow.nvim
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors)
        local pal = colors.palette

        ---@type BlackAtom.Highlights
        return {
            ArrowCurrentFile = { fg = pal.yellow, bold = true },
            ArrowFileIndex = { fg = pal.cyan },
            ArrowAction = { fg = pal.dark_yellow },
            ArrowDeleteMode = { fg = pal.red, bold = true },
        }
    end,
}
