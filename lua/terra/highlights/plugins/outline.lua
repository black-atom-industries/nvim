local M = {}

---@param highlights TerraHighlightsMap
---@param colors TerraColors
---@param config TerraConfig
M.setup = function(highlights, colors, config)
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
end

return M
