---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors)
        local darken = require("black-atom.lib").color.darken

        ---@type BlackAtom.Highlights
        return {
            HopNextKey = { fg = colors.palette.red, bold = true },
            HopNextKey1 = { fg = colors.palette.cyan, bold = true },
            HopNextKey2 = { fg = darken(colors.palette.blue, 0.7) },
            HopUnmatched = { fg = colors.palette.gray },
        }
    end,
}
