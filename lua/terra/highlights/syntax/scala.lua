local extend = require("terra.actions").highlights.extend_highlight

local M = {}

---@param highlights TerraHighlightsMap
---@param colors TerraColors
---@param config TerraConfig
M.setup = function(highlights, colors, config)
    ---@type TerraHighlightGroup
    highlights.syntax.scala = {
        -- Native Regex Highlights
        scalaNameDefinition = { fg = colors.semantics.fg.primary.main },
        scalaInterpolationBoundary = { fg = colors.palette.magenta },
        scalaInterpolation = { fg = colors.palette.magenta },
        scalaTypeOperator = { fg = colors.palette.red },
        scalaOperator = { fg = colors.palette.red },
        scalaKeywordModifier = extend({ fg = colors.palette.red }, config.code_style.keywords),

        -- TreeSitter Highlights
        -- If you want to add TreeSitter highlights, you can do so here.
    }
end

return M
