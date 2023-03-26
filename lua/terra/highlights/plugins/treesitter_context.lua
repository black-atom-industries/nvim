local M = {}

---@param highlights TerraHighlightsMap
---@param colors TerraColors
---@param config TerraConfig
M.setup = function(highlights, colors, config)
    ---@type TerraHighlightGroup
    highlights.plugins.TreesitterContext = {
        TreesitterContext = {
            link = "StatusLine",
        },
        TreesitterContextLineNumber = {
            link = "StatusLine",
        },
    }
end

return M
