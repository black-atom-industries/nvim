---@doc https://github.com/nvimdev/dashboard-nvim
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors)
        ---@type BlackAtom.Highlights
        return {
            DashboardShortCut = { fg = colors.palette.blue },
            DashboardHeader = { fg = colors.palette.yellow },
            DashboardCenter = { fg = colors.palette.cyan },
            DashboardFooter = { fg = colors.palette.dark_red, italic = true },
        }
    end,
}
