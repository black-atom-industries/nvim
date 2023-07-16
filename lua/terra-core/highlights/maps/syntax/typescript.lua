---@type TerraHighlightsSpec
local highlight_map_extension = {
    map = function(colors)
        ---@type TerraHighlights
        local highlights_map = {
            -- Native Regex Highlights
            typescriptArrowFuncDef = { fg = colors.palette.dark_yellow },
            typescriptVariable = { fg = colors.palette.red },

            -- TreeSitter Highlights
            -- If you want to add TreeSitter highlights, you can do so here.
        }

        return highlights_map
    end,
}

return highlight_map_extension
