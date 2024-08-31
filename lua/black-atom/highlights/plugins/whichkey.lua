---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors)
        ---@type BlackAtom.Highlights
        return {
            WhichKey = { fg = colors.palette.cyan },
            WhichKeyIcon = { fg = colors.syntax.markup.link },
            WhichKeyDesc = { fg = colors.palette.blue },
            WhichKeyGroup = { fg = colors.palette.dark_yellow },
            WhichKeySeperator = { fg = colors.palette.green },
        }
    end,
}
