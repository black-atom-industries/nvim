local darken = require("terra-core.utils").color.darken

---@type TerraHighlightsSpec
local highlight_map_extension = {
    map = function(colors)
        ---@type TerraHighlights
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
