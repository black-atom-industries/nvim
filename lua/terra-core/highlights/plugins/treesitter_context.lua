local conditional_hl = require("terra-core.utils").highlights.conditional_hl

---@type TerraHighlightsSpec
local highlight_map_extension = {
    map = function(colors, config)
        local bg = colors.semantics.bg
        local fg = colors.semantics.fg

        ---@type TerraHighlights
        local highlights_map = {
            TreesitterContext = {
                fg = fg.neutral,
                bg = conditional_hl(bg.primary.dark, {
                    [config.transparent] = colors.none,
                }),
            },
            TreesitterContextLineNumber = {
                fg = fg.neutral,
                bg = conditional_hl(bg.primary.dark, {
                    [config.transparent] = colors.none,
                }),
            },
        }

        return highlights_map
    end,
}

return highlight_map_extension
