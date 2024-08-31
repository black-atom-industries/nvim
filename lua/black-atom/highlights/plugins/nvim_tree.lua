---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors, config)
        local conditional_hl = require("black-atom.lib").highlights.conditional_hl
        ---@type BlackAtom.Highlights
        return {
            NvimTreeNormal = {
                fg = colors.ui.fg.primary.main,
                bg = conditional_hl(colors.ui.bg.primary.dark, {
                    [config.styles.transparency == "full"] = colors.none,
                }),
            },
            NvimTreeNormalNC = {
                fg = colors.ui.fg.secondary.main,
                bg = conditional_hl(colors.ui.bg.primary.dark, {
                    [config.styles.transparency == "full"] = colors.none,
                }),
            },
            NvimTreeVertSplit = {
                fg = colors.palette.gray,
                bg = conditional_hl(colors.ui.bg.primary.main, {
                    [config.styles.transparency == "full"] = colors.none,
                }),
            },
            NvimTreeEndOfBuffer = {
                fg = conditional_hl(colors.ui.bg.primary.main, {
                    [config.styles.ending_tildes] = colors.ui.bg.primary.light,
                }),
                bg = conditional_hl(colors.ui.bg.primary.dark, {
                    [config.styles.transparency == "full"] = colors.none,
                }),
            },
            NvimTreeRootFolder = { fg = colors.palette.dark_yellow, bold = true },
            NvimTreeGitDirty = { fg = colors.palette.yellow },
            NvimTreeGitNew = { fg = colors.palette.green },
            NvimTreeGitDeleted = { fg = colors.palette.red },
            NvimTreeSpecialFile = { fg = colors.palette.yellow, underline = true },
            NvimTreeIndentMarker = { fg = colors.ui.fg.primary.main },
            NvimTreeImageFile = { fg = colors.palette.dark_magenta },
            NvimTreeSymlink = { fg = colors.palette.magenta },
            NvimTreeFolderName = {
                fg = colors.palette.blue,
                bg = conditional_hl(colors.ui.bg.primary.dark, {
                    [config.styles.transparency == "full"] = colors.none,
                }),
            },
            NvimTreeCursorLine = { bg = colors.ui.bg.primary.main },
            NvimTreeWinSeparator = {
                fg = colors.ui.fg.neutral,
                bg = conditional_hl(colors.ui.bg.primary.main, {
                    [config.styles.transparency == "full"] = colors.none,
                }),
            },
            NvimTreeWindowPicker = {
                fg = colors.palette.white,
                bg = colors.palette.gray,
            },
        }
    end,
}
