local M = {}

---@param highlights TerraHighlightsMap
---@param colors TerraColors
---@param config TerraConfig
M.setup = function(highlights, colors, config)
    ---@type TerraHighlightGroup
    highlights.syntax.typescript = {
        -- Native Regex Highlights
        typescriptArrowFuncDef = { fg = colors.palette.dark_yellow },
        typescriptVariable = { fg = colors.palette.red },

        -- TreeSitter Highlights
        -- If you want to add TreeSitter highlights, you can do so here.
    }
end

return M
