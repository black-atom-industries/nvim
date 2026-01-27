---@doc https://github.com/Ajaymamtora/codediff.nvim
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors)
        local ui = colors.ui
        local palette = colors.palette

        ---@type BlackAtom.Highlights
        return {
            CodeDiffLineInsert = { bg = ui.bg.add },
            CodeDiffLineDelete = { bg = ui.bg.delete },
            CodeDiffCharInsert = { fg = palette.dark_green, bg = palette.green },
            CodeDiffCharDelete = { fg = palette.dark_red, bg = palette.red },
            CodeDiffFiller = { fg = ui.fg.subtle },
        }
    end,
}
