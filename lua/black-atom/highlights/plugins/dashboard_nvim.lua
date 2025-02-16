---@doc https://github.com/nvimdev/dashboard-nvim
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors)
        local palette = colors.palette

        ---@type BlackAtom.Highlights
        return {
            DashboardShortCut = { fg = palette.blue },
            DashboardHeader = { fg = palette.yellow },
            DashboardCenter = { fg = palette.cyan },
            DashboardFooter = { fg = palette.dark_red, italic = true },
        }
    end,
}
