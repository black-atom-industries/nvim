---@type TerraHighlightMapExtension
local highlight_map_extension = {
    setup = function(highlights, colors)
        ---@type TerraHighlightGroup
        highlights.syntax.typescript = {
            -- Native Regex Highlights
            typescriptArrowFuncDef = { fg = colors.palette.dark_yellow },
            typescriptVariable = { fg = colors.palette.red },

            -- TreeSitter Highlights
            -- If you want to add TreeSitter highlights, you can do so here.
        }
    end,
}

return highlight_map_extension
