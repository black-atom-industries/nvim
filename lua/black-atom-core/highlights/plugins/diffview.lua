---@type BlackAtomCore.HighlightsSpec
local hightligh_map_extension = {
    map = function(colors)
        ---@type BlackAtomCore.Highlights
        local highlights_map = {
            DiffviewFilePanelTitle = { fg = colors.palette.blue, bold = true },
            DiffviewFilePanelCounter = { fg = colors.palette.magenta, bold = true },
            DiffviewFilePanelFileName = { fg = colors.semantics.fg.primary.main },
            DiffviewNormal = { link = "Normal" },
            DiffviewCursorLine = { link = "CursorLine" },
            DiffviewVertSplit = { link = "VertSplit" },
            DiffviewSignColumn = { link = "SignColumn" },
            DiffviewStatusLine = { link = "StatusLine" },
            DiffviewStatusLineNC = { link = "StatusLineNC" },
            DiffviewEndOfBuffer = { link = "EndOfBuffer" },
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

        return highlights_map
    end,
}

return hightligh_map_extension
