---@type TerraHighlightsSpec
local highlight_map_extension = {
    map = function(colors)
        ---@type TerraHighlights
        local highlights_map = {
            -- Native Regex Highlights
            cssPositioningAttr = { fg = colors.palette.yellow },
            cssBoxAttr = { fg = colors.palette.yellow },
            cssTextAttr = { fg = colors.palette.blue },
            cssCommonAttr = { fg = colors.palette.blue },
            cssCascadeAttr = { fg = colors.palette.yellow },
            cssFlexibleBoxAttr = { fg = colors.palette.yellow },
            cssUnitDecorators = { fg = colors.palette.yellow },
            cssValueLength = { fg = colors.palette.dark_blue },

            -- TreeSitter Highlights
            -- If you want to add TreeSitter highlights, you can do so here.
        }

        return highlights_map
    end,
}

return highlight_map_extension
