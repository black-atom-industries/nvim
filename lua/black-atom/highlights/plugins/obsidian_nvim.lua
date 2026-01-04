---@doc https://github.com/obsidian-nvim/obsidian.nvim
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors)
        local palette = colors.palette
        local ui = colors.ui
        local syntax = colors.syntax

        ---@type BlackAtom.Highlights
        return {
            ObsidianTodo = { fg = syntax.markup.list.unchecked, bold = true },
            ObsidianDone = { fg = syntax.markup.list.checked, bold = true },
            ObsidianRightArrow = { fg = ui.fg.hint, bold = true },
            ObsidianTilde = { fg = ui.fg.disabled, bold = true },
            ObsidianImportant = { fg = ui.fg.negative, bold = true },
            ObsidianBullet = { fg = ui.fg.subtle, bold = true },
            ObsidianRefText = { fg = syntax.markup.link, underline = true },
            ObsidianExtLinkIcon = { fg = ui.fg.info },
            ObsidianTag = { fg = palette.cyan, italic = true },
            ObsidianBlockID = { fg = ui.fg.subtle, italic = true },
            ObsidianHighlightText = { bg = ui.bg.search, fg = ui.fg.contrast },
        }
    end,
}
