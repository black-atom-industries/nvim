local cond_highlight = require("terra.actions").highlights.cond_highlight

---@type TerraHighlightsSpec
local highlight_map_extension = {
    map = function(colors, config)
        ---@type TerraHighlights
        local highlights_map = {
            NeoTreeNormal = {
                fg = colors.semantics.fg.primary.main,
                bg = cond_highlight(colors.semantics.bg.primary.dark, {
                    [config.transparent] = colors.none,
                }),
            },
            NeoTreeNormalNC = {
                fg = colors.semantics.fg.primary.main,
                bg = cond_highlight(colors.semantics.bg.primary.dark, {
                    [config.transparent] = colors.none,
                }),
            },
            NeoTreeCursorLine = {
                bg = colors.semantics.bg.primary.main,
            },
            NeoTreeEndOfBuffer = {
                fg = cond_highlight(colors.semantics.bg.primary.dark, {
                    [config.ending_tildes] = colors.semantics.fg.secondary.dark,
                }),
                bg = cond_highlight(colors.semantics.bg.primary.dark, {
                    [config.transparent] = colors.none,
                }),
            },
            NeoTreeTabActive = {
                fg = colors.semantics.fg.primary.main,
                bg = cond_highlight(colors.semantics.bg.primary.main, {
                    [config.transparent] = colors.none,
                }),
            },
            NeoTreeTabSeparatorActive = {
                link = "NeoTreeTabActive",
            },
            NeoTreeTabInactive = {
                fg = colors.semantics.fg.neutral,
                bg = cond_highlight(colors.semantics.bg.primary.dark, {
                    [config.transparent] = colors.none,
                }),
            },
            NeoTreeTabSeparatorInactive = {
                link = "NeoTreeTabInactive",
            },
        }

        return highlights_map
    end,
}

return highlight_map_extension
