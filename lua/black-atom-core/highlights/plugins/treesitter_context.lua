---@type BlackAtomCore.HighlightsSpec
local highlight_map_extension = {
    map = function(colors, config)
        local lib = require("black-atom-core.lib")

        ---@type BlackAtomCore.Highlights
        local highlights_map = {
            TreesitterContext = {
                bg = lib.bg.sidebar(config, colors),
            },
            TreesitterContextLineNumber = {
                fg = colors.semantics.fg.neutral,
                bg = lib.bg.sidebar(config, colors),
            },
        }

        return highlights_map
    end,
}

return highlight_map_extension
