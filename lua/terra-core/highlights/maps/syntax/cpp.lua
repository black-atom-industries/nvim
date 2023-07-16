---@type TerraHighlightsSpec
local highlight_map_extension = {
    map = function(colors)
        ---@type TerraHighlights
        local highlights_map = {
            -- Native Regex Highlights
            cppStatement = { fg = colors.palette.magenta, bold = true },
            cppTSInclude = { fg = colors.palette.blue },
            cppTSConstant = { fg = colors.palette.cyan },
            cppTSConstMacro = { fg = colors.palette.magenta },
            cppTSOperator = { fg = colors.palette.magenta },

            -- TreeSitter Highlights
            -- If you want to add TreeSitter highlights, you can do so here.
        }

        return highlights_map
    end,
}

return highlight_map_extension
