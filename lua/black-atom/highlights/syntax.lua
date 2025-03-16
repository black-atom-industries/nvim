---@type BlackAtom.HighlightsSpec
return {
    map = function(colors, config)
        local syntax = colors.syntax
        -- TODO:  Rename to configurable globally
        local ext_hl = require("black-atom.lib.highlights").ext_hl

        -- Treesitter Syntax Highlights (See: `:h treesitter-highlight-groups`)
        ---@type BlackAtom.Highlights
        return {
            -- TODO: Link these to the builtin types (e.g. @operator & Operator)
            -- TODO: Rename this file to `syntax.lua` and bring in the builtin types as well
            -- TODO: Sort

            Identifier = ext_hl({ fg = syntax.variable.default }, config.styles.syntax.variables),
            StorageClass = { link = "Identifier" },
            ["@variable"] = { link = "Identifier" },
            ["@variable.builtin"] = { fg = syntax.variable.builtin },
            ["@variable.parameter"] = { fg = syntax.variable.parameter, italic = true, bold = true },
            ["@variable.member"] = { fg = syntax.variable.member },

            String = ext_hl({ fg = syntax.string.default }, config.styles.syntax.strings),
            ["@string"] = { link = "String" },
            ["@string.escape"] = ext_hl({ fg = syntax.string.escape }, config.styles.syntax.strings),
            ["@string.regexp"] = ext_hl({ fg = syntax.string.regexp }, config.styles.syntax.strings),
            ["@string.special"] = ext_hl({ fg = syntax.string.default }, config.styles.syntax.strings),
            ["@string.special.url"] = ext_hl(
                { fg = syntax.string.default, underline = true },
                config.styles.syntax.strings
            ),

            Boolean = { fg = syntax.boolean.default },
            ["@boolean"] = { link = "Boolean" },

            Number = { fg = syntax.number.default },
            Float = { link = "Number" },
            ["@number"] = { link = "Number" },

            -- We assign the `Keyword` highlight to some of the other regexpt highlight groups,
            -- which are also keywords more of less.
            -- To me thats find for now, but I'm open to suggestions.
            Keyword = ext_hl({ fg = syntax.keyword.default }, config.styles.syntax.keywords),
            ["@keyword"] = { link = "Keyword" },
            ["@keyword.import"] = ext_hl({ fg = syntax.keyword.import }, config.styles.syntax.keywords),
            ["@keyword.export"] = ext_hl({ fg = syntax.keyword.export }, config.styles.syntax.keywords),
            Statement = { link = "Keyword" },
            Conditional = { link = "Keyword" },
            Repeat = { link = "Keyword" },
            Label = { link = "Keyword" },
            Exception = { link = "Keyword" },
            PreProc = { link = "Keyword" },
            Include = { link = "Keyword" },
            Define = { link = "Keyword" },
            Macro = { link = "Keyword" },
            PreCondit = { link = "Keyword" },

            Operator = { fg = syntax.operator.default },
            ["@operator"] = { link = "Operator" },

            Type = { fg = syntax.type.default, bold = true },
            Structure = { link = "Type" },
            Typedef = { link = "Type" },
            ["@type"] = { link = "Type" },
            ["@type.builtin"] = { fg = syntax.type.builtin, bold = true },

            Constant = { fg = syntax.constant.default },
            SpecialChar = { fg = syntax.constant.builtin },
            ["@constant"] = { link = "Constant" },
            ["@constant.builtin"] = { link = "SpecialChar" },

            Character = { fg = syntax.constant.default },
            ["@character"] = { link = "Character" },

            ["@module"] = { fg = syntax.module.default },

            ["@attribute"] = { fg = syntax.attribute.default },
            ["@attribute.builtin"] = { fg = syntax.attribute.builtin },

            ["@property"] = { fg = syntax.property.default },

            Function = ext_hl({ fg = syntax.func.default }, config.styles.syntax.functions),
            ["@function"] = { link = "Function" },
            ["@function.call"] = ext_hl({ fg = syntax.func.default, bold = true }, config.styles.syntax.functions),
            ["@function.method.call"] = ext_hl(
                { fg = syntax.func.default, bold = true },
                config.styles.syntax.functions
            ),
            ["@function.builtin"] = ext_hl({ fg = syntax.func.builtin }, config.styles.syntax.functions),
            ["@function.method"] = ext_hl({ fg = syntax.func.method }, config.styles.syntax.functions),

            ["@method"] = ext_hl({ fg = syntax.func.default }, config.styles.syntax.functions),
            ["@method.call"] = ext_hl({ fg = syntax.func.default, bold = true }, config.styles.syntax.functions),

            ["@constructor"] = { fg = syntax.constructor.default, bold = true },

            ["@namespace"] = { bold = true },

            Delimiter = { fg = syntax.punctuation.delimiter },
            Special = { fg = syntax.punctuation.special },
            ["@punctuation.bracket"] = { fg = syntax.punctuation.bracket },
            ["@punctuation.delimiter"] = { fg = syntax.punctuation.delimiter },

            Comment = ext_hl({ fg = syntax.comment.default }, config.styles.syntax.comments),
            Todo = { fg = syntax.comment.todo },
            SpecialComment = ext_hl({ fg = syntax.comment.doc }, config.styles.syntax.comments),
            ["@comment"] = { link = "Comment" },
            ["@comment.todo"] = { link = "Todo" },
            ["@comment.documentation"] = { link = "SpecialComment" },

            ["@markup.heading.1"] = { fg = syntax.markup.heading.h1, bold = true },
            ["@markup.heading.2"] = { fg = syntax.markup.heading.h2, bold = true },
            ["@markup.heading.3"] = { fg = syntax.markup.heading.h3, bold = true },
            ["@markup.heading.4"] = { fg = syntax.markup.heading.h4, bold = true },
            ["@markup.heading.5"] = { fg = syntax.markup.heading.h5, bold = true },
            ["@markup.heading.6"] = { fg = syntax.markup.heading.h6, bold = true },
            ["@markup.quote"] = { fg = syntax.markup.quote, italic = true },
            ["@markup.link"] = { fg = syntax.markup.link, underline = true },

            ["@markup.raw"] = { fg = syntax.markup.code.fg },

            ["@markup.list"] = { fg = syntax.markup.list.default },
            ["@markup.list.checked"] = { fg = syntax.markup.list.checked },
            ["@markup.list.unchecked"] = { fg = syntax.markup.list.unchecked },

            Tag = { fg = syntax.tag.default },
            ["@tag"] = { link = "Tag" },
            ["@tag.builtin"] = { fg = syntax.tag.builtin },
            ["@tag.custom"] = { fg = syntax.tag.builtin },
            ["@tag.attribute"] = { fg = syntax.tag.attribute },
            ["@tag.delimiter"] = { fg = syntax.tag.delimiter },

            -- Treesitter Semantic Tokens
            ["@lsp.type.namespace"] = { link = "@namespace" },
            ["@lsp.type.type"] = { link = "@type" },
            ["@lsp.type.class"] = { link = "@type" },
            ["@lsp.type.enum"] = { link = "@type" },
            ["@lsp.type.interface"] = { link = "@type" },
            ["@lsp.type.struct"] = { link = "@structure" },
            ["@lsp.type.parameter"] = { link = "@variable.parameter" },
            ["@lsp.type.variable"] = { link = "@variable" },
            ["@lsp.typemod.variable"] = { link = "@variable" },
            ["@lsp.typemod.variable.readonly"] = { link = "@constant" },
            ["@lsp.type.property"] = { link = "@property" },
            ["@lsp.type.enumMember"] = { link = "@variable.member" },
            ["@lsp.type.function"] = { link = "@function" },
            ["@lsp.type.method"] = { link = "@method" },
            ["@lsp.type.macro"] = { link = "@macro" },
            ["@lsp.type.decorator"] = { link = "@function" },
        }
    end,
}
