---@doc https://github.com/folke/trouble.nvim
---@type BlackAtom.HighlightsSpec
return {
    map = function(colors)
        local ui = colors.ui

        ---@type BlackAtom.Highlights
        local highlights_map = {
            TroubleNormal = { bg = ui.bg.default },
            TroublePreview = { bg = ui.bg.active },
        }

        return highlights_map
    end,
}
