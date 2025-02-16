---@doc https://github.com/lewis6991/gitsigns.nvim
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors)
        local ui = colors.ui

        ---@type BlackAtom.Highlights
        return {
            GitSignsAdd = { fg = ui.fg.add },
            GitSignsAddLn = { fg = ui.fg.add },
            GitSignsAddNr = { fg = ui.fg.add },
            GitSignsChange = { fg = ui.fg.modify },
            GitSignsChangeLn = { fg = ui.fg.modify },
            GitSignsChangeNr = { fg = ui.fg.modify },
            GitSignsDelete = { fg = ui.fg.delete },
            GitSignsDeleteLn = { fg = ui.fg.delete },
            GitSignsDeleteNr = { fg = ui.fg.delete },
        }
    end,
}
