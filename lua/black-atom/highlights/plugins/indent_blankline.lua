---@doc https://github.com/lukas-reineke/indent-blankline.nvim
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors)
        ---@type BlackAtom.Highlights
        return {
            IndentBlanklineChar = { fg = colors.ui.fg.neutral },
            IndentBlanklineContextChar = { fg = colors.ui.fg.active },
        }
    end,
}
