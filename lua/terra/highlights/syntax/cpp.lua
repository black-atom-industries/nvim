---@type TerraHighlightMapExtension
local highlight_map_extension = {
    setup = function(highlights, colors)
        ---@type TerraHighlightGroup
        highlights.syntax.cpp = {
            -- Native Regex Highlights
            cppStatement = { fg = colors.palette.magenta, bold = true },
            cppTSInclude = { fg = colors.palette.blue },
            cppTSConstant = { fg = colors.palette.cyan },
            cppTSConstMacro = { fg = colors.palette.magenta },
            cppTSOperator = { fg = colors.palette.magenta },

            -- TreeSitter Highlights
            -- If you want to add TreeSitter highlights, you can do so here.
        }
    end,
}

return highlight_map_extension
