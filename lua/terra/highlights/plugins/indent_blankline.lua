local M = {}

---@param highlights TerraHighlightsMap
---@param colors TerraColors
---@param config TerraConfig
M.setup = function(highlights, colors, config)
    ---@type TerraHighlightGroup
    highlights.plugins.indent_blankline = {
        IndentBlanklineChar = { fg = colors.semantics.fg.neutral },
        IndentBlanklineContextChar = { fg = colors.semantics.fg.active },
    }
end

return M
