---@doc https://github.com/nvim-treesitter/nvim-treesitter-context
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors, config)
        local bg_sidebar = require("black-atom.lib").bg.sidebar(config, colors)

        local ui = colors.ui

        ---@type BlackAtom.Highlights
        return {
            TreesitterContext = { bg = bg_sidebar },
            TreesitterContextLineNumber = { fg = ui.fg.neutral, bg = bg_sidebar },
        }
    end,
}
