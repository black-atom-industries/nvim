---@doc https://github.com/hrsh7th/nvim-cmp
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors, config)
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

        local lsp_kind_icons_color = {
            -- Types
            Class = s.type.default,
            Interface = s.type.default,
            Struct = s.type.default,
            TypeParameter = s.type.builtin,
            Enum = s.type.default,

            -- Values
            Constant = s.constant.default,
            EnumMember = s.constant.builtin,
            Field = s.variable.member,
            Property = s.property.default,
            Variable = s.variable.default,
            Value = s.constant.default,

            -- Functions
            Constructor = s.constructor.default,
            Function = s.func.default,
            Method = s.func.method,

            -- Keywords & Operators
            Keyword = s.keyword.default,
            Operator = s.operator.default,

            -- Modules
            Module = s.module.default,

            -- Other
            Color = s.attribute.default,
            File = s.module.default,
            Folder = s.module.default,
            Reference = s.variable.default,
            Event = s.attribute.builtin,
            Snippet = ui.fg.accent,
            Text = ui.fg.subtle,
            Default = ui.fg.accent,
            Unit = s.constant.builtin,
        }

        for kind, color in pairs(lsp_kind_icons_color) do
            if config.styles.cmp_kind_color_mode == "fg" then
                highlights_map["CmpItemKind" .. kind] = { fg = color }
            else
                highlights_map["CmpItemKind" .. kind] = { fg = ui.fg.contrast, bg = color }
            end
        end

        return highlights_map
    end,
}
