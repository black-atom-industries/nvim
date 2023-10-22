local cond_hl = require("terra-core.utils").highlights.conditional_hl

---@type TerraHighlightsSpec
local highlight_map_extension = {
    ---@diagnostic disable-next-line: unused-local
    map = function(colors, config)
        ---@type TerraHighlights
        local highlights_map = {
            NeoTreeNormal = {
                fg = colors.semantics.fg.primary.main,
                bg = cond_hl(colors.semantics.bg.primary.dark, {
                    [config.transparent] = colors.none,
                }),
            },
            NeoTreeNormalNC = {
                fg = colors.semantics.fg.secondary.main,
                bg = cond_hl(colors.semantics.bg.primary.dark, {
                    [config.transparent] = colors.none,
                }),
            },
            NeoTreeCursorLine = {
                bg = colors.semantics.bg.secondary.dark,
            },
            NeoTreeFloatBorder = {
                fg = colors.semantics.bg.primary.dark,
                bg = colors.semantics.bg.primary.dark,
            },
        }

        return highlights_map
    end,
}

return highlight_map_extension
