---@type TerraHighlightsSpec
local highlight_map_extension = {
    map = function(colors)
        ---@type TerraHighlights
        local highlights_map = {
            WhichKey = { fg = colors.palette.cyan },
            WhichKeyDesc = { fg = colors.palette.blue },
            WhichKeyGroup = { fg = colors.palette.dark_yellow },
            WhichKeySeperator = { fg = colors.palette.green },
        }

        return highlights_map
    end,
}

return highlight_map_extension
