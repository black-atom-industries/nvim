---@doc https://github.com/SmiteshP/nvim-navbuddy
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors)
        local ui = colors.ui
        local syn = colors.syntax

        ---@type BlackAtom.Highlights
        local highlights_map = {
            NavbuddyName = { fg = ui.fg.accent, bg = ui.bg.float },
            NavbuddyScope = { bg = ui.bg.selection },
            NavbuddyFloatBorder = { fg = ui.fg.accent },
        }

        local lsp_kind_icons = {
            -- Types
            Class = syn.type.default,
            Interface = syn.type.default,
            Struct = syn.type.default,
            TypeParameter = syn.type.builtin,
            Enum = syn.type.default,

            -- Values
            Array = syn.type.default,
            Boolean = syn.boolean.default,
            Constant = syn.constant.default,
            Number = syn.number.default,
            String = syn.string.default,
            Null = syn.constant.builtin,
            Object = syn.type.default,

            -- Variables & Properties
            Field = syn.variable.member,
            Property = syn.property.default,
            Variable = syn.variable.default,
            Key = syn.property.default,

            -- Functions
            Constructor = syn.constructor.default,
            Function = syn.func.default,
            Method = syn.func.method,

            -- Keywords & Operators
            Operator = syn.operator.default,

            -- Modules
            Module = syn.module.default,
            Namespace = syn.module.default,
            Package = syn.module.default,

            -- Events
            Event = syn.attribute.builtin,
        }

        for kind, color in pairs(lsp_kind_icons) do
            highlights_map["Navbuddy" .. kind] = { fg = color }
        end

        return highlights_map
    end,
}
