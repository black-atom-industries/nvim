---@doc https://github.com/mikavilpas/yazi.nvim
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors, config)
        local bg_dark = require("black-atom.lib").bg.dark(config, colors)

        ---@type BlackAtom.Highlights
        return {
            YaziFloat = { bg = bg_dark },
        }
    end,
}
