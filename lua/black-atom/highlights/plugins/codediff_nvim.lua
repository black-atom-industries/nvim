---@doc https://github.com/esmuellert/codediff.nvim
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors)
        local ui = colors.ui

        ---@type BlackAtom.Highlights
        return {
            -- Diff highlights
            CodeDiffLineInsert = { bg = ui.bg.add },
            CodeDiffLineDelete = { bg = ui.bg.delete },
            CodeDiffCharInsert = { fg = ui.fg.add, bg = ui.bg.add, bold = true },
            CodeDiffCharDelete = { fg = ui.fg.delete, bg = ui.bg.delete, bold = true },
            CodeDiffFiller = { fg = ui.fg.subtle },

            -- Moved code highlights
            CodeDiffLineMove = { bg = ui.bg.modify },
            CodeDiffCharMove = { fg = ui.fg.modify, bg = ui.bg.modify, bold = true },
            CodeDiffMoveFrom = { fg = ui.fg.modify },
            CodeDiffMoveTo = { fg = ui.fg.info },

            -- Help window highlights
            CodeDiffHelpSection = { link = "Statement" },
            CodeDiffHelpKey = { link = "Special" },
            CodeDiffHelpSep = { link = "NonText" },
            CodeDiffHelpDesc = { link = "Normal" },

            -- Explorer tree structure (undocumented groups defined in codediff/ui/highlights.lua)
            ExplorerDirectorySmall = { fg = ui.fg.subtle }, -- dimmed directory path next to filenames
            NeoTreeIndentMarker = { fg = ui.fg.subtle }, -- tree indent characters (│, ├, └)

            -- Explorer/history status highlights
            CodeDiffStatusAdded = { fg = ui.fg.add },
            CodeDiffStatusModified = { fg = ui.fg.modify },
            CodeDiffStatusDeleted = { fg = ui.fg.delete },
            CodeDiffStatusRenamed = { fg = ui.fg.info },
            CodeDiffStatusUntracked = { fg = ui.fg.info },
            CodeDiffStatusConflict = { fg = ui.fg.negative },
            CodeDiffExplorerSelected = { bg = ui.bg.active },
        }
    end,
}
