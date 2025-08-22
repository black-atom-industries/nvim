---@doc https://github.com/username/plugin-name
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors)
        local ui = colors.ui

        ---@type BlackAtom.Highlights
        return {
            DartCurrent = { fg = ui.fg.default, bg = ui.bg.default },
            DartCurrentLabel = { fg = ui.fg.accent, bg = ui.bg.default },
            DartCurrentModified = { fg = ui.fg.warn, bg = ui.bg.default },
            DartCurrentLabelModified = { fg = ui.fg.warn, bg = ui.bg.default },
            DartFill = { fg = ui.fg.default, bg = ui.bg.default },
            DartPickLabel = { fg = ui.fg.default, bg = ui.bg.default },
        }
    end,
}
