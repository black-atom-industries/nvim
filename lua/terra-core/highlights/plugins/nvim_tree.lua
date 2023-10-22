local cond_hl = require("terra-core.utils").highlights.conditional_hl

---@type TerraHighlightsSpec
local highlight_map_extension = {
    map = function(colors, config)
        ---@type TerraHighlights
        local highlights_map = {
            NvimTreeNormal = {
                fg = colors.semantics.fg.primary.main,
                bg = cond_hl(colors.semantics.bg.primary.dark, {
                    [config.transparent] = colors.none,
                }),
            },
            NvimTreeNormalNC = {
                fg = colors.semantics.fg.secondary.main,
                bg = cond_hl(colors.semantics.bg.primary.dark, {
                    [config.transparent] = colors.none,
                }),
            },
            NvimTreeVertSplit = {
                fg = colors.palette.gray,
                bg = cond_hl(colors.semantics.bg.primary.main, {
                    [config.transparent] = colors.none,
                }),
            },
            NvimTreeEndOfBuffer = {
                fg = cond_hl(colors.semantics.bg.primary.main, {
                    [config.ending_tildes] = colors.semantics.bg.primary.light,
                }),
                bg = cond_hl(colors.semantics.bg.primary.dark, {
                    [config.transparent] = colors.none,
                }),
            },
            NvimTreeRootFolder = { fg = colors.palette.dark_yellow, bold = true },
            NvimTreeGitDirty = { fg = colors.palette.yellow },
            NvimTreeGitNew = { fg = colors.palette.green },
            NvimTreeGitDeleted = { fg = colors.palette.red },
            NvimTreeSpecialFile = { fg = colors.palette.yellow, underline = true },
            NvimTreeIndentMarker = { fg = colors.semantics.fg.primary.main },
            NvimTreeImageFile = { fg = colors.palette.dark_magenta },
            NvimTreeSymlink = { fg = colors.palette.magenta },
            NvimTreeFolderName = {
                fg = colors.palette.blue,
                bg = cond_hl(colors.semantics.bg.primary.dark, {
                    [config.transparent] = colors.none,
                }),
            },
            NvimTreeCursorLine = { bg = colors.semantics.bg.primary.main },
            NvimTreeWinSeparator = {
                fg = colors.semantics.fg.neutral,
                bg = cond_hl(colors.semantics.bg.primary.main, {
                    [config.transparent] = colors.none,
                }),
            },
            NvimTreeWindowPicker = {
                fg = colors.palette.white,
                bg = colors.palette.gray,
            },
        }

        return highlights_map
    end,
}

return highlight_map_extension
