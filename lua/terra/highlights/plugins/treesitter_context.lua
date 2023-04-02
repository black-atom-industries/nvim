---@type TerraHighlightMapExtension
local highlight_map_extension = {
    setup = function(highlights)
        ---@type TerraHighlightGroup
        highlights.plugins.TreesitterContext = {
            TreesitterContext = {
                link = "StatusLine",
            },
            TreesitterContextLineNumber = {
                link = "StatusLine",
            },
        }
    end,
}

return highlight_map_extension
