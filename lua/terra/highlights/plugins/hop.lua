local darken = require("terra.actions").color.darken

---@type TerraHighlightMapExtension
local highlight_map_extension = {
    setup = function(highlights, colors)
        ---@type TerraHighlightGroup
        highlights.plugins.hop = {
            HopNextKey = { fg = colors.palette.red, bold = true },
            HopNextKey1 = { fg = colors.palette.cyan, bold = true },
            HopNextKey2 = { fg = darken(colors.palette.blue, 0.7) },
            HopUnmatched = { fg = colors.palette.gray },
        }
    end,
}

return highlight_map_extension
