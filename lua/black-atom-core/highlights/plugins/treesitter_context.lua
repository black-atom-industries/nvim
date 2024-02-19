---@type BlackAtomCore.HighlightsSpec
local highlight_map_extension = {
    map = function(colors, config)
        local conditional_hl = require("black-atom-core.lib").hls.conditional_hl

        local bg = colors.semantics.bg
        local fg = colors.semantics.fg

        ---@type BlackAtomCore.Highlights
        local highlights_map = {
            TreesitterContext = {
                fg = fg.neutral,
                bg = conditional_hl(bg.primary.light, {
                    [config.styles.transparency == "full"] = colors.none,
                }),
            },
            TreesitterContextLineNumber = {
                fg = fg.neutral,
                bg = conditional_hl(bg.primary.light, {
                    [config.styles.transparency == "full"] = colors.none,
                }),
            },
        }

        return highlights_map
    end,
}

return highlight_map_extension
