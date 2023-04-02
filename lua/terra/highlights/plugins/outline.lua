---@type TerraHighlightMapExtension
local highlight_map_extension = {
    setup = function(highlights, colors)
        ---@type TerraHighlightGroup
        highlights.plugins.outline = {
            FocusedSymbol = {
                fg = colors.palette.magenta,
                bg = colors.semantics.bg.primary.light,
                bold = true,
            },
            AerialLine = {
                fg = colors.palette.magenta,
                bg = colors.semantics.bg.primary.light,
                bold = true,
            },
        }
    end,
}

return highlight_map_extension
