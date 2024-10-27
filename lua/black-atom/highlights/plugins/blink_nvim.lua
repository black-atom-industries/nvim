---@doc https://github.com/saghen/blink.cmp
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors, config)
        local bg = require("black-atom.lib.bg")
        local fg = colors.ui.fg
        local p = colors.palette

        ---@type BlackAtom.Highlights
        local highlights_map = {
            BlinkCmpMenu = { bg = bg.dark(config, colors) },
            BlinkCmpLabel = { fg = fg.primary.main, bg.main(config, colors) },
        }

        local lsp_kind_icons_color = {
            Class = p.yellow,
            Color = p.green,
            Constant = p.dark_yellow,
            Constructor = p.blue,
            Default = p.magenta,
            Enum = p.magenta,
            EnumMember = p.yellow,
            Event = p.yellow,
            Field = p.magenta,
            File = p.blue,
            Folder = p.dark_yellow,
            Function = p.blue,
            Interface = p.cyan,
            Keyword = p.magenta,
            Method = p.yellow,
            Module = p.dark_yellow,
            Operator = p.magenta,
            Property = p.cyan,
            Reference = p.dark_yellow,
            Snippet = p.red,
            Struct = p.magenta,
            Text = p.light_gray,
            TypeParameter = p.red,
            Unit = p.green,
            Value = p.dark_yellow,
            Variable = p.magenta,
        }

        for kind, color in pairs(lsp_kind_icons_color) do
            highlights_map["BlinkCmpKind" .. kind] = { fg = color }
        end

        return highlights_map
    end,
}
