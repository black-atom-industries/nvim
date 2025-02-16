---@doc https://github.com/folke/which-key.nvim
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors)
        local ui = colors.ui

        ---@type BlackAtom.Highlights
        return {
            WhichKey = { fg = ui.fg.default },
            WhichKeyIcon = { fg = ui.fg.accent },
            WhichKeyDesc = { fg = ui.fg.subtle },
            WhichKeyGroup = { fg = ui.fg.accent },
            WhichKeySeperator = { fg = ui.fg.subtle },
        }
    end,
}
