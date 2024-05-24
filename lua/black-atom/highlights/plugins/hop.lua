local darken = require("black-atom.lib").color.darken

---@type BlackAtom.HighlightsSpec
local highlight_map_extension = {
    map = function(colors)
        ---@type BlackAtom.Highlights
        local highlights_map = {
            HopNextKey = { fg = colors.palette.red, bold = true },
            HopNextKey1 = { fg = colors.palette.cyan, bold = true },
            HopNextKey2 = { fg = darken(colors.palette.blue, 0.7) },
            HopUnmatched = { fg = colors.palette.gray },
        }

        return highlights_map
    end,
}

return highlight_map_extension
