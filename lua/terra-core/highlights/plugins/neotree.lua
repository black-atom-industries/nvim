---@type TerraHighlightsSpec
local highlight_map_extension = {
    enabled = true,
    map = function(colors, config)
        local utils = require("terra-core.utils")

        local fg = colors.semantics.fg
        local bg = colors.semantics.bg

        local bg_sidebar = utils.bg.sidebar(config, colors)
        local bg_float = utils.bg.float(config, colors)

        ---@type TerraHighlights
        local highlights_map = {
            NeoTreeNormal = { fg = fg.primary.main, bg = bg_sidebar },
            NeoTreeNormalNC = { fg = fg.secondary.main, bg = bg_sidebar },
            NeoTreeFloatNormal = { fg = fg.primary.main, bg = bg_float },
            NeoTreeFloatBorder = { fg = bg.primary.dark, bg = bg.primary.dark },
            NeoTreeTitleBar = { fg = fg.neutral, bg = bg.primary.dark },
            NeoTreeCursorLine = { bg = bg.active },
            NeoTreeGitConflict = { fg = fg.diff.change },
            NeoTreeGitUntracked = { fg = fg.diff.add },
        }

        return highlights_map
    end,
}

return highlight_map_extension
