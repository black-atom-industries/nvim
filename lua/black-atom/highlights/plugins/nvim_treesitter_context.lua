---@doc https://github.com/nvim-treesitter/nvim-treesitter-context
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors, config)
        local fg = colors.ui.fg
        local bg_panel = require("black-atom.lib").bg.panel(config, colors)

        ---@type BlackAtom.Highlights
        return {
            TreesitterContext = { bg = bg_panel },
            TreesitterContextLineNumber = { fg = fg.subtle, bg = bg_panel },
        }
    end,
}
