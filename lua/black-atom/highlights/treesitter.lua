local lib = require("black-atom.lib")

---@type BlackAtom.HighlightsSpec
local highlight_map_extension = {
    map = function(colors, config)
        local fg = colors.ui.fg
        local syntax = colors.syntax
        local palette = colors.palette

        -- Treesitter Syntax Highlights (See: `:h treesitter-highlight-groups`)
        ---@type BlackAtom.Highlights
        local highlights_map = {
            -- If you want to add TreeSitter highlights, you can do so here.
            ["@annotation"] = { fg = fg.primary.main },

            ["@attribute"] = { fg = palette.cyan },

            ["@boolean"] = { fg = syntax.boolean.default },

            ["@character"] = { fg = palette.dark_yellow },
            ["@character.special"] = { fg = palette.dark_yellow },

            ["@comment"] = { link = "Comment" },

            ["@conditional"] = lib.highlights.extend_hl({ fg = palette.magenta }, config.styles.syntax.keywords),

            ["@constant"] = { fg = syntax.constant.default },
            ["@constant.builtin"] = { fg = syntax.constant.builtin },

            ["@constructor"] = { fg = palette.yellow, bold = true },

            ["@error"] = { fg = fg.primary.main },

            ["@exception"] = { fg = palette.magenta },

            ["@function"] = lib.highlights.extend_hl(
                { fg = syntax.func.default, bold = true },
                config.styles.syntax.functions
            ),
            -- ["@function.builtin"] = lib.highlights.extend_hl({ fg = palette.yellow }, config.styles.syntax.functions),
            -- ["@function.macro"] = lib.highlights.extend_hl({ fg = palette.yellow }, config.styles.syntax.functions),

            ["@method"] = { fg = syntax.func.method, bold = true },

            ["@include"] = { fg = palette.magenta },

            ["@interface"] = { fg = palette.cyan },

            ["@keyword"] = { link = "Keyword" },

            ["@label"] = { fg = palette.dark_yellow },

            ["@module"] = { fg = palette.dark_blue },

            ["@none"] = { fg = fg.primary.main },

            ["@number"] = { fg = syntax.number.default },

            ["@operator"] = { link = "Operator" },

            ["@property"] = { fg = syntax.property.default },

            ["@punctuation.bracket"] = { fg = syntax.punctuation.bracket },
            ["@punctuation.delimiter"] = { fg = syntax.punctuation.delimiter },

            ["@repeat"] = lib.highlights.extend_hl({ fg = palette.magenta }, config.styles.syntax.keywords),

            ["@string"] = lib.highlights.extend_hl({ fg = syntax.string.default }, config.styles.syntax.strings),
            ["@string.escape"] = lib.highlights.extend_hl({ fg = syntax.string.escape }, config.styles.syntax.strings),
            ["@string.regexp"] = lib.highlights.extend_hl({ fg = syntax.string.regexp }, config.styles.syntax.strings),

            ["@tag"] = { fg = syntax.tag.default },
            ["@tag.attribute"] = { fg = syntax.tag.attribute },
            ["@tag.builtin"] = { fg = syntax.tag.builtin },
            ["@tag.delimiter"] = { fg = syntax.tag.delimiter },

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

            ["@type"] = { fg = syntax.type.default, bold = true },
            ["@type.builtin"] = { fg = syntax.type.builtin },

            ["@variable"] = lib.highlights.extend_hl({ fg = syntax.variable.default }, config.styles.syntax.variables),
            ["@variable.builtin"] = lib.highlights.extend_hl(
                { fg = syntax.variable.builtin },
                config.styles.syntax.variables
            ),
            ["@variable.parameter"] = { fg = syntax.variable.parameter, italic = true },
            ["@variable.member"] = { fg = syntax.variable.member },

            -- Treesitter Semantic Tokens
            ["@lsp.type.namespace"] = { link = "@namespace", italic = true },
            ["@lsp.type.type"] = { link = "@type", italic = true },
            ["@lsp.type.class"] = { link = "@type", italic = true },
            ["@lsp.type.enum"] = { link = "@type", italic = true },
            ["@lsp.type.interface"] = { link = "@type", italic = true },
            ["@lsp.type.struct"] = { link = "@structure", italic = true },
            ["@lsp.type.parameter"] = { link = "@variable.parameter", italic = true },
            ["@lsp.type.variable"] = { link = "@variable", italic = true },
            ["@lsp.type.property"] = { link = "@property", italic = true },
            ["@lsp.type.enumMember"] = { link = "@variable.member", italic = true },
            ["@lsp.type.function"] = { link = "@function", italic = true },
            ["@lsp.type.method"] = { link = "@method", italic = true },
            ["@lsp.type.macro"] = { link = "@macro", italic = true },
            ["@lsp.type.decorator"] = { link = "@function", italic = true },
        }

        return highlights_map
    end,
}

return highlight_map_extension
