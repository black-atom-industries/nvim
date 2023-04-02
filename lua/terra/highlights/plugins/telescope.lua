---@type TerraHighlightMapExtension
local highlight_map_extension = {
    setup = function(highlights, colors)
        ---@type TerraHighlightGroup
        highlights.plugins.telescope = {
            TelescopeNormal = { bg = colors.semantics.bg.primary.dark },
            TelescopeBorder = {
                fg = colors.semantics.fg.neutral,
                bg = colors.semantics.bg.primary.dark,
            },
            TelescopeTitle = { fg = colors.semantics.fg.active },
            TelescopePromptPrefix = { fg = colors.semantics.fg.active },
            TelescopeMatching = { fg = colors.semantics.fg.active },
            TelescopeSelection = {
                fg = colors.semantics.fg.active,
                bg = colors.semantics.bg.primary.main,
            },
        }
    end,
}

return highlight_map_extension
