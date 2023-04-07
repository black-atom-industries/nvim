---@type TerraHighlightsSpec
local highlight_map_extension = {
    map = function(colors)
        ---@type TerraHighlights
        local highlights_map = {
            CmpItemAbbr = { fg = colors.semantics.fg.primary.main },
            CmpItemAbbrDeprecated = {
                fg = colors.palette.light_gray,
                strikethrough = true,
            },
            CmpItemAbbrMatch = { fg = colors.palette.cyan },
            CmpItemAbbrMatchFuzzy = { fg = colors.palette.cyan, underline = true },
            CmpItemMenu = { fg = colors.palette.light_gray },
            CmpItemKind = { fg = colors.palette.magenta },
        }

        local lsp_kind_icons_color = {
            Class = colors.palette.yellow,
            Color = colors.palette.green,
            Constant = colors.palette.dark_yellow,
            Constructor = colors.palette.blue,
            Default = colors.palette.magenta,
            Enum = colors.palette.magenta,
            EnumMember = colors.palette.yellow,
            Event = colors.palette.yellow,
            Field = colors.palette.magenta,
            File = colors.palette.blue,
            Folder = colors.palette.dark_yellow,
            Function = colors.palette.blue,
            Interface = colors.palette.cyan,
            Keyword = colors.palette.magenta,
            Method = colors.palette.yellow,
            Module = colors.palette.dark_yellow,
            Operator = colors.palette.magenta,
            Property = colors.palette.cyan,
            Reference = colors.palette.dark_yellow,
            Snippet = colors.palette.red,
            Struct = colors.palette.magenta,
            Text = colors.palette.light_gray,
            TypeParameter = colors.palette.red,
            Unit = colors.palette.green,
            Value = colors.palette.dark_yellow,
            Variable = colors.palette.magenta,
        }

        for kind, color in pairs(lsp_kind_icons_color) do
            highlights_map["CmpItemKind" .. kind] = { fg = color }
        end

        return highlights_map
    end,
}

return highlight_map_extension
