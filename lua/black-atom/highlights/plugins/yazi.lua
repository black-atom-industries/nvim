---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors, config)
        local lib = require("black-atom.lib")
        local bg_float = lib.bg.float(config, colors)

        ---@type BlackAtom.Highlights
        return {
            YaziFloat = { bg = bg_float },
        }
    end,
}
