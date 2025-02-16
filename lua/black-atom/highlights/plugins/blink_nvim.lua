---@doc https://github.com/saghen/blink.cmp
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors, config)
        local bg = require("black-atom.lib.bg")
        local ui = colors.ui
        local syntax = colors.syntax

        ---@type BlackAtom.Highlights
        local highlights_map = {
            BlinkCmpMenu = { bg = bg.float(config, colors) },
        }

        local lsp_kind_icons_color = {
            -- Types
            Class = syntax.type.default,
            Interface = syntax.type.default,
            Struct = syntax.type.default,
            TypeParameter = syntax.type.builtin,
            Enum = syntax.type.default,

            -- Values
            Constant = syntax.constant.default,
            EnumMember = syntax.constant.builtin,
            Field = syntax.variable.member,
            Property = syntax.property.default,
            Variable = syntax.variable.default,
            Value = syntax.constant.default,

            -- Functions
            Constructor = syntax.constructor.default,
            Function = syntax.func.default,
            Method = syntax.func.method,

            -- Keywords & Operators
            Keyword = syntax.keyword.default,
            Operator = syntax.operator.default,

            -- Modules
            Module = syntax.module.default,

            -- Other
            Color = syntax.attribute.default,
            File = syntax.module.default,
            Folder = syntax.module.default,
            Reference = syntax.variable.default,
            Event = syntax.attribute.builtin,
            Snippet = ui.fg.accent,
            Text = ui.fg.subtle,
            Default = ui.fg.accent,
            Unit = syntax.constant.builtin,
        }

        for kind, color in pairs(lsp_kind_icons_color) do
            highlights_map["BlinkCmpKind" .. kind] = { fg = color }
        end

        return highlights_map
    end,
}
