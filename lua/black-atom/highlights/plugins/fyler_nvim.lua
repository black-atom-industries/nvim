---@doc https://github.com/A7Lavinraj/fyler.nvim
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors, config)
        local fg = colors.ui.fg
        local bg = require("black-atom.lib").bg
        local bg_panel = bg.panel(config, colors)
        local palette = colors.palette

        ---@type BlackAtom.Highlights
        return {
            -- Window
            FylerNormal = { fg = fg.default, bg = bg_panel },
            FylerNormalNC = { fg = fg.subtle, bg = bg_panel },
            FylerBorder = { fg = fg.subtle, bg = bg_panel },

            -- Filesystem
            FylerFSDirectoryIcon = { fg = palette.blue },
            FylerFSDirectoryName = { fg = fg.default, bold = true },
            FylerFSFile = { fg = fg.default },
            FylerFSLink = { fg = fg.subtle, italic = true },

            -- Indent
            FylerIndentMarker = { fg = fg.subtle },

            -- Git
            FylerGitAdded = { fg = fg.add },
            FylerGitConflict = { fg = fg.modify },
            FylerGitDeleted = { fg = fg.delete },
            FylerGitIgnored = { fg = fg.subtle, italic = true },
            FylerGitModified = { fg = fg.modify },
            FylerGitRenamed = { fg = fg.modify },
            FylerGitStaged = { fg = fg.add },
            FylerGitUnstaged = { fg = fg.modify },
            FylerGitUntracked = { fg = fg.add },

            -- Action labels
            FylerGreen = { fg = palette.green },
            FylerRed = { fg = palette.red },
            FylerYellow = { fg = palette.yellow },
            FylerGrey = { fg = fg.subtle },
        }
    end,
}
