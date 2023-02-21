local actions = require("terra.actions")

local extend = actions.highlights.extend_with_code_style

local M = {}

---Sets up Treesitter Highlights
---@param highlights TerraHighlightsMap
---@param colors TerraColors
---@param config TerraConfig
M.setup = function(highlights, colors, config)
    highlights.treesitter = {
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
        ["@keyword"] = { link = "Keyword" },
        ["@keyword.function"] = { link = "Function" },
        ["@keyword.operator"] = { link = "Operator" },
        ["@label"] = { fg = colors.palette.dark_yellow },
        ["@metod"] = { fg = colors.palette.blue },
        ["@namespace"] = { fg = colors.palette.dark_blue },
        ["@none"] = { fg = colors.semantics.fg.primary.main },
        ["@number"] = { fg = colors.palette.dark_yellow },
        ["@operator"] = { link = "Operator" },
        ["@parameter"] = { fg = colors.palette.dark_yellow, italic = true },
        ["@parameter.reference"] = { fg = colors.semantics.fg.primary.main },
        ["@property"] = { fg = colors.palette.dark_blue },
        ["@punctuation.delimiter"] = { fg = colors.semantics.fg.primary.main },
        ["@punctuation.bracket"] = { fg = colors.semantics.fg.primary.main },
        ["@punctuation.special"] = { fg = colors.semantics.fg.primary.main },
        ["@repeat"] = extend({ fg = colors.palette.magenta }, config.code_style.keywords),
        ["@string"] = extend({ fg = colors.palette.green }, config.code_style.strings),
        ["@string.special"] = extend({ fg = colors.palette.green }, config.code_style.strings),
        ["@string.regex"] = extend({ fg = colors.palette.dark_yellow }, config.code_style.strings),
        ["@string.escape"] = extend({ fg = colors.palette.red }, config.code_style.strings),
        ["@symbol"] = { fg = colors.palette.cyan },
        ["@tag"] = { fg = colors.palette.yellow },
        ["@tag.delimiter"] = { fg = colors.palette.dark_yellow },
        ["@tag.attribute"] = { fg = colors.palette.dark_yellow },
        ["@text"] = { fg = colors.semantics.fg.primary.main },
        ["@text.strong"] = { fg = colors.semantics.fg.primary.main, bold = true },
        ["@text.emphasis"] = { fg = colors.semantics.fg.primary.main, italic = true },
        ["@text.underline"] = { fg = colors.semantics.fg.primary.main, underline = true },
        ["@text.strike"] = { fg = colors.semantics.fg.primary.main, strikethrough = true },
        ["@text.title"] = { fg = colors.palette.dark_yellow, bold = true },
        ["@text.literal"] = { fg = colors.palette.green },
        ["@text.uri"] = { fg = colors.palette.cyan, underline = true },
        ["@text.math"] = { fg = colors.semantics.fg.primary.main },
        ["@text.reference"] = { fg = colors.palette.blue },
        ["@text.environment"] = { fg = colors.semantics.fg.primary.main },
        ["@text.environment.name"] = { fg = colors.semantics.fg.primary.main },
        ["@text.note"] = { fg = colors.semantics.fg.primary.main },
        ["@text.warning"] = { fg = colors.semantics.fg.primary.main },
        ["@text.danger"] = { fg = colors.semantics.fg.primary.main },
        ["@text.todo.unchecked"] = { fg = colors.semantics.fg.neutral },
        ["@text.todo.checked"] = { fg = colors.semantics.fg.active },
        ["@type"] = { fg = colors.palette.cyan },
        ["@interface"] = { fg = colors.palette.cyan },
        ["@type.builtin"] = { fg = colors.palette.dark_cyan },
        ["@variable"] = extend({ fg = colors.palette.blue }, config.code_style.variables),
        ["@variable.builtin"] = extend({ fg = colors.palette.blue }, config.code_style.variables),
    }
end

return M
