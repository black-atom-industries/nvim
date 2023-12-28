---@type TerraHighlightsSpec
local highlight_map_spec = {
    enabled = true,

    map = function(colors)
        local bg = colors.semantics.bg
        local fg = colors.semantics.fg

        ---@type TerraHighlights
        local highlights_map = {
            EdgyNormal = { link = "NormalFloat" },
            EdgyWinBar = { link = "WinBar" },
            EdgyTitle = { link = "Title" },
            EdgyIcon = {
                fg = fg.primary.main,
                bg = bg.primary.dark,
            },
            EdgyIconActive = {
                fg = fg.active,
                bg = bg.primary.dark,
            },
        }

        return highlights_map
    end,
}

return highlight_map_spec
