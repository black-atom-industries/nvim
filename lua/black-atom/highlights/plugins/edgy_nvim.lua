---@doc https://github.com/folke/edgy.nvim
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors, config)
        local bg_panel = require("black-atom.lib").bg.panel(config, colors)
        local fg = colors.ui.fg

        ---@type BlackAtom.Highlights
        return {
            EdgyNormal = { fg = fg.default, bg = bg_panel },
            EdgyTitle = { link = "EdgyNormal" },
            EdgyIcon = { link = "EdgyNormal" },
            EdgyIconActive = { fg = fg.accent, bg = bg_panel },
            EdgyWinBar = { fg = fg.accent, bg = bg_panel },
        }
    end,
}
