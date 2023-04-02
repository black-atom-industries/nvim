---@type TerraHighlightMapExtension
local highlight_map_extension = {
    setup = function(highlights, colors)
        ---@type TerraHighlightGroup
        highlights.plugins.incline = {
            InclineNormal = {
                fg = colors.semantics.fg.active,
                bg = colors.semantics.bg.primary.dark,
                bold = true,
            },
            InclineNormalNC = {
                fg = colors.semantics.fg.neutral,
                bg = colors.semantics.bg.primary.dark,
            },
        }
    end,
}

return highlight_map_extension
