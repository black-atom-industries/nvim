---@doc https://github.com/otavioschwanck/arrow.nvim
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors)
        local ui = colors.ui

        ---@type BlackAtom.Highlights
        return {
            ArrowCurrentFile = { fg = ui.fg.accent, bold = true },
            ArrowFileIndex = { fg = ui.fg.info },
            ArrowAction = { fg = ui.fg.hint },
            ArrowDeleteMode = { fg = ui.fg.error, bold = true },
        }
    end,
}
