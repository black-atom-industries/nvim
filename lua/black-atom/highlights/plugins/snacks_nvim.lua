---@doc https://github.com/username/plugin-name
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors)
        local ui = colors.ui

        ---@type BlackAtom.Highlights
        return {
            SnacksInputNormal = { link = "NormalFloat" },
            SnacksInputBorder = { link = "FloatBorder" },
            SnacksInputTitle = { link = "FloatTitle" },

            SnacksPickerBorder = { fg = ui.fg.accent, bg = ui.bg.float },
            -- SnacksPickerPreviewBorder = { fg = ui.bg.default, bg = ui.bg.default },
            SnacksPickerMatch = { fg = ui.fg.accent },
            SnacksPickerFile = { fg = ui.fg.default },
            SnacksPickerDir = { fg = ui.fg.subtle, bold = true },
            SnacksNotifierHistory = { bg = ui.bg.float },
            SnacksPickerCursorLine = { bg = ui.bg.active },
            SnacksPickerListCursorLine = { bg = ui.bg.default },

            -- Git status icons in explorer/picker (prefixed by Snacks'SnacksPicker')
            SnacksPickerGitStatus = { fg = ui.fg.subtle },
            SnacksPickerGitStatusModified = { fg = ui.fg.info },
            SnacksPickerGitStatusStaged = { fg = ui.fg.accent },
            SnacksPickerGitStatusAdded = { fg = ui.fg.accent },
            SnacksPickerGitStatusDeleted = { fg = ui.fg.negative },
            SnacksPickerGitStatusUnmerged = { fg = ui.fg.negative },
            SnacksPickerGitStatusIgnored = { fg = ui.fg.subtle },
            SnacksPickerGitStatusUntracked = { fg = ui.fg.subtle },
            SnacksPickerGitStatusRenamed = { fg = ui.fg.subtle },
            SnacksPickerGitStatusCopied = { fg = ui.fg.subtle },

            -- SnacksGhNormal = { bg = "#ff0000" },
            -- SnacksGhNormalFloat = { bg = "#ff0000" },
        }
    end,
}
