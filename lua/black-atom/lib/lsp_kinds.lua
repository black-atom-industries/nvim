---@class BlackAtom.Lib.LspKinds
local M = {}

---Get a mapping of LSP CompletionItemKind names to color values.
---Shared between lsp.lua, nvim_cmp.lua, blink_nvim.lua, and any other
---consumer that needs kind-based highlighting. Returned as a fresh table
---each call so callers can mutate freely.
---
---@param syntax BlackAtom.Theme.Syntax
---@param ui BlackAtom.Theme.UI
---@return table<string, string>
function M.colors(syntax, ui)
    return {
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
        Unit = syntax.constant.builtin,
    }
end

return M
