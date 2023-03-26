local M = {}

---@param highlights TerraHighlightsMap
---@param colors TerraColors
---@param config TerraConfig
M.setup = function(highlights, colors, config)
    ---@type TerraHighlightGroup
    highlights.plugins.indent_scope = {
        MiniIndentscopeSymbol = {
            fg = colors.semantics.fg.active,
        },
    }
end

return M
