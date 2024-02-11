---@type TerraHighlightsSpec
local highlight_map_extension = {
    map = function(colors, config)
        local conditional_hl = require("terra-core.lib").hls.conditional_hl

        local bg = colors.semantics.bg
        local fg = colors.semantics.fg

        ---@type TerraHighlights
        local highlights_map = {
            TreesitterContext = {
                fg = fg.neutral,
                bg = conditional_hl(bg.primary.light, {
                    [config.transparency == "full"] = colors.none,
                }),
            },
            TreesitterContextLineNumber = {
                fg = fg.neutral,
                bg = conditional_hl(bg.primary.light, {
                    [config.transparency == "full"] = colors.none,
                }),
            },
        }

        return highlights_map
    end,
}

return highlight_map_extension
