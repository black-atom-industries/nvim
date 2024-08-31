---Repository: https://github.com/RRethy/vim-illuminate
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors)
        ---@type BlackAtom.HighlightDefinition
        local match_style = { bg = colors.ui.bg.match.active }

        ---@type BlackAtom.Highlights
        return {
            IlluminatedWordRead = match_style,
            IlluminatedWordText = match_style,
            IlluminatedWordWrite = match_style,
        }
    end,
}
