---@type BlackAtom.HighlightsSpec
local highlight_map_extension = {
    map = function(colors, config)
        local lib = require("black-atom.lib")

        ---@type BlackAtom.Highlights
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
