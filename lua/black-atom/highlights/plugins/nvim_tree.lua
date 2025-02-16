---@doc https://github.com/nvim-tree/nvim-tree.lua
---Tip: Use `:NvimTreeHiTest`to debug highlight groups
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors, config)
        local fg = colors.ui.fg
        local bg = require("black-atom.lib").bg
        local bg_default = bg.default(config, colors)
        local bg_panel = bg.panel(config, colors)

        ---@type BlackAtom.Highlights
        return {
            NvimTreeNormal = { fg = fg.default, bg = bg_panel },
            NvimTreeNormalNC = { fg = fg.default, bg = bg_panel },
            NvimTreeEndOfBuffer = { fg = bg_panel },
            NvimTreeCursorLine = { bg = bg_default },
        }
    end,
}
