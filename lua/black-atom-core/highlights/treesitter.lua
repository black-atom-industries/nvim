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

            ["@conditional"] = lib.hls.extend_hl({ fg = palette.magenta }, config.styles.syntax.keywords),

            ["@constant"] = { fg = palette.dark_yellow },
            ["@constant.builtin"] = { fg = palette.dark_yellow },
            ["@constant.macro"] = { fg = palette.dark_yellow },

            ["@constructor"] = { fg = palette.yellow, bold = true },

            ["@error"] = { fg = fg.primary.main },

            ["@exception"] = { fg = palette.magenta },

            ["@field"] = { fg = palette.blue },

            ["@float"] = { fg = palette.dark_yellow },

            ["@function"] = lib.hls.extend_hl({ fg = palette.yellow, bold = true }, config.styles.syntax.functions),
            ["@function.builtin"] = lib.hls.extend_hl({ fg = palette.yellow }, config.styles.syntax.functions),
            ["@function.macro"] = lib.hls.extend_hl({ fg = palette.yellow }, config.styles.syntax.functions),

            ["@include"] = { fg = palette.magenta },

            ["@interface"] = { fg = palette.cyan },

            ["@keyword"] = { link = "Keyword" },

            ["@label"] = { fg = palette.dark_yellow },

            ["@method"] = { fg = palette.yellow, bold = true },

            ["@namespace"] = { fg = palette.dark_blue },

            ["@none"] = { fg = fg.primary.main },

            ["@number"] = { fg = palette.dark_yellow },

            ["@operator"] = { link = "Operator" },

            ["@parameter"] = { fg = palette.dark_yellow, italic = true },
            ["@parameter.reference"] = { fg = fg.primary.main },
            ["@property"] = { fg = palette.dark_blue },
            ["@punctuation.bracket"] = { fg = fg.primary.main },
            ["@punctuation.delimiter"] = { fg = fg.primary.main },
            ["@punctuation.special"] = { fg = fg.primary.main },

            ["@repeat"] = lib.hls.extend_hl({ fg = palette.magenta }, config.styles.syntax.keywords),

            ["@string"] = lib.hls.extend_hl({ fg = palette.green }, config.styles.syntax.strings),
            ["@string.escape"] = lib.hls.extend_hl({ fg = palette.red }, config.styles.syntax.strings),
            ["@string.regex"] = lib.hls.extend_hl({ fg = palette.dark_yellow }, config.styles.syntax.strings),
            ["@string.special"] = lib.hls.extend_hl({ fg = palette.green }, config.styles.syntax.strings),

            ["@symbol"] = { fg = palette.cyan },

            ["@tag"] = { fg = palette.yellow },
            ["@tag.attribute"] = { fg = palette.dark_yellow },
            ["@tag.delimiter"] = { fg = palette.dark_yellow },

            ["@text"] = { fg = fg.primary.main },
            ["@text.danger"] = { fg = fg.primary.main },
            ["@text.emphasis"] = { fg = fg.primary.main, italic = true },
            ["@text.environment"] = { fg = fg.primary.main },
            ["@text.environment.name"] = { fg = fg.primary.main },
            ["@text.literal"] = { fg = palette.green },
            ["@text.math"] = { fg = fg.primary.main },
            ["@text.note"] = { fg = fg.primary.main },
            ["@text.reference"] = { fg = palette.blue },
            ["@text.strike"] = { fg = fg.primary.main, strikethrough = true },
            ["@text.strong"] = { fg = fg.primary.main, bold = true },
            ["@text.title"] = { fg = palette.dark_yellow, bold = true },
            ["@text.todo.checked"] = { fg = fg.active },
            ["@text.todo.unchecked"] = { fg = fg.neutral },
            ["@text.underline"] = { fg = fg.primary.main, underline = true },
            ["@text.uri"] = { fg = palette.blue, underline = true },
            ["@text.warning"] = { fg = fg.primary.main },

            ["@type"] = { fg = palette.cyan },
            ["@type.builtin"] = { fg = palette.dark_cyan },

            ["@variable"] = lib.hls.extend_hl({ fg = palette.blue }, config.styles.syntax.variables),
            ["@variable.builtin"] = lib.hls.extend_hl({ fg = palette.blue }, config.styles.syntax.variables),

            -- Treesitter Semantic Tokens
            ["@lsp.type.namespace"] = { link = "@namespace" },
            ["@lsp.type.type"] = { link = "@type" },
            ["@lsp.type.class"] = { link = "@type" },
            ["@lsp.type.enum"] = { link = "@type" },
            ["@lsp.type.interface"] = { link = "@type" },
            ["@lsp.type.struct"] = { link = "@structure" },
            ["@lsp.type.parameter"] = { link = "@parameter" },
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
