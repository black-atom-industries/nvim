local extend = require("terra.actions").highlights.extend_highlight

---@type TerraHighlightMapExtension
local highlight_map_extension = {
    setup = function(highlights, colors, config)
        ---@type TerraHighlightGroup
        highlights.syntax.php = {
            -- Native Regex Highlights
            phpFunctions = extend({ fg = colors.semantics.fg.primary.main }, config.code_style.functions),
            phpMethods = { fg = colors.palette.cyan },
            phpStructure = { fg = colors.palette.magenta },
            phpOperator = { fg = colors.palette.magenta },
            phpMemberSelector = { fg = colors.semantics.fg.primary.main },
            phpVarSelector = extend({ fg = colors.palette.dark_yellow }, config.code_style.variables),
            phpIdentifier = extend({ fg = colors.palette.dark_yellow }, config.code_style.variables),
            phpBoolean = { fg = colors.palette.cyan },
            phpNumber = { fg = colors.palette.dark_yellow },
            phpHereDoc = { fg = colors.palette.green },
            phpNowDoc = { fg = colors.palette.green },
            phpSCKeyword = extend({ fg = colors.palette.magenta }, config.code_style.keywords),
            phpFCKeyword = extend({ fg = colors.palette.magenta }, config.code_style.keywords),
            phpRegion = { fg = colors.palette.blue },

            -- TreeSitter Highlights
            -- If you want to add TreeSitter highlights, you can do so here.
        }
    end,
}

return highlight_map_extension
