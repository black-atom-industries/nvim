---@doc https://github.com/mikavilpas/yazi.nvim
---@type BlackAtom.HighlightsSpec
return {
    enabled = false,
    map = function(colors, config)
        local bg_float = require("black-atom.lib").bg.float(config, colors)

        ---@type BlackAtom.Highlights
        return {
            YaziFloat = { bg = bg_float },
        }
    end,
}
