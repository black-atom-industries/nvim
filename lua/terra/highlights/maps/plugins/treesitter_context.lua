---@type TerraHighlightsSpec
local highlight_map_extension = {
    map = function()
        ---@type TerraHighlights
        local highlights_map = {
            TreesitterContext = {
                link = "StatusLine",
            },
            TreesitterContextLineNumber = {
                link = "StatusLine",
            },
        }

        return highlights_map
    end,
}

return highlight_map_extension
