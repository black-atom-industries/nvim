---@type BlackAtom.HighlightsSpec
local highlight_map_spec = {
    enabled = true,
    map = function(colors, config)
        local lib = require("black-atom.lib")

        local fg = colors.ui.fg

        local bg_sidebar = lib.bg.sidebar(config, colors)

        ---@type BlackAtom.Highlights
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
