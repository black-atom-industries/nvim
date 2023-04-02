---@type TerraHighlightsSpec
local highlight_map_extension = {
    map = function(colors, config)
        ---@type TerraHighlights
        local highlights_map = {
            NeoTreeNormal = {
                fg = colors.semantics.fg.primary.main,
                bg = config.transparent and colors.none or colors.semantics.bg.primary.dark,
            },
            NeoTreeNormalNC = {
                fg = colors.semantics.fg.primary.main,
                bg = config.transparent and colors.none or colors.semantics.bg.primary.dark,
            },
            NeoTreeCursorLine = {
                bg = colors.semantics.bg.primary.main,
            },
            NeoTreeEndOfBuffer = {
                fg = config.ending_tildes and colors.semantics.fg.secondary.dark or colors.semantics.bg.primary.dark,
                bg = config.transparent and colors.none or colors.semantics.bg.primary.dark,
            },
            NeoTreeTabActive = {
                fg = colors.semantics.fg.primary.main,
                bg = config.transparent and colors.none or colors.semantics.bg.primary.main,
            },
            NeoTreeTabSeparatorActive = {
                link = "NeoTreeTabActive",
            },
            NeoTreeTabInactive = {
                fg = colors.semantics.fg.neutral,
                bg = config.transparent and colors.none or colors.semantics.bg.primary.dark,
            },
            NeoTreeTabSeparatorInactive = {
                link = "NeoTreeTabInactive",
            },
        }

        return highlights_map
    end,
}

return highlight_map_extension
