---@type TerraHighlightMapExtension
local highlight_map_extension = {
    setup = function(highlights, colors)
        ---@type TerraHighlightGroup
        highlights.plugins.gitgutter = {
            GitGutterAdd = { fg = colors.palette.green },
            GitGutterChange = { fg = colors.palette.blue },
            GitGutterDelete = { fg = colors.palette.red },
        }
    end,
}

return highlight_map_extension
