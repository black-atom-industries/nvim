---@type TerraHighlightMapExtension
local highlight_map_extension = {
    setup = function(highlights, colors)
        ---@type TerraHighlightGroup
        highlights.plugins.whichkey = {
            WhichKey = { fg = colors.palette.cyan },
            WhichKeyDesc = { fg = colors.palette.blue },
            WhichKeyGroup = { fg = colors.palette.dark_yellow },
            WhichKeySeperator = { fg = colors.palette.green },
        }
    end,
}

return highlight_map_extension
