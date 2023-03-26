local M = {}

---@param highlights TerraHighlightsMap
---@param colors TerraColors
---@param config TerraConfig
M.setup = function(highlights, colors, config)
    ---@type TerraHighlightGroup
    highlights.plugins.whichkey = {
        WhichKey = { fg = colors.palette.red },
        WhichKeyDesc = { fg = colors.palette.blue },
        WhichKeyGroup = { fg = colors.palette.dark_yellow },
        WhichKeySeperator = { fg = colors.palette.green },
    }
end

return M
