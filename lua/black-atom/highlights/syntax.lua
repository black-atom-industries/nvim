---@type BlackAtom.HighlightsSpec
return {
    map = function(colors, config)
        local syn = colors.syntax
        -- TODO:  Rename to configurable globally
        local ext_hl = require("black-atom.lib.highlights").ext_hl

        -- Treesitter Syntax Highlights (See: `:h treesitter-highlight-groups`)
        ---@type BlackAtom.Highlights
        return {
            -- TODO: Link these to the builtin types (e.g. @operator & Operator)
            -- TODO: Rename this file to `syntax.lua` and bring in the builtin types as well
            -- TODO: Sort

            Identifier = ext_hl({ fg = syn.variable.default }, config.styles.syntax.variables),
            StorageClass = { link = "Identifier" },
            ["@variable"] = { link = "Identifier" },
            ["@variable.builtin"] = { fg = syn.variable.builtin },
            ["@variable.parameter"] = { fg = syn.variable.parameter, italic = true, bold = true },
            ["@variable.member"] = { fg = syn.variable.member, italic = true },

            String = ext_hl({ fg = syn.string.default }, config.styles.syntax.strings),
            ["@string"] = { link = "String" },
            ["@string.escape"] = ext_hl({ fg = syn.string.escape }, config.styles.syntax.strings),
            ["@string.regexp"] = ext_hl({ fg = syn.string.regexp }, config.styles.syntax.strings),
            ["@string.special"] = ext_hl({ fg = syn.string.default }, config.styles.syntax.strings),
            ["@string.special.url"] = ext_hl(
                { fg = syn.string.default, underline = true },
                config.styles.syntax.strings
            ),

            Boolean = { fg = syn.boolean.default },
            ["@boolean"] = { link = "Boolean" },

            Number = { fg = syn.number.default },
            Float = { link = "Number" },
            ["@number"] = { link = "Number" },

            -- We assign the `Keyword` highlight to some of the other regexpt highlight groups,
            -- which are also keywords more of less.
            -- To me thats find for now, but I'm open to suggestions.
            Keyword = ext_hl({ fg = syn.keyword.default }, config.styles.syntax.keywords),
            ["@keyword"] = { link = "Keyword" },
            ["@keyword.import"] = ext_hl({ fg = syn.keyword.import }, config.styles.syntax.keywords),
            ["@keyword.export"] = ext_hl({ fg = syn.keyword.export }, config.styles.syntax.keywords),
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

            Operator = { fg = syn.operator.default },
            ["@operator"] = { link = "Operator" },

            Type = { fg = syn.type.default, bold = true },
            Structure = { link = "Type" },
            Typedef = { link = "Type" },
            ["@type"] = { link = "Type" },
            ["@type.builtin"] = { fg = syn.type.builtin, bold = true },

            Constant = { fg = syn.constant.default },
            SpecialChar = { fg = syn.constant.builtin },
            ["@constant"] = { link = "Constant" },
            ["@constant.builtin"] = { link = "SpecialChar" },

            Character = { fg = syn.constant.default },
            ["@character"] = { link = "Character" },

            ["@module"] = { fg = syn.module.default },

            ["@attribute"] = { fg = syn.attribute.default },
            ["@attribute.builtin"] = { fg = syn.attribute.builtin },

            ["@property"] = { fg = syn.property.default },

            Function = ext_hl({ fg = syn.func.default }, config.styles.syntax.functions),
            ["@function"] = { link = "Function" },
            ["@function.call"] = ext_hl({ fg = syn.func.default, bold = true }, config.styles.syntax.functions),
            ["@function.method.call"] = ext_hl({ fg = syn.func.default, bold = true }, config.styles.syntax.functions),
            ["@function.builtin"] = ext_hl({ fg = syn.func.builtin }, config.styles.syntax.functions),
            ["@function.method"] = ext_hl({ fg = syn.func.method }, config.styles.syntax.functions),

            ["@method"] = ext_hl({ fg = syn.func.default }, config.styles.syntax.functions),
            ["@method.call"] = ext_hl({ fg = syn.func.default, bold = true }, config.styles.syntax.functions),

            ["@constructor"] = { fg = syn.constructor.default, bold = true },

            Delimiter = { fg = syn.punctuation.delimiter },
            Special = { fg = syn.punctuation.special },
            ["@punctuation.bracket"] = { fg = syn.punctuation.bracket },
            ["@punctuation.delimiter"] = { fg = syn.punctuation.delimiter },

            Comment = ext_hl({ fg = syn.comment.default }, config.styles.syntax.comments),
            Todo = { fg = syn.comment.todo },
            SpecialComment = ext_hl({ fg = syn.comment.doc }, config.styles.syntax.comments),
            ["@comment"] = { link = "Comment" },
            ["@comment.todo"] = { link = "Todo" },
            ["@comment.documentation"] = { link = "SpecialComment" },

            ["@markup.heading.1"] = { fg = syn.markup.heading.h1, bold = true },
            ["@markup.heading.2"] = { fg = syn.markup.heading.h2, bold = true },
            ["@markup.heading.3"] = { fg = syn.markup.heading.h3, bold = true },
            ["@markup.heading.4"] = { fg = syn.markup.heading.h4, bold = true },
            ["@markup.heading.5"] = { fg = syn.markup.heading.h5, bold = true },
            ["@markup.heading.6"] = { fg = syn.markup.heading.h6, bold = true },
            ["@markup.quote"] = { fg = syn.markup.quote, italic = true },
            ["@markup.link"] = { fg = syn.markup.link, underline = true },

            ["@markup.raw"] = { fg = syn.markup.code.fg, bg = syn.markup.code.bg },

            ["@markup.list"] = { fg = syn.markup.list.default },
            ["@markup.list.checked"] = { fg = syn.markup.list.checked },
            ["@markup.list.unchecked"] = { fg = syn.markup.list.unchecked },

            Tag = { fg = syn.tag.default },
            ["@tag"] = { link = "Tag" },
            ["@tag.builtin"] = { fg = syn.tag.builtin },
            ["@tag.custom"] = { fg = syn.tag.builtin },
            ["@tag.attribute"] = { fg = syn.tag.attribute },
            ["@tag.delimiter"] = { fg = syn.tag.delimiter },

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
