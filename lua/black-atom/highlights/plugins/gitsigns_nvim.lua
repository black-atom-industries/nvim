---@doc https://github.com/lewis6991/gitsigns.nvim
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors)
        local p = colors.palette

        ---@type BlackAtom.Highlights
        return {
            GitSignsAdd = { fg = p.green },
            GitSignsAddLn = { fg = p.green },
            GitSignsAddNr = { fg = p.green },
            GitSignsChange = { fg = p.blue },
            GitSignsChangeLn = { fg = p.blue },
            GitSignsChangeNr = { fg = p.blue },
            GitSignsDelete = { fg = p.red },
            GitSignsDeleteLn = { fg = p.red },
            GitSignsDeleteNr = { fg = p.red },
        }
    end,
}
