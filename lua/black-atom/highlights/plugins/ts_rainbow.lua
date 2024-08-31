---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors)
        ---@type BlackAtom.Highlights
        return {
            rainbowcol1 = { fg = colors.palette.gray },
            rainbowcol2 = { fg = colors.palette.yellow },
            rainbowcol3 = { fg = colors.palette.blue },
            rainbowcol4 = { fg = colors.palette.dark_yellow },
            rainbowcol5 = { fg = colors.palette.magenta },
            rainbowcol6 = { fg = colors.palette.green },
            rainbowcol7 = { fg = colors.palette.red },
        }
    end,
}
