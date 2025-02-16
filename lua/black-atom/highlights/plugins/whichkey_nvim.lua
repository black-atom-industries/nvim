---@doc https://github.com/folke/which-key.nvim
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors)
        local pal = colors.palette
        local syn = colors.syntax

        ---@type BlackAtom.Highlights
        return {
            WhichKey = { fg = pal.cyan },
            WhichKeyIcon = { fg = syn.markup.link },
            WhichKeyDesc = { fg = pal.blue },
            WhichKeyGroup = { fg = pal.dark_yellow },
            WhichKeySeperator = { fg = pal.green },
        }
    end,
}
