---@doc https://github.com/nvimdev/dashboard-nvim
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors)
        local pal = colors.palette

        ---@type BlackAtom.Highlights
        return {
            DashboardShortCut = { fg = pal.blue },
            DashboardHeader = { fg = pal.yellow },
            DashboardCenter = { fg = pal.cyan },
            DashboardFooter = { fg = pal.dark_red, italic = true },
        }
    end,
}
