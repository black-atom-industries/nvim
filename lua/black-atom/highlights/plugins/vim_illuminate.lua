---Repository: https://github.com/RRethy/vim-illuminate
---@type BlackAtom.HighlightsSpec
local highlight_map_spec = {
    enabled = true,

    map = function(colors)
        ---@type BlackAtom.HighlightDefinition
        local match_style = { bg = colors.ui.bg.match.active }

        ---@type BlackAtom.Highlights
        local highlights_map = {
            IlluminatedWordRead = match_style,
            IlluminatedWordText = match_style,
            IlluminatedWordWrite = match_style,
        }

        return highlights_map
    end,
}

return highlight_map_spec
