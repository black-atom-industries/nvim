---@doc https://github.com/folke/edgy.nvim
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors, config)
        local lib = require("black-atom.lib")
        local fg = colors.ui.fg
        local bg_sidebar = lib.bg.dark(config, colors)

        ---@type BlackAtom.Highlights
        return {
            EdgyNormal = { fg = fg.primary.main, bg = bg_sidebar },
            EdgyTitle = { link = "EdgyNormal" },
            EdgyIcon = { link = "EdgyNormal" },
            EdgyIconActive = { fg = fg.active, bg = bg_sidebar },
            EdgyWinBar = { fg = fg.active, bg = bg_sidebar },
        }
    end,
}
