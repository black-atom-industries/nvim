---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors)
        local c = colors.palette

        ---@type BlackAtom.Highlights
        return {
            ArrowCurrentFile = { fg = c.yellow, bold = true },
            ArrowFileIndex = { fg = c.cyan },
            ArrowAction = { fg = c.dark_yellow },
            ArrowDeleteMode = { fg = c.red, bold = true },
        }
    end,
}
