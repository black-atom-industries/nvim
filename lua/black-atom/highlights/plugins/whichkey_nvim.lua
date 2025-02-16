---@doc https://github.com/folke/which-key.nvim
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors)
        local palette = colors.palette
        local syntax = colors.syntax

        ---@type BlackAtom.Highlights
        return {
            WhichKey = { fg = palette.cyan },
            WhichKeyIcon = { fg = syntax.markup.link },
            WhichKeyDesc = { fg = palette.blue },
            WhichKeyGroup = { fg = palette.dark_yellow },
            WhichKeySeperator = { fg = palette.green },
        }
    end,
}
