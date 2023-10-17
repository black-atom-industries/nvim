---@type TerraHighlightsSpec
local highlight_map_extension = {
    map = function(colors)
        ---@type TerraHighlights
        local highlights_map = {
            TelescopeNormal = {
                bg = colors.semantics.bg.primary.dark,
            },
            TelescopeBorder = {
                fg = colors.semantics.bg.primary.dark,
                bg = colors.semantics.bg.primary.dark,
            },
            TelescopeTitle = {
                fg = colors.semantics.fg.active,
            },
            TelescopePromptPrefix = {
                fg = colors.semantics.fg.active,
            },
            TelescopeMatching = {
                fg = colors.semantics.fg.active,
            },
            TelescopeSelection = {
                fg = colors.semantics.fg.active,
                bg = colors.semantics.bg.primary.main,
            },
        }

        return highlights_map
    end,
}

return highlight_map_extension
