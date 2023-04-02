---@type TerraHighlightMapExtension
local highlight_map_extension = {
    setup = function(highlights, colors)
        ---@type TerraHighlightGroup
        highlights.syntax.markdown = {
            -- Native Regex Highlights
            markdownBlockquote = { fg = colors.palette.gray },
            markdownBold = { fg = colors.none, bold = true },
            markdownBoldDelimiter = { fg = colors.palette.gray },
            markdownCode = { fg = colors.palette.green },
            markdownCodeBlock = { fg = colors.palette.green },
            markdownCodeDelimiter = { fg = colors.palette.yellow },
            markdownH1 = { fg = colors.palette.red, bold = true },
            markdownH2 = { fg = colors.palette.magenta, bold = true },
            markdownH3 = { fg = colors.palette.dark_yellow, bold = true },
            markdownH4 = { fg = colors.palette.red, bold = true },
            markdownH5 = { fg = colors.palette.magenta, bold = true },
            markdownH6 = { fg = colors.palette.dark_yellow, bold = true },
            markdownHeadingDelimiter = { fg = colors.palette.gray },
            markdownHeadingRule = { fg = colors.palette.gray },
            markdownId = { fg = colors.palette.yellow },
            markdownIdDeclaration = { fg = colors.palette.red },
            markdownItalic = { fg = colors.none, italic = true },
            markdownItalicDelimiter = { fg = colors.palette.gray, italic = true },
            markdownLinkDelimiter = { fg = colors.palette.gray },
            markdownLinkText = { fg = colors.palette.red },
            markdownLinkTextDelimiter = { fg = colors.palette.gray },
            markdownListMarker = { fg = colors.palette.red },
            markdownOrderedListMarker = { fg = colors.palette.red },
            markdownRule = { fg = colors.palette.magenta },
            markdownUrl = { fg = colors.palette.blue, underline = true },
            markdownUrlDelimiter = { fg = colors.palette.gray },
            markdownUrlTitleDelimiter = { fg = colors.palette.green },

            -- TreeSitter Highlights
            -- If you want to add TreeSitter highlights, you can do so here.
        }
    end,
}

return highlight_map_extension
