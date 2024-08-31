---@doc https://github.com/folke/which-key.nvim
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors)
        local p = colors.palette
        local s = colors.syntax

        ---@type BlackAtom.Highlights
        return {
            WhichKey = { fg = p.cyan },
            WhichKeyIcon = { fg = s.markup.link },
            WhichKeyDesc = { fg = p.blue },
            WhichKeyGroup = { fg = p.dark_yellow },
            WhichKeySeperator = { fg = p.green },
        }
    end,
}
