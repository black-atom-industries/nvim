---@doc https://github.com/MeanderingProgrammer/render-markdown.nvim
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors, config)
        local bg_dark = require("black-atom.lib.bg").panel(config, colors)
        local ui = colors.ui
        local syntax = colors.syntax

        ---@type BlackAtom.Highlights
        return {
            -- Headings
            RenderMarkdownH1 = { fg = syntax.markup.heading.h1, bold = true },
            RenderMarkdownH2 = { fg = syntax.markup.heading.h2, bold = true },
            RenderMarkdownH3 = { fg = syntax.markup.heading.h3, bold = true },
            RenderMarkdownH4 = { fg = syntax.markup.heading.h4, bold = true },
            RenderMarkdownH5 = { fg = syntax.markup.heading.h5, bold = true },
            RenderMarkdownH6 = { fg = syntax.markup.heading.h6, bold = true },
            RenderMarkdownH1Bg = { bg = bg_dark },
            RenderMarkdownH2Bg = { bg = bg_dark },
            RenderMarkdownH3Bg = { bg = bg_dark },
            RenderMarkdownH4Bg = { bg = bg_dark },
            RenderMarkdownH5Bg = { bg = bg_dark },
            RenderMarkdownH6Bg = { bg = bg_dark },

            -- Code
            RenderMarkdownCode = { bg = bg_dark },
            RenderMarkdownCodeBorder = { link = "RenderMarkdownCode" },
            RenderMarkdownCodeInfo = { fg = ui.fg.subtle },
            RenderMarkdownCodeFallback = { link = "Normal" },
            RenderMarkdownCodeInline = { fg = syntax.markup.code.fg, bg = syntax.markup.code.bg },

            -- Quotes
            RenderMarkdownQuote = { fg = syntax.markup.quote },
            RenderMarkdownQuote1 = { link = "RenderMarkdownQuote" },
            RenderMarkdownQuote2 = { link = "RenderMarkdownQuote" },
            RenderMarkdownQuote3 = { link = "RenderMarkdownQuote" },
            RenderMarkdownQuote4 = { link = "RenderMarkdownQuote" },
            RenderMarkdownQuote5 = { link = "RenderMarkdownQuote" },
            RenderMarkdownQuote6 = { link = "RenderMarkdownQuote" },

            -- Inline highlights
            RenderMarkdownInlineHighlight = { link = "RenderMarkdownCodeInline" },

            -- Lists
            RenderMarkdownBullet = { fg = ui.fg.subtle },
            RenderMarkdownDash = { fg = ui.fg.subtle },

            -- Sign column
            RenderMarkdownSign = { link = "SignColumn" },

            -- Math
            RenderMarkdownMath = { fg = ui.fg.info },

            -- Indent guides
            RenderMarkdownIndent = { link = "NonText" },

            -- HTML
            RenderMarkdownHtmlComment = { fg = ui.fg.disabled },

            -- Links
            RenderMarkdownLink = { fg = syntax.markup.link, underline = true },
            RenderMarkdownLinkTitle = { fg = syntax.markup.link },
            RenderMarkdownWikiLink = { link = "RenderMarkdownLink" },

            -- Checkboxes
            RenderMarkdownUnchecked = { fg = syntax.markup.list.unchecked },
            RenderMarkdownChecked = { fg = syntax.markup.list.checked },
            RenderMarkdownTodo = { fg = syntax.markup.code.fg, bg = syntax.markup.code.bg },

            -- Tables
            RenderMarkdownTableHead = { fg = ui.fg.accent, bold = true },
            RenderMarkdownTableRow = { link = "Normal" },

            -- Callouts
            RenderMarkdownSuccess = { fg = ui.fg.add },
            RenderMarkdownInfo = { fg = ui.fg.info },
            RenderMarkdownHint = { fg = ui.fg.hint },
            RenderMarkdownWarn = { fg = ui.fg.warn },
            RenderMarkdownError = { fg = ui.fg.negative },
        }
    end,
}
