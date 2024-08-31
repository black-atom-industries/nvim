---@doc https://github.com/RRethy/vim-illuminate
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function()
        ---@type BlackAtom.HighlightDefinition
        local match_style = { underline = true }

        ---@type BlackAtom.Highlights
        return {
            IlluminatedWordRead = match_style,
            IlluminatedWordText = match_style,
            IlluminatedWordWrite = match_style,
        }
    end,
}
