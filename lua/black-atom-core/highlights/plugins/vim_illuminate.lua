---Repository: https://github.com/RRethy/vim-illuminate
---@type BlackAtomCore.HighlightsSpec
local highlight_map_spec = {
    enabled = true,

    map = function(colors)
        ---@type BlackAtomCore.HighlightDefinition
        local match_style = { bg = colors.semantics.bg.match.passive, underline = true }

        ---@type BlackAtomCore.Highlights
        local highlights_map = {
            IlluminatedWordRead = match_style,
            IlluminatedWordText = match_style,
            IlluminatedWordWrite = match_style,
        }

        return highlights_map
    end,
}

return highlight_map_spec
