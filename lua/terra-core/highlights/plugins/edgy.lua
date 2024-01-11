---@type TerraHighlightsSpec
local highlight_map_spec = {
    enabled = true,

    map = function(colors)
        local fg = colors.semantics.fg

        ---@type TerraHighlights
        local highlights_map = {
            EdgyNormal = { link = "Normal" },
            EdgyWinBar = { link = "WinBar" },
            EdgyTitle = { link = "Normal" },
            EdgyIcon = { link = "Normal" },
            EdgyIconActive = { fg = fg.active },
        }

        return highlights_map
    end,
}

return highlight_map_spec
