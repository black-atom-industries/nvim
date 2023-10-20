local utils = require("terra-core.utils")

local extend_hl = utils.highlights.extend_hl_with_code_style

---TODO: Do we need this? Treesitter shoudl be able to handle this.
---@type TerraHighlightsSpec
local highlight_map_extension = {
    map = function(colors, config)
        ---@type TerraHighlights
        local highlights_map = {
            -- Native Regex Highlights
            scalaNameDefinition = { fg = colors.semantics.fg.primary.main },
            scalaInterpolationBoundary = { fg = colors.palette.magenta },
            scalaInterpolation = { fg = colors.palette.magenta },
            scalaTypeOperator = { fg = colors.palette.red },
            scalaOperator = { fg = colors.palette.red },
            scalaKeywordModifier = extend_hl({ fg = colors.palette.red }, config.code_style.keywords),

            -- TreeSitter Highlights
            -- If you want to add TreeSitter highlights, you can do so here.
        }

        return highlights_map
    end,
}

return highlight_map_extension
