---@type BlackAtomCore.HighlightsSpec
local highlight_map_spec = {
    enabled = true,

    map = function(colors, config)
        local lib = require("black-atom-core.lib")

        local fg = colors.semantics.fg

        local bg_float = lib.bg.float(config, colors)

        ---@type BlackAtomCore.Highlights
        local highlights_map = {
            FzfLuaNormal = { fg = fg.primary.main, bg = bg_float },
            FzfLuaTitle = { fg = fg.active },
            FzfLuaBorder = { link = "FloatBorder" },
            FzfLuaPreviewBorder = { link = "FloatBorder" },
            FzfLuaDirPart = { fg = fg.neutral },
        }

        return highlights_map
    end,
}

return highlight_map_spec
