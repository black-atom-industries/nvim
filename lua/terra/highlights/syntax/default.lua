local actions = require("terra.actions")

local extend = actions.highlights.extend_highlight

local M = {}

---Sets up Native and Treesitter Syntax Highlights
---@param highlights TerraHighlightsMap
---@param colors TerraColors
---@param config TerraConfig
M.setup = function(highlights, colors, config)
    ---@type TerraHighlightGroup
    highlights.syntax.default = {
        -- Native Regex Highlights
        Boolean = { fg = colors.palette.dark_yellow },
        Character = { fg = colors.palette.yellow },
        Comment = extend({ fg = colors.semantics.fg.secondary.dark }, config.code_style.comments),
        Conditional = extend({ fg = colors.palette.magenta }, config.code_style.keywords),
        Constant = { fg = colors.palette.dark_yellow },
        Define = { fg = colors.palette.magenta },
        Delimiter = { fg = colors.palette.light_gray },
        Error = { fg = colors.palette.magenta },
        Exception = { fg = colors.palette.magenta },
        Float = { fg = colors.palette.dark_yellow },
        Function = extend({ fg = colors.palette.yellow }, config.code_style.functions),
        Identifier = extend({ fg = colors.semantics.fg.active }, config.code_style.variables),
        Include = { fg = colors.palette.magenta },
        Keyword = extend({ fg = colors.palette.magenta }, config.code_style.keywords),
        Label = { fg = colors.palette.magenta },
        Macro = { fg = colors.palette.red },
        Number = { fg = colors.palette.dark_yellow },
        Operator = { fg = colors.semantics.fg.primary.main },
        PreCondit = { fg = colors.palette.magenta },
        PreProc = { fg = colors.palette.magenta },
        Repeat = extend({ fg = colors.palette.magenta }, config.code_style.keywords),
        Special = { fg = colors.palette.red },
        SpecialChar = { fg = colors.palette.red },
        SpecialComment = extend({ fg = colors.semantics.fg.secondary.dark }, config.code_style.comments),
        Statement = { fg = colors.palette.magenta },
        StorageClass = { fg = colors.palette.blue },
        String = extend({ fg = colors.palette.cyan }, config.code_style.strings),
        Structure = { fg = colors.palette.yellow },
        Tag = { fg = colors.palette.green },
        Title = { fg = colors.palette.cyan },
        Todo = { fg = colors.semantics.fg.neutral },
        Type = { fg = colors.palette.yellow },
        Typedef = { fg = colors.palette.magenta },

        -- Treesitter Highlights
        -- If you want to add TreeSitter highlights, you can do so here.
        ["@annotation"] = { fg = colors.semantics.fg.primary.main },

        ["@attribute"] = { fg = colors.palette.cyan },

        ["@boolean"] = { fg = colors.palette.dark_yellow },

        ["@character"] = { fg = colors.palette.dark_yellow },
        ["@character.special"] = { fg = colors.palette.dark_yellow },

        ["@comment"] = { link = "Comment" },

        ["@conditional"] = extend({ fg = colors.palette.magenta }, config.code_style.keywords),

        ["@constant"] = { fg = colors.palette.dark_yellow },
        ["@constant.builtin"] = { fg = colors.palette.dark_yellow },
        ["@constant.macro"] = { fg = colors.palette.dark_yellow },

        ["@constructor"] = { fg = colors.palette.yellow, bold = true },

        ["@error"] = { fg = colors.semantics.fg.primary.main },

        ["@exception"] = { fg = colors.palette.magenta },

        ["@field"] = { fg = colors.palette.blue },

        ["@float"] = { fg = colors.palette.dark_yellow },

        ["@function"] = extend({ fg = colors.palette.yellow, bold = true }, config.code_style.functions),
        ["@function.builtin"] = extend({ fg = colors.palette.cyan }, config.code_style.functions),
        ["@function.macro"] = extend({ fg = colors.palette.cyan }, config.code_style.functions),

        ["@include"] = { fg = colors.palette.magenta },

        ["@interface"] = { fg = colors.palette.cyan },

        ["@keyword"] = { link = "Keyword" },

        ["@label"] = { fg = colors.palette.dark_yellow },

        ["@method"] = { fg = colors.palette.yellow },

        ["@namespace"] = { fg = colors.palette.dark_blue },

        ["@none"] = { fg = colors.semantics.fg.primary.main },

        ["@number"] = { fg = colors.palette.dark_yellow },

        ["@operator"] = { link = "Operator" },

        ["@parameter"] = { fg = colors.palette.dark_yellow, italic = true },
        ["@parameter.reference"] = { fg = colors.semantics.fg.primary.main },
        ["@property"] = { fg = colors.palette.dark_blue },
        ["@punctuation.bracket"] = { fg = colors.semantics.fg.primary.main },
        ["@punctuation.delimiter"] = { fg = colors.semantics.fg.primary.main },
        ["@punctuation.special"] = { fg = colors.semantics.fg.primary.main },

        ["@repeat"] = extend({ fg = colors.palette.magenta }, config.code_style.keywords),

        ["@string"] = extend({ fg = colors.palette.green }, config.code_style.strings),
        ["@string.escape"] = extend({ fg = colors.palette.red }, config.code_style.strings),
        ["@string.regex"] = extend({ fg = colors.palette.dark_yellow }, config.code_style.strings),
        ["@string.special"] = extend({ fg = colors.palette.green }, config.code_style.strings),

        ["@symbol"] = { fg = colors.palette.cyan },

        ["@tag"] = { fg = colors.palette.yellow },
        ["@tag.attribute"] = { fg = colors.palette.dark_yellow },
        ["@tag.delimiter"] = { fg = colors.palette.dark_yellow },

        ["@text"] = { fg = colors.semantics.fg.primary.main },
        ["@text.danger"] = { fg = colors.semantics.fg.primary.main },
        ["@text.emphasis"] = { fg = colors.semantics.fg.primary.main, italic = true },
        ["@text.environment"] = { fg = colors.semantics.fg.primary.main },
        ["@text.environment.name"] = { fg = colors.semantics.fg.primary.main },
        ["@text.literal"] = { fg = colors.palette.green },
        ["@text.math"] = { fg = colors.semantics.fg.primary.main },
        ["@text.note"] = { fg = colors.semantics.fg.primary.main },
        ["@text.reference"] = { fg = colors.palette.blue },
        ["@text.strike"] = { fg = colors.semantics.fg.primary.main, strikethrough = true },
        ["@text.strong"] = { fg = colors.semantics.fg.primary.main, bold = true },
        ["@text.title"] = { fg = colors.palette.dark_yellow, bold = true },
        ["@text.todo.checked"] = { fg = colors.semantics.fg.active },
        ["@text.todo.unchecked"] = { fg = colors.semantics.fg.neutral },
        ["@text.underline"] = { fg = colors.semantics.fg.primary.main, underline = true },
        ["@text.uri"] = { fg = colors.palette.cyan, underline = true },
        ["@text.warning"] = { fg = colors.semantics.fg.primary.main },

        ["@type"] = { fg = colors.palette.cyan },
        ["@type.builtin"] = { fg = colors.palette.dark_cyan },

        ["@variable"] = extend({ fg = colors.palette.blue }, config.code_style.variables),
        ["@variable.builtin"] = extend({ fg = colors.palette.blue }, config.code_style.variables),

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
end

return M
