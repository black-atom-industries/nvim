local M = {}

---@param highlights TerraHighlightsMap
---@param colors TerraColors
---@param config TerraConfig
M.setup = function(highlights, colors, config)
    ---@type TerraHighlightGroup
    highlights.syntax.c = {
        -- Native Regex Highlights
        cInclude = { fg = colors.palette.blue },
        cStorageClass = { fg = colors.palette.magenta },
        cTypedef = { fg = colors.palette.magenta },
        cDefine = { fg = colors.palette.cyan },
        cTSInclude = { fg = colors.palette.blue },
        cTSConstant = { fg = colors.palette.cyan },
        cTSConstMacro = { fg = colors.palette.magenta },
        cTSOperator = { fg = colors.palette.magenta },

        -- TreeSitter Highlights
        -- If you want to add TreeSitter highlights, you can do so here.
    }
end

return M
