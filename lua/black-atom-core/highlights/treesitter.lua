local lib = require("black-atom-core.lib")

---@type BlackAtomCore.HighlightsSpec
local highlight_map_extension = {
    map = function(colors, config)
        local fg = colors.semantics.fg
        local palette = colors.palette

        -- Treesitter Syntax Highlights (See: `:h treesitter-highlight-groups`)
        ---@type BlackAtomCore.Highlights
        local highlights_map = {
            -- If you want to add TreeSitter highlights, you can do so here.
            ["@annotation"] = { fg = fg.primary.main },

            ["@attribute"] = { fg = palette.cyan },

            ["@boolean"] = { fg = palette.dark_yellow },

            ["@character"] = { fg = palette.dark_yellow },
            ["@character.special"] = { fg = palette.dark_yellow },

            ["@comment"] = { link = "Comment" },

            ["@conditional"] = lib.highlights.extend_hl({ fg = palette.magenta }, config.styles.syntax.keywords),

            ["@constant"] = { fg = palette.dark_yellow },
            ["@constant.builtin"] = { fg = palette.dark_yellow },
            ["@constant.macro"] = { fg = palette.dark_yellow },

            ["@constructor"] = { fg = palette.yellow, bold = true },

            ["@error"] = { fg = fg.primary.main },

            ["@exception"] = { fg = palette.magenta },

            ["@function"] = lib.highlights.extend_hl(
                { fg = palette.yellow, bold = true },
                config.styles.syntax.functions
            ),
            ["@function.builtin"] = lib.highlights.extend_hl({ fg = palette.yellow }, config.styles.syntax.functions),
            ["@function.macro"] = lib.highlights.extend_hl({ fg = palette.yellow }, config.styles.syntax.functions),

            ["@include"] = { fg = palette.magenta },

            ["@interface"] = { fg = palette.cyan },

            ["@keyword"] = { link = "Keyword" },

            ["@label"] = { fg = palette.dark_yellow },

            ["@method"] = { fg = palette.yellow, bold = true },

            ["@module"] = { fg = palette.dark_blue },

            ["@none"] = { fg = fg.primary.main },

            ["@number"] = { fg = palette.dark_yellow },
            ["@number.float"] = { fg = palette.dark_yellow },

            ["@operator"] = { link = "Operator" },

            ["@property"] = { fg = palette.dark_blue },
            ["@punctuation.bracket"] = { link = "Delimiter" },
            ["@punctuation.delimiter"] = { link = "Delimiter" },

            ["@repeat"] = lib.highlights.extend_hl({ fg = palette.magenta }, config.styles.syntax.keywords),

            ["@string"] = lib.highlights.extend_hl({ fg = palette.green }, config.styles.syntax.strings),
            ["@string.escape"] = lib.highlights.extend_hl({ fg = palette.red }, config.styles.syntax.strings),
            ["@string.regexp"] = lib.highlights.extend_hl({ fg = palette.dark_yellow }, config.styles.syntax.strings),
            ["@string.special.symbol"] = { fg = palette.cyan },

            ["@tag"] = { fg = palette.yellow },
            ["@tag.attribute"] = { fg = palette.dark_yellow },
            ["@tag.delimiter"] = { fg = palette.dark_yellow },

            ["@markup"] = { fg = fg.primary.main },
            ["@markup.danger"] = { fg = fg.primary.main },
            ["@markup.emphasis"] = { fg = fg.primary.main, italic = true },
            ["@markup.environment"] = { fg = fg.primary.main },
            ["@markup.environment.name"] = { fg = fg.primary.main },
            ["@markup.raw"] = { fg = palette.green },
            ["@markup.math"] = { fg = fg.primary.main },
            ["@markup.note"] = { fg = fg.primary.main },
            ["@markup.link"] = { fg = palette.blue },
            ["@markup.link.label"] = lib.highlights.extend_hl({ fg = palette.green }, config.styles.syntax.strings),
            ["markup.list"] = { fg = fg.primary.main },
            ["@markup.strike"] = { fg = fg.primary.main, strikethrough = true },
            ["@markup.strong"] = { fg = fg.primary.main, bold = true },
            ["@markup.heading"] = { fg = palette.dark_yellow, bold = true },
            ["@markup.todo.checked"] = { fg = fg.active },
            ["@markup.todo.unchecked"] = { fg = fg.neutral },
            ["@markup.underline"] = { fg = fg.primary.main, underline = true },
            ["@markup.link.url"] = { fg = palette.blue, underline = true },
            ["@markup.warning"] = { fg = fg.primary.main },
            ["@markup.quote"] = { italic = true },

            ["@type"] = { fg = palette.cyan },
            ["@type.builtin"] = { fg = palette.dark_cyan },

            ["@variable"] = lib.highlights.extend_hl({ fg = palette.blue }, config.styles.syntax.variables),
            ["@variable.builtin"] = lib.highlights.extend_hl({ fg = palette.blue }, config.styles.syntax.variables),
            ["@variable.parameter"] = { fg = palette.dark_yellow, italic = true },
            ["@variable.parameter.reference"] = { fg = fg.primary.main },
            ["@variable.member"] = { fg = palette.blue },

            -- Treesitter Semantic Tokens
            ["@lsp.type.namespace"] = { link = "@namespace" },
            ["@lsp.type.type"] = { link = "@type" },
            ["@lsp.type.class"] = { link = "@type" },
            ["@lsp.type.enum"] = { link = "@type" },
            ["@lsp.type.interface"] = { link = "@type" },
            ["@lsp.type.struct"] = { link = "@structure" },
            ["@lsp.type.parameter"] = { link = "@variable.parameter" },
            ["@lsp.type.variable"] = { link = "@variable" },
            ["@lsp.type.property"] = { link = "@property" },
            ["@lsp.type.enumMember"] = { link = "@constant" },
            ["@lsp.type.function"] = { link = "@function" },
            ["@lsp.type.method"] = { link = "@method" },
            ["@lsp.type.macro"] = { link = "@macro" },
            ["@lsp.type.decorator"] = { link = "@function" },
        }

        return highlights_map
    end,
}

return highlight_map_extension
