local M = {}

---@param highlights TerraHighlightsMap
---@param colors TerraColors
---@param config TerraConfig
M.setup = function(highlights, colors, config)
    ---@type TerraHighlightGroup
    highlights.plugins.dashboard = {
        DashboardShortCut = { fg = colors.palette.blue },
        DashboardHeader = { fg = colors.palette.yellow },
        DashboardCenter = { fg = colors.palette.cyan },
        DashboardFooter = { fg = colors.palette.dark_red, italic = true },
    }
end

return M
