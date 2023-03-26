local M = {}

---@param highlights TerraHighlightsMap
---@param colors TerraColors
---@param config TerraConfig
M.setup = function(highlights, colors, config)
    ---@type TerraHighlightGroup
    highlights.plugins.diffview = {
        DiffviewFilePanelTitle = { fg = colors.palette.blue, bold = true },
        DiffviewFilePanelCounter = { fg = colors.palette.magenta, bold = true },
        DiffviewFilePanelFileName = { fg = colors.semantics.fg.primary.main },
        DiffviewNormal = highlights.common.Normal,
        DiffviewCursorLine = highlights.common.CursorLine,
        DiffviewVertSplit = highlights.common.VertSplit,
        DiffviewSignColumn = highlights.common.SignColumn,
        DiffviewStatusLine = highlights.common.StatusLine,
        DiffviewStatusLineNC = highlights.common.StatusLineNC,
        DiffviewEndOfBuffer = highlights.common.EndOfBuffer,
        DiffviewFilePanelRootPath = { fg = colors.palette.gray },
        DiffviewFilePanelPath = { fg = colors.palette.gray },
        DiffviewFilePanelInsertions = { fg = colors.palette.green },
        DiffviewFilePanelDeletions = { fg = colors.palette.red },
        DiffviewStatusAdded = { fg = colors.palette.green },
        DiffviewStatusUntracked = { fg = colors.palette.blue },
        DiffviewStatusModified = { fg = colors.palette.blue },
        DiffviewStatusRenamed = { fg = colors.palette.blue },
        DiffviewStatusCopied = { fg = colors.palette.blue },
        DiffviewStatusTypeChange = { fg = colors.palette.blue },
        DiffviewStatusUnmerged = { fg = colors.palette.blue },
        DiffviewStatusUnknown = { fg = colors.palette.red },
        DiffviewStatusDeleted = { fg = colors.palette.red },
        DiffviewStatusBroken = { fg = colors.palette.red },
    }
end

return M
