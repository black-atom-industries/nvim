---@doc https://github.com/echasnovski/mini.nvim
---@type BlackAtom.HighlightsSpec
return {
    map = function(colors, config)
        local bg_default = require("black-atom.lib").bg.default(config, colors)
        local bg_panel = require("black-atom.lib").bg.panel(config, colors)

        ---@type BlackAtom.Highlights
        return {
            -- mini.pick
            MiniPickPrompt = { bg = bg_panel },
            MiniPickMatchCurrent = { bg = bg_default },
        }
    end,
}
