---@type TerraHighlightsSpec
local highlight_map_spec = {
    enabled = true,
    map = function(colors, config)
        local utils = require("terra-core.utils")

        local fg = colors.semantics.fg

        local bg_sidebar = utils.bg.sidebar(config, colors)

        ---@type TerraHighlights
        local highlights_map = {
            EdgyNormal = { fg = fg.primary.main, bg = bg_sidebar },
            EdgyTitle = { link = "EdgyNormal" },
            EdgyIcon = { link = "EdgyNormal" },
            EdgyIconActive = { fg = fg.active, bg = bg_sidebar },
            EdgyWinBar = { fg = fg.active, bg = bg_sidebar },
        }

        return highlights_map
    end,
}

return highlight_map_spec
