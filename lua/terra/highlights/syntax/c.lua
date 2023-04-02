---@type TerraHighlightMapExtension
local highlight_map_extension = {
    setup = function(highlights, colors)
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
    end,
}

return highlight_map_extension
