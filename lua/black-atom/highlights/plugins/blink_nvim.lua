---@doc https://github.com/saghen/blink.cmp
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors, config)
        local bg = require("black-atom.lib.bg")
        local ui = colors.ui
        local syn = colors.syntax

        ---@type BlackAtom.Highlights
        local highlights_map = {
            BlinkCmpMenu = { bg = bg.float(config, colors) },
        }

        local lsp_kind_icons_color = {
            -- Types
            Class = syn.type.default,
            Interface = syn.type.default,
            Struct = syn.type.default,
            TypeParameter = syn.type.builtin,
            Enum = syn.type.default,

            -- Values
            Constant = syn.constant.default,
            EnumMember = syn.constant.builtin,
            Field = syn.variable.member,
            Property = syn.property.default,
            Variable = syn.variable.default,
            Value = syn.constant.default,

            -- Functions
            Constructor = syn.constructor.default,
            Function = syn.func.default,
            Method = syn.func.method,

            -- Keywords & Operators
            Keyword = syn.keyword.default,
            Operator = syn.operator.default,

            -- Modules
            Module = syn.module.default,

            -- Other
            Color = syn.attribute.default,
            File = syn.module.default,
            Folder = syn.module.default,
            Reference = syn.variable.default,
            Event = syn.attribute.builtin,
            Snippet = ui.fg.accent,
            Text = ui.fg.subtle,
            Default = ui.fg.accent,
            Unit = syn.constant.builtin,
        }

        for kind, color in pairs(lsp_kind_icons_color) do
            highlights_map["BlinkCmpKind" .. kind] = { fg = color }
        end

        return highlights_map
    end,
}
