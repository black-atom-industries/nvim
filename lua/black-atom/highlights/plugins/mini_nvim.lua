---@doc https://github.com/echasnovski/mini.nvim
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors)
        local ui = colors.ui

        ---@type BlackAtom.Highlights
        return {
            ---@doc https://github.com/echasnovski/mini.indentscope
            MiniIndentscopeSymbol = { fg = ui.fg.subtle },
        }
    end,
}
