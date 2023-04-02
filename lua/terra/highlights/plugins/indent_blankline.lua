---@type TerraHighlightMapExtension
local highlight_map_extension = {
    setup = function(highlights, colors)
        ---@type TerraHighlightGroup
        highlights.plugins.indent_blankline = {
            IndentBlanklineChar = { fg = colors.semantics.fg.neutral },
            IndentBlanklineContextChar = { fg = colors.semantics.fg.active },
        }
    end,
}
return highlight_map_extension
