---@type TerraHighlightMapExtension
local highlight_map_extension = {
    setup = function(highlights, colors, config)
        ---@type TerraHighlightGroup
        highlights.plugins.nvim_tree = {
            NvimTreeNormal = {
                fg = colors.semantics.fg.primary.main,
                bg = config.transparent and colors.none or colors.semantics.bg.primary.dark,
            },
            NvimTreeVertSplit = {
                fg = colors.palette.gray,
                bg = config.transparent and colors.none or colors.semantics.bg.primary.main,
            },
            NvimTreeEndOfBuffer = {
                fg = config.ending_tildes and colors.semantics.bg.primary.light or colors.semantics.bg.primary.main,
                bg = config.transparent and colors.none or colors.semantics.bg.primary.dark,
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
                bg = config.transparent and colors.none or colors.semantics.bg.primary.dark,
            },
            NvimTreeCursorLine = { bg = colors.semantics.bg.primary.main },
            NvimTreeWinSeparator = {
                fg = colors.semantics.fg.neutral,
                bg = config.transparent and colors.none or colors.semantics.bg.primary.main,
            },
            NvimTreeWindowPicker = {
                fg = colors.palette.white,
                bg = colors.palette.gray,
            },
        }
    end,
}

return highlight_map_extension
