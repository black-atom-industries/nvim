---@type TerraHighlightsSpec
local highlight_map_spec = {
    enabled = true,

    map = function(colors, config)
        ---@type TerraHighlights
        local highlights_map = {
            FzfLuaNormal = {
                bg = colors.semantics.bg.primary.dark,
            },
            FzfLuaBorder = {
                fg = colors.semantics.fg.neutral,
                bg = colors.semantics.bg.primary.dark,
            },
        }

        return highlights_map
    end,
}

return highlight_map_spec
