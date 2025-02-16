---@doc https://github.com/DNLHC/glance.nvim
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors)
        local ui = colors.ui

        local border_style = { fg = ui.fg.accent, bg = ui.bg.float }
        local neutral_element_style = { fg = ui.fg.subtle, bg = ui.bg.float }
        local file_name_style = { fg = ui.fg.accent, bg = ui.bg.float }
        local match_style = { bg = ui.bg.selection }

        local preview_normal_style = { fg = ui.fg.default, bg = ui.bg.default }
        local list_normal_style = { fg = ui.fg.accent, bg = ui.bg.float }

        ---@type BlackAtom.Highlights
        return {
            -- Preview (The preview of the file)
            GlancePreviewNormal = preview_normal_style,
            GlancePreviewMatch = match_style,
            GlancePreviewCursorLine = { link = "CursorLine" },
            GlancePreviewSignColumn = { link = "SignColumn" },
            GlancePreviewEndOfBuffer = { link = "EndOfBuffer" },
            GlancePreviewLineNr = { link = "LineNr" },
            GlancePreviewBorderBottom = border_style,

            -- WindowBar
            GlanceWinBarFilename = file_name_style,
            GlanceWinBarFilepath = neutral_element_style,
            GlanceWinBarTitle = { fg = ui.fg.accent, bg = ui.bg.float },

            -- List (The list of affected files and references)
            GlanceListNormal = list_normal_style,
            GlanceListFilename = file_name_style,
            GlanceListFilepath = neutral_element_style,
            GlanceListCount = { fg = ui.fg.accent },
            GlanceListMatch = match_style,
            GlanceListCursorLine = { link = "CursorLine" },
            GlanceListEndOfBuffer = { bg = ui.bg.float },
            GlanceListBorderBottom = border_style,

            -- Other
            GlanceFoldIcon = { fg = ui.fg.info },
            GlanceIndent = { fg = ui.fg.subtle, bg = ui.bg.float },
            GlanceBorderTop = border_style,
        }
    end,
}
