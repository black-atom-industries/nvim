---@doc https://github.com/nvim-tree/nvim-tree.lua
---Tip: Use `:NvimTreeHiTest`to debug highlight groups
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors, config)
        local bg = require("black-atom.lib").bg
        local bg_sidebar = bg.sidebar(config, colors)
        local bg_main = bg.main(config, colors)

        local ui = colors.ui

        ---@type BlackAtom.Highlights
        return {
            NvimTreeNormal = { fg = ui.fg.primary.main, bg = bg_sidebar },
            NvimTreeNormalNC = { fg = ui.fg.primary.main, bg = bg_sidebar },
            NvimTreeEndOfBuffer = { fg = bg_sidebar },
            NvimTreeCursorLine = { bg = bg_main },
        }
    end,
}
