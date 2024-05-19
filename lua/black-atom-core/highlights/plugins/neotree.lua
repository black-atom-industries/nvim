---@type BlackAtomCore.HighlightsSpec
local highlight_map_extension = {
    enabled = true,
    map = function(colors, config)
        local lib = require("black-atom-core.lib")

        local fg = colors.semantics.fg
        local bg = colors.semantics.bg

        local bg_sidebar = lib.bg.sidebar(config, colors)
        local bg_float = lib.bg.float(config, colors)

        ---@type BlackAtomCore.Highlights
        local highlights_map = {
            NeoTreeNormal = { fg = fg.primary.main, bg = bg_sidebar },
            NeoTreeNormalNC = { fg = fg.secondary.main, bg = bg_sidebar },
            NeoTreeFloatNormal = { fg = fg.primary.main, bg = bg_float },
            NeoTreeFloatBorder = { fg = bg.primary.dark, bg = bg.primary.dark },
            NeoTreeTitleBar = { fg = fg.neutral, bg = bg.primary.dark },
            NeoTreeCursorLine = { bg = bg.primary.main },
            NeoTreeGitConflict = { fg = fg.diff.change },
            NeoTreeGitUntracked = { fg = fg.diff.add },
            NeoTreeEndOfBuffer = { fg = bg_sidebar },
            NeoTreeDotfile = { fg = fg.neutral },
            NeoTreeGitIgnored = { fg = fg.neutral, italic = true },
            NeoTreeDirectoryName = { fg = fg.primary.main, bold = true },
            NeoTreeFileName = { fg = fg.primary.main },
        }

        return highlights_map
    end,
}

return highlight_map_extension
