---@type BlackAtom.HighlightsSpec
return {
    map = function(colors, config)
        local s = colors.syntax
        -- TODO:  Rename to configurable globally
        local configurable = require("black-atom.lib.highlights").extend_hl

        -- Treesitter Syntax Highlights (See: `:h treesitter-highlight-groups`)
        ---@type BlackAtom.Highlights
        return {
            -- TODO: Link these to the builtin types (e.g. @operator & Operator)
            -- TODO: Rename this file to `syntax.lua` and bring in the builtin types as well
            -- TODO: Sort

            Identifier = configurable({ fg = s.variable.default }, config.styles.syntax.variables),
            StorageClass = { link = "Identifier" },
            ["@variable"] = { link = "Identifier" },
            ["@variable.builtin"] = { fg = s.variable.builtin },
            ["@variable.parameter"] = { fg = s.variable.parameter, italic = true, bold = true },
            ["@variable.member"] = { fg = s.variable.member, italic = true },

            String = configurable({ fg = s.string.default }, config.styles.syntax.strings),
            ["@string"] = { link = "String" },
            ["@string.escape"] = configurable({ fg = s.string.escape }, config.styles.syntax.strings),
            ["@string.regexp"] = configurable({ fg = s.string.regexp }, config.styles.syntax.strings),
            ["@string.special"] = configurable({ fg = s.string.default }, config.styles.syntax.strings),
            ["@string.special.url"] = configurable(
                { fg = s.string.default, underline = true },
                config.styles.syntax.strings
            ),

            Boolean = { fg = s.boolean.default },
            ["@boolean"] = { link = "Boolean" },

            Number = { fg = s.number.default },
            Float = { link = "Number" },
            ["@number"] = { link = "Number" },

            -- We assign the `Keyword` highlight to some of the other regexpt highlight groups,
            -- which are also keywords more of less.
            -- To me thats find for now, but I'm open to suggestions.
            Keyword = configurable({ fg = s.keyword.default }, config.styles.syntax.keywords),
            ["@keyword"] = { link = "Keyword" },
            ["@keyword.import"] = configurable({ fg = s.keyword.import }, config.styles.syntax.keywords),
            ["@keyword.export"] = configurable({ fg = s.keyword.export }, config.styles.syntax.keywords),
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

            Operator = { fg = s.operator.default },
            ["@operator"] = { link = "Operator" },

            Type = { fg = s.type.default, bold = true },
            Structure = { link = "Type" },
            Typedef = { link = "Type" },
            ["@type"] = { link = "Type" },
            ["@type.builtin"] = { fg = s.type.builtin, bold = true },

            Constant = { fg = s.constant.default },
            SpecialChar = { fg = s.constant.builtin },
            ["@constant"] = { link = "Constant" },
            ["@constant.builtin"] = { link = "SpecialChar" },

            Character = { fg = s.constant.default },
            ["@character"] = { link = "Character" },

            ["@module"] = { fg = s.module.default },

            ["@attribute"] = { fg = s.attribute.default },
            ["@attribute.builtin"] = { fg = s.attribute.builtin },

            ["@property"] = { fg = s.property.default },

            Function = configurable({ fg = s.func.default }, config.styles.syntax.functions),
            ["@function"] = { link = "Function" },
            ["@function.call"] = configurable({ fg = s.func.default, bold = true }, config.styles.syntax.functions),
            ["@function.method.call"] = configurable(
                { fg = s.func.default, bold = true },
                config.styles.syntax.functions
            ),
            ["@function.builtin"] = configurable({ fg = s.func.builtin }, config.styles.syntax.functions),
            ["@function.method"] = configurable({ fg = s.func.method }, config.styles.syntax.functions),

            ["@method"] = configurable({ fg = s.func.default }, config.styles.syntax.functions),
            ["@method.call"] = configurable({ fg = s.func.default, bold = true }, config.styles.syntax.functions),

            ["@constructor"] = { fg = s.constructor.default, bold = true },

            Delimiter = { fg = s.punctuation.delimiter },
            Special = { fg = s.punctuation.special },
            ["@punctuation.bracket"] = { fg = s.punctuation.bracket },
            ["@punctuation.delimiter"] = { fg = s.punctuation.delimiter },

            Comment = configurable({ fg = s.comment.default }, config.styles.syntax.comments),
            Todo = { fg = s.comment.todo },
            SpecialComment = configurable({ fg = s.comment.doc }, config.styles.syntax.comments),
            ["@comment"] = { link = "Comment" },
            ["@comment.todo"] = { link = "Todo" },
            ["@comment.documentation"] = { link = "SpecialComment" },

            ["@markup.heading.1"] = { fg = s.markup.heading.h1, bold = true },
            ["@markup.heading.2"] = { fg = s.markup.heading.h2, bold = true },
            ["@markup.heading.3"] = { fg = s.markup.heading.h3, bold = true },
            ["@markup.heading.4"] = { fg = s.markup.heading.h4, bold = true },
            ["@markup.heading.5"] = { fg = s.markup.heading.h5, bold = true },
            ["@markup.heading.6"] = { fg = s.markup.heading.h6, bold = true },
            ["@markup.quote"] = { fg = s.markup.quote, italic = true },
            ["@markup.link"] = { fg = s.markup.link, underline = true },

            ["@markup.raw"] = { fg = s.markup.code },

            ["@markup.list"] = { fg = s.markup.list.default },
            ["@markup.list.checked"] = { fg = s.markup.list.checked },
            ["@markup.list.unchecked"] = { fg = s.markup.list.unchecked },

            Tag = { fg = s.tag.default },
            ["@tag"] = { link = "Tag" },
            ["@tag.builtin"] = { fg = s.tag.builtin },
            ["@tag.custom"] = { fg = s.tag.builtin },
            ["@tag.attribute"] = { fg = s.tag.attribute },
            ["@tag.delimiter"] = { fg = s.tag.delimiter },

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
            ["@lsp.type.enumMember"] = { link = "@variable.member" },
            ["@lsp.type.function"] = { link = "@function" },
            ["@lsp.type.method"] = { link = "@method" },
            ["@lsp.type.macro"] = { link = "@macro" },
            ["@lsp.type.decorator"] = { link = "@function" },
        }
    end,
}
