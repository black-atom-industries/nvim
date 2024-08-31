---@doc https://github.com/airblade/vim-gitgutter
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors)
        local diff = colors.ui.fg.diff

        ---@type BlackAtom.Highlights
        return {
            GitGutterAdd = { fg = diff.add },
            GitGutterChange = { fg = diff.change },
            GitGutterDelete = { fg = diff.delete },
        }
    end,
}
