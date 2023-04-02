---@type TerraHighlightMapExtension
local highlight_map_extension = {
    setup = function(highlights, colors)
        ---@type TerraHighlightGroup
        highlights.plugins.dashboard = {
            DashboardShortCut = { fg = colors.palette.blue },
            DashboardHeader = { fg = colors.palette.yellow },
            DashboardCenter = { fg = colors.palette.cyan },
            DashboardFooter = { fg = colors.palette.dark_red, italic = true },
        }
    end,
}

return highlight_map_extension
