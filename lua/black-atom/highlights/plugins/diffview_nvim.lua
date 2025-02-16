---@doc https://github.com/sindrets/diffview.nvim
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors)
        local ui = colors.ui

        ---@type BlackAtom.Highlights
        return {
            DiffviewFilePanelTitle = { fg = ui.fg.info, bold = true },
            DiffviewFilePanelCounter = { fg = ui.fg.accent, bold = true },
            DiffviewFilePanelFileName = { fg = ui.fg.default },
            DiffviewNormal = { link = "Normal" },
            DiffviewCursorLine = { link = "CursorLine" },
            DiffviewVertSplit = { link = "VertSplit" },
            DiffviewSignColumn = { link = "SignColumn" },
            DiffviewStatusLine = { link = "StatusLine" },
            DiffviewStatusLineNC = { link = "StatusLineNC" },
            DiffviewEndOfBuffer = { link = "EndOfBuffer" },
            DiffviewFilePanelRootPath = { fg = ui.fg.subtle },
            DiffviewFilePanelPath = { fg = ui.fg.subtle },
            DiffviewFilePanelInsertions = { fg = ui.fg.add },
            DiffviewFilePanelDeletions = { fg = ui.fg.delete },
            DiffviewStatusAdded = { fg = ui.fg.add },
            DiffviewStatusUntracked = { fg = ui.fg.info },
            DiffviewStatusModified = { fg = ui.fg.modify },
            DiffviewStatusRenamed = { fg = ui.fg.modify },
            DiffviewStatusCopied = { fg = ui.fg.modify },
            DiffviewStatusTypeChange = { fg = ui.fg.modify },
            DiffviewStatusUnmerged = { fg = ui.fg.modify },
            DiffviewStatusUnknown = { fg = ui.fg.negative },
            DiffviewStatusDeleted = { fg = ui.fg.delete },
            DiffviewStatusBroken = { fg = ui.fg.negative },
        }
    end,
}
