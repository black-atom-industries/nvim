---@doc https://github.com/nvim-tree/nvim-tree.lua
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors, config)
        local cond_hl = require("black-atom.lib").highlights.conditional_hl

        local ui = colors.ui
        local p = colors.palette

        ---@type BlackAtom.Highlights
        return {
            NvimTreeNormal = {
                fg = ui.fg.primary.main,
                bg = cond_hl(ui.bg.primary.dark, { [config.styles.transparency == "full"] = colors.none }),
            },
            NvimTreeNormalNC = {
                fg = ui.fg.secondary.main,
                bg = cond_hl(ui.bg.primary.dark, {
                    [config.styles.transparency == "full"] = colors.none,
                }),
            },
            NvimTreeVertSplit = {
                fg = p.gray,
                bg = cond_hl(ui.bg.primary.main, {
                    [config.styles.transparency == "full"] = colors.none,
                }),
            },
            NvimTreeEndOfBuffer = {
                fg = cond_hl(ui.bg.primary.main, {
                    [config.styles.ending_tildes] = ui.bg.primary.light,
                }),
                bg = cond_hl(ui.bg.primary.dark, {
                    [config.styles.transparency == "full"] = colors.none,
                }),
            },
            NvimTreeRootFolder = { fg = p.dark_yellow, bold = true },
            NvimTreeGitDirty = { fg = p.yellow },
            NvimTreeGitNew = { fg = p.green },
            NvimTreeGitDeleted = { fg = p.red },
            NvimTreeSpecialFile = { fg = p.yellow, underline = true },
            NvimTreeIndentMarker = { fg = ui.fg.primary.main },
            NvimTreeImageFile = { fg = p.dark_magenta },
            NvimTreeSymlink = { fg = p.magenta },
            NvimTreeCursorLine = { bg = ui.bg.primary.main },
            NvimTreeWindowPicker = { fg = p.white, bg = p.gray },
            NvimTreeFolderName = {
                fg = p.blue,
                bg = cond_hl(ui.bg.primary.dark, { [config.styles.transparency == "full"] = colors.none }),
            },
            NvimTreeWinSeparator = {
                fg = ui.fg.neutral,
                bg = cond_hl(ui.bg.primary.main, {
                    [config.styles.transparency == "full"] = colors.none,
                }),
            },
        }
    end,
}
