---@type BlackAtomCore.HighlightsSpec
local highlight_map_extension = {
    map = function(colors)
        ---@type BlackAtomCore.Highlights
        local highlights_map = {
            DashboardShortCut = { fg = colors.palette.blue },
            DashboardHeader = { fg = colors.palette.yellow },
            DashboardCenter = { fg = colors.palette.cyan },
            DashboardFooter = { fg = colors.palette.dark_red, italic = true },
        }

        return highlights_map
    end,
}

return highlight_map_extension
