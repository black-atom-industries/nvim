local M = {}

---@param highlights TerraHighlightsMap
---@param colors TerraColors
---@param config TerraConfig
M.setup = function(highlights, colors, config)
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
end

return M
