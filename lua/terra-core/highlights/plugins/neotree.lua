local cond_hl = require("terra-core.utils").highlights.conditional_hl

---@type TerraHighlightsSpec
local highlight_map_extension = {
    ---@diagnostic disable-next-line: unused-local
    map = function(colors, config)
        local fg = colors.semantics.fg
        local bg = colors.semantics.bg

        ---@type TerraHighlights
        local highlights_map = {
            NeoTreeNormal = {
                fg = fg.primary.main,
                bg = cond_hl(bg.primary.dark, { [config.transparent] = colors.none }),
            },
            NeoTreeNormalNC = {
                fg = fg.secondary.main,
                bg = cond_hl(bg.primary.dark, { [config.transparent] = colors.none }),
            },
            NeoTreeFloatBorder = {
                fg = bg.primary.dark,
                bg = cond_hl(bg.primary.dark, { [config.transparent] = colors.none }),
            },
            NeoTreeCursorLine = { bg = bg.active },
            NeoTreeGitConflict = { fg = fg.diff.change },
            NeoTreeGitUntracked = { fg = fg.diff.add },
        }

        return highlights_map
    end,
}

return highlight_map_extension
