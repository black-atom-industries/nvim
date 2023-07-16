---@type TerraHighlightsSpec
local highlight_map_extension = {
    map = function(colors)
        ---@type TerraHighlights
        local highlights_map = {
            -- Native Regex Highlights
            sassVariable = { fg = colors.palette.dark_yellow },
            sassProperty = { fg = colors.palette.blue },
            sassMixing = { fg = colors.palette.red },
            sassMixinName = { fg = colors.palette.magenta },
            sassCssAttribute = { fg = colors.palette.yellow },
            sassDefinition = { fg = colors.palette.white },
            sassAmbersand = { fg = colors.palette.yellow },

            -- TreeSitter Highlights
            -- If you want to add TreeSitter highlights, you can do so here.
        }

        return highlights_map
    end,
}

return highlight_map_extension
