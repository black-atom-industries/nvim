---@doc https://github.com/https://github.com/echasnovski/mini.nvim
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors)
        local ui = colors.ui

        ---@type BlackAtom.Highlights
        return {
            MiniPickPrompt = { fg = ui.fg.accent, bg = ui.bg.float },
            MiniFloatBorder = { fg = ui.fg.accent, bg = ui.bg.float },

            -- MiniDiff: Sign highlights
            MiniDiffSignAdd = { fg = ui.fg.add },
            MiniDiffSignChange = { fg = ui.fg.modify },
            MiniDiffSignDelete = { fg = ui.fg.delete },

            -- MiniDiff: Overlay highlights
            MiniDiffOverAdd = { bg = ui.bg.selection },
            MiniDiffOverChange = { fg = ui.fg.modify, bg = ui.bg.active },
            MiniDiffOverChangeBuf = { fg = ui.fg.info, bg = ui.bg.active },
            MiniDiffOverContext = { fg = ui.fg.subtle },
            MiniDiffOverContextBuf = { fg = ui.fg.default },
            MiniDiffOverDelete = { fg = ui.fg.delete, bg = ui.bg.active },
        }
    end,
}
