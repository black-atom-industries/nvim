---@doc https://github.com/hrsh7th/nvim-cmp
---@type BlackAtom.HighlightsSpec
return {
    enabled = false,
    map = function(colors, config)
        local lsp_kinds = require("black-atom.lib.lsp_kinds")
        local ui = colors.ui
        local s = colors.syntax

        ---@type BlackAtom.Highlights
        local highlights_map = {
            CmpItemAbbr = { fg = ui.fg.default },
            CmpItemAbbrDeprecated = { fg = ui.fg.disabled, strikethrough = true },
            CmpItemAbbrMatch = { fg = ui.fg.accent },
            CmpItemAbbrMatchFuzzy = { fg = ui.fg.accent, underline = true },
            CmpItemMenu = { fg = ui.fg.default },
            CmpItemKind = { fg = ui.fg.accent },
        }

        for kind, color in pairs(lsp_kinds.colors(s, ui)) do
            if config.styles.cmp_kind_color_mode == "fg" then
                highlights_map["CmpItemKind" .. kind] = { fg = color }
            else
                highlights_map["CmpItemKind" .. kind] = { fg = ui.fg.contrast, bg = color }
            end
        end

        return highlights_map
    end,
}
