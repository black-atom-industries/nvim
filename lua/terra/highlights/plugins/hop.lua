local darken = require("terra.actions").color.darken

local M = {}

---@param highlights TerraHighlightsMap
---@param colors TerraColors
---@param config TerraConfig
M.setup = function(highlights, colors, config)
    ---@type TerraHighlightGroup
    highlights.plugins.hop = {
        HopNextKey = { fg = colors.palette.red, bold = true },
        HopNextKey1 = { fg = colors.palette.cyan, bold = true },
        HopNextKey2 = { fg = darken(colors.palette.blue, 0.7) },
        HopUnmatched = { fg = colors.palette.gray },
    }
end

return M
