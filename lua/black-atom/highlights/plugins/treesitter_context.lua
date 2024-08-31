---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors, config)
        local lib = require("black-atom.lib")

        ---@type BlackAtom.Highlights
        return {
            TreesitterContext = {
                bg = lib.bg.sidebar(config, colors),
            },
            TreesitterContextLineNumber = {
                fg = colors.ui.fg.neutral,
                bg = lib.bg.sidebar(config, colors),
            },
        }
    end,
}
