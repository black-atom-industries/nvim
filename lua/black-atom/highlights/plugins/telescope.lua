---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors)
        ---@type BlackAtom.Highlights
        return {
            TelescopeNormal = {
                bg = colors.ui.bg.primary.dark,
            },
            TelescopeBorder = {
                fg = colors.ui.bg.primary.dark,
                bg = colors.ui.bg.primary.dark,
            },
            TelescopeTitle = {
                fg = colors.ui.fg.active,
            },
            TelescopePromptPrefix = {
                fg = colors.ui.fg.active,
            },
            TelescopeMatching = {
                fg = colors.ui.fg.active,
            },
            TelescopeSelection = {
                fg = colors.ui.fg.active,
                bg = colors.ui.bg.primary.main,
            },
        }
    end,
}
