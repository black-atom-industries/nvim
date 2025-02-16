---@doc https://github.com/nvim-neo-tree/neo-tree.nvim
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors, config)
        local fg = colors.ui.fg
        local bg = require("black-atom.lib").bg
        local bg_panel = bg.panel(config, colors)
        local bg_default = bg.default(config, colors)

        ---@type BlackAtom.Highlights
        return {
            NeoTreeNormal = { fg = fg.default, bg = bg_panel },
            NeoTreeNormalNC = { fg = fg.subtle, bg = bg_panel },
            NeoTreeCursorLine = { bg = bg_default },
            NeoTreeDotfile = { fg = fg.subtle },
            NeoTreeEndOfBuffer = { fg = bg_panel },
            NeoTreeFileName = { fg = fg.default },
            NeoTreeFloatBorder = { fg = bg_panel, bg = bg_panel },
            NeoTreeFloatNormal = { fg = fg.default, bg = bg_panel },
            NeoTreeGitConflict = { fg = fg.modify },
            NeoTreeGitIgnored = { fg = fg.subtle, italic = true },
            NeoTreeGitUntracked = { fg = fg.add },
            NeoTreeTitleBar = { fg = fg.subtle, bg = bg_panel },
            NeoTreeWinSeparator = { fg = bg_default },
        }
    end,
}
