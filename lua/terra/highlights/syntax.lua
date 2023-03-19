local actions = require("terra.actions")

local extend = actions.highlights.extend_highlight

local M = {}

---Sets up Treesitter Highlights
---@param highlights TerraHighlightsMap
---@param colors TerraColors
---@param config TerraConfig
M.setup = function(highlights, colors, config)
    ---@type TerraHighlightGroup
    highlights.syntax = {
        String = extend({ fg = colors.palette.cyan }, config.code_style.strings),
        Character = { fg = colors.palette.yellow },
        Number = { fg = colors.palette.dark_yellow },
        Float = { fg = colors.palette.dark_yellow },
        Boolean = { fg = colors.palette.dark_yellow },
        Type = { fg = colors.palette.yellow },
        Structure = { fg = colors.palette.yellow },
        StorageClass = { fg = colors.palette.blue },
        Identifier = extend({ fg = colors.semantics.fg.active }, config.code_style.variables),
        Constant = { fg = colors.palette.dark_yellow },
        PreProc = { fg = colors.palette.magenta },
        PreCondit = { fg = colors.palette.magenta },
        Include = { fg = colors.palette.magenta },
        Keyword = extend({ fg = colors.palette.magenta }, config.code_style.keywords),
        Define = { fg = colors.palette.magenta },
        Typedef = { fg = colors.palette.magenta },
        Exception = { fg = colors.palette.magenta },
        Conditional = extend({ fg = colors.palette.magenta }, config.code_style.keywords),
        Repeat = extend({ fg = colors.palette.magenta }, config.code_style.keywords),
        Statement = { fg = colors.palette.magenta },
        Macro = { fg = colors.palette.red },
        Error = { fg = colors.palette.magenta },
        Label = { fg = colors.palette.magenta },
        Special = { fg = colors.palette.red },
        SpecialChar = { fg = colors.palette.red },
        Function = extend({ fg = colors.palette.yellow }, config.code_style.functions),
        Operator = { fg = colors.semantics.fg.primary.main },
        Title = { fg = colors.palette.cyan },
        Tag = { fg = colors.palette.green },
        Delimiter = { fg = colors.palette.light_gray },
        Comment = extend({ fg = colors.semantics.fg.secondary.dark }, config.code_style.comments),
        SpecialComment = extend({ fg = colors.semantics.fg.secondary.dark }, config.code_style.comments),
        Todo = { fg = colors.semantics.fg.neutral },
    }
end

return M
