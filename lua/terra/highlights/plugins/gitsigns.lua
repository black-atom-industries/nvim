---@type TerraHighlightMapExtension
local highlight_map_extension = {
    setup = function(highlights, colors)
        ---@type TerraHighlightGroup
        highlights.plugins.gitsigns = {
            GitSignsAdd = { fg = colors.palette.green },
            GitSignsAddLn = { fg = colors.palette.green },
            GitSignsAddNr = { fg = colors.palette.green },
            GitSignsChange = { fg = colors.palette.blue },
            GitSignsChangeLn = { fg = colors.palette.blue },
            GitSignsChangeNr = { fg = colors.palette.blue },
            GitSignsDelete = { fg = colors.palette.red },
            GitSignsDeleteLn = { fg = colors.palette.red },
            GitSignsDeleteNr = { fg = colors.palette.red },
        }
    end,
}

return highlight_map_extension
