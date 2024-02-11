---@type TerraHighlightsSpec
local highlight_map_spec = {
    enabled = true,

    map = function(colors, config)
        -- local bg = colors.semantics.bg
        local fg = colors.semantics.fg
        local bg_float = require("terra-core.lib.background").float(config, colors)

        ---@type TerraHighlights
        local highlights_map = {
            FzfLuaNormal = { fg = fg.primary.main, bg = bg_float },
            FzfLuaTitle = { fg = fg.active },
            FzfLuaBorder = { link = "FloatBorder" },
            FzfLuaPreviewBorder = { link = "FloatBorder" },
        }

        return highlights_map
    end,
}

return highlight_map_spec
