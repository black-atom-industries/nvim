---@doc https://github.com/https://github.com/echasnovski/mini.nvim
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors)
        local ui = colors.ui
        local palette = colors.palette

        ---@type BlackAtom.Highlights
        return {
            MiniPickPrompt = { fg = ui.fg.accent, bg = ui.bg.float },
            MiniFloatBorder = { fg = ui.fg.accent, bg = ui.bg.float },
        }
    end,
}
