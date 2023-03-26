local extend = require("terra.actions").highlights.extend_highlight

local M = {}

---@param highlights TerraHighlightsMap
---@param colors TerraColors
---@param config TerraConfig
M.setup = function(highlights, colors, config)
    ---@type TerraHighlightGroup
    highlights.syntax.vim = {
        -- Native Regex Highlights
        vimOption = { fg = colors.palette.red },
        vimSetEqual = { fg = colors.palette.yellow },
        vimMap = { fg = colors.palette.magenta },
        vimMapModKey = { fg = colors.palette.dark_yellow },
        vimNotation = { fg = colors.palette.red },
        vimMapLhs = { fg = colors.semantics.fg.primary.main },
        vimMapRhs = { fg = colors.palette.blue },
        vimVar = extend({ fg = colors.semantics.fg.primary.main }, config.code_style.variables),
        vimCommentTitle = extend({ fg = colors.palette.light_gray }, config.code_style.comments),

        -- TreeSitter Highlights
        -- If you want to add TreeSitter highlights, you can do so here.
    }
end

return M
