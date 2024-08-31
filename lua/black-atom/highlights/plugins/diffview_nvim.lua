---@doc https://github.com/sindrets/diffview.nvim
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors)
        local p = colors.palette
        local ui = colors.ui

        ---@type BlackAtom.Highlights
        return {
            DiffviewFilePanelTitle = { fg = p.blue, bold = true },
            DiffviewFilePanelCounter = { fg = p.magenta, bold = true },
            DiffviewFilePanelFileName = { fg = ui.fg.primary.main },
            DiffviewNormal = { link = "Normal" },
            DiffviewCursorLine = { link = "CursorLine" },
            DiffviewVertSplit = { link = "VertSplit" },
            DiffviewSignColumn = { link = "SignColumn" },
            DiffviewStatusLine = { link = "StatusLine" },
            DiffviewStatusLineNC = { link = "StatusLineNC" },
            DiffviewEndOfBuffer = { link = "EndOfBuffer" },
            DiffviewFilePanelRootPath = { fg = p.gray },
            DiffviewFilePanelPath = { fg = p.gray },
            DiffviewFilePanelInsertions = { fg = p.green },
            DiffviewFilePanelDeletions = { fg = p.red },
            DiffviewStatusAdded = { fg = p.green },
            DiffviewStatusUntracked = { fg = p.blue },
            DiffviewStatusModified = { fg = p.blue },
            DiffviewStatusRenamed = { fg = p.blue },
            DiffviewStatusCopied = { fg = p.blue },
            DiffviewStatusTypeChange = { fg = p.blue },
            DiffviewStatusUnmerged = { fg = p.blue },
            DiffviewStatusUnknown = { fg = p.red },
            DiffviewStatusDeleted = { fg = p.red },
            DiffviewStatusBroken = { fg = p.red },
        }
    end,
}
