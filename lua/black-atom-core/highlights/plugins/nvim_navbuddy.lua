-- Repository: https://github.com/SmiteshP/nvim-navbuddy

---@type BlackAtomCore.HighlightsSpec
local highlight_map_spec = {
    enabled = true,

    map = function(colors)
        local match_style = { bg = colors.semantics.bg.match.active }

        local bg = colors.semantics.bg
        local bg_dark = bg.primary.dark

        local fg = colors.semantics.fg
        local fg_active = fg.active

        local palette = colors.palette

        ---@type BlackAtomCore.Highlights
        local highlights_map = {
            NavbuddyName = { fg = fg_active, bg = bg_dark }, -- highlight for name in source buffer
            NavbuddyScope = match_style, -- highlight for scope of context in source buffer
            NavbuddyFloatBorder = { fg = palette.cyan }, -- Floatborder highlight
        }

        local lsp_kind_icons = {
            Array = palette.red,
            Boolean = palette.blue,
            Class = palette.yellow,
            Constant = palette.dark_yellow,
            Constructor = palette.blue,
            Enum = palette.magenta,
            EnumMember = palette.yellow,
            Event = palette.yellow,
            Field = palette.magenta,
            File = palette.gray,
            Function = palette.yellow,
            Interface = palette.cyan,
            Key = palette.magenta,
            Method = palette.yellow,
            Module = palette.dark_yellow,
            Namespace = palette.dark_blue,
            Null = palette.gray,
            Number = palette.light_gray,
            Object = palette.blue,
            Operator = palette.magenta,
            Package = palette.red,
            Property = palette.blue,
            String = palette.green,
            Struct = palette.cyan,
            TypeParameter = palette.dark_cyan,
            Variable = palette.magenta,
        }

        for kind, color in pairs(lsp_kind_icons) do
            highlights_map["Navbuddy" .. kind] = { fg = color }
        end

        return highlights_map
    end,
}

return highlight_map_spec
