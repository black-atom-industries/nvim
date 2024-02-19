---@type BlackAtomCore.HighlightsSpec
local highlight_map_spec = {
    enabled = true,

    map = function(colors)
        local c = colors.palette

        ---@type BlackAtomCore.Highlights
        local highlights_map = {
            ArrowCurrentFile = { fg = c.yellow, bold = true },
            ArrowFileIndex = { fg = c.cyan },
            ArrowAction = { fg = c.dark_yellow },
            ArrowDeleteMode = { fg = c.red, bold = true },
        }

        return highlights_map
    end,
}

return highlight_map_spec
