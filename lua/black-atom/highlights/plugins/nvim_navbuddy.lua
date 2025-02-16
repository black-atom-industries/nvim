---@doc https://github.com/SmiteshP/nvim-navbuddy
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors)
        local ui = colors.ui
        local syntax = colors.syntax

        ---@type BlackAtom.Highlights
        local highlights_map = {
            NavbuddyName = { fg = ui.fg.accent, bg = ui.bg.float },
            NavbuddyScope = { bg = ui.bg.selection },
            NavbuddyFloatBorder = { fg = ui.fg.accent },
        }

        local lsp_kind_icons = {
            -- Types
            Class = syntax.type.default,
            Interface = syntax.type.default,
            Struct = syntax.type.default,
            TypeParameter = syntax.type.builtin,
            Enum = syntax.type.default,

            -- Values
            Array = syntax.type.default,
            Boolean = syntax.boolean.default,
            Constant = syntax.constant.default,
            Number = syntax.number.default,
            String = syntax.string.default,
            Null = syntax.constant.builtin,
            Object = syntax.type.default,

            -- Variables & Properties
            Field = syntax.variable.member,
            Property = syntax.property.default,
            Variable = syntax.variable.default,
            Key = syntax.property.default,

            -- Functions
            Constructor = syntax.constructor.default,
            Function = syntax.func.default,
            Method = syntax.func.method,

            -- Keywords & Operators
            Operator = syntax.operator.default,

            -- Modules
            Module = syntax.module.default,
            Namespace = syntax.module.default,
            Package = syntax.module.default,

            -- Events
            Event = syntax.attribute.builtin,
        }

        for kind, color in pairs(lsp_kind_icons) do
            highlights_map["Navbuddy" .. kind] = { fg = color }
        end

        return highlights_map
    end,
}
