# Recipes

User-facing wiring snippets for cases that don't fit cleanly into the theme
itself — typically because they require reaching into a plugin's config, or
because the theme's load order conflicts with a plugin's setup.

The theme's job is to define highlight groups. These recipes show the
plugin-side glue needed when a plugin doesn't pick up the theme's groups
automatically.

- [Color `mini.completion` kind labels](#color-minicompletion-kind-labels)

## Color `mini.completion` kind labels

Black Atom defines the native `LspKind{Class, Function, Variable, ...}` highlight
groups (one per LSP `CompletionItemKind`) in `lsp.lua`. `mini.completion` doesn't
pick these up automatically — it defaults to `mini.icons` for kind highlighting.
Override that with a `process_items` callback that pre-sets `kind_hlgroup` before
delegating to `default_process_items` (which preserves any value already on the
item).

Two gotchas:

1. `item.kind` from the LSP response is a **numeric** enum value (1–25). Resolve
   it with `vim.lsp.protocol.CompletionItemKind` to get the canonical name
   (`Class`, `Function`, ...).
2. If you shorten the kind names for a more compact popup (e.g. 4-char labels),
   you **must** capture the original names **before** the remap, otherwise
   the highlight group lookup produces names that don't exist in the theme
   (e.g. `LspKindCLAS` instead of `LspKindClass`).

```lua
local MiniCompletion = require("mini.completion")

-- Capture BEFORE any remap of vim.lsp.protocol.CompletionItemKind, so the
-- canonical names (Class, Function, ...) are preserved for highlight lookup.
local lsp_kind_names = vim.deepcopy(vim.lsp.protocol.CompletionItemKind)

local process_items = function(items, base)
    for _, item in ipairs(items) do
        local kind_name = lsp_kind_names[item.kind]
        if kind_name then
            item.kind_hlgroup = "LspKind" .. kind_name
        end
    end
    return MiniCompletion.default_process_items(items, base, {
        kind_priority = { Text = -1, Snippet = 99 },
    })
end

require("mini.completion").setup({
    lsp_completion = { process_items = process_items },
})
```

If you want shorter popup labels, you can remap the global table **after** the
capture above — the captured `lsp_kind_names` is unaffected:

```lua
local item_kinds = vim.lsp.protocol.CompletionItemKind
for i, name in ipairs(item_kinds) do
    item_kinds[i] = name:sub(1, 4):upper()
end
```

`mini.completion` reads from `vim.lsp.protocol.CompletionItemKind` when building
the popup, so this gives you 4-char display labels (`CLAS`, `FUNC`, ...) while
the highlight groups still resolve to the canonical names defined by the theme.
