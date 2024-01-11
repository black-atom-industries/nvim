
---@type TerraHighlightsSpec
local highlight_map_spec = {
    enabled = true,

    map = function(colors)
        local fg = colors.semantics.fg

        ---@type TerraHighlights
        local highlights_map = {
            FzfLuaTitle = { fg = fg.active },
            FzfLuaBorder = { link = "FloatBorder" },
            FzfLuaPreviewBorder = { link = "FloatBorder" },
        }

        return highlights_map
    end,
}

return highlight_map_spec
