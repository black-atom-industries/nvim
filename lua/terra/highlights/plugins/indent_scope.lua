---@type TerraHighlightMapExtension
local highlight_map_extension = {
    setup = function(highlights, colors)
        ---@type TerraHighlightGroup
        highlights.plugins.indent_scope = {
            MiniIndentscopeSymbol = {
                fg = colors.semantics.fg.active,
            },
        }
    end,
}

return highlight_map_extension
