---@doc https://github.com/saghen/blink.cmp
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors, config)
        local bg = require("black-atom.lib.bg")
        local lsp_kinds = require("black-atom.lib.lsp_kinds")
        local ui = colors.ui
        local syntax = colors.syntax

        ---@type BlackAtom.Highlights
        local highlights_map = {
            BlinkCmpMenu = { bg = bg.float(config, colors) },
        }

        for kind, color in pairs(lsp_kinds.colors(syntax, ui)) do
            highlights_map["BlinkCmpKind" .. kind] = { fg = color }
        end

        return highlights_map
    end,
}
