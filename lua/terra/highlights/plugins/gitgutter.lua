local M = {}

---@param highlights TerraHighlightsMap
---@param colors TerraColors
---@param config TerraConfig
M.setup = function(highlights, colors, config)
    ---@type TerraHighlightGroup
    highlights.plugins.gitgutter = {
        GitGutterAdd = { fg = colors.palette.green },
        GitGutterChange = { fg = colors.palette.blue },
        GitGutterDelete = { fg = colors.palette.red },
    }
end

return M
