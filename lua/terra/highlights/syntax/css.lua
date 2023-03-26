local M = {}

---@param highlights TerraHighlightsMap
---@param colors TerraColors
---@param config TerraConfig
M.setup = function(highlights, colors, config)
    ---@type TerraHighlightGroup
    highlights.syntax.css = {
        -- Native Regex Highlights
        cssPositioningAttr = { fg = colors.palette.yellow },
        cssBoxAttr = { fg = colors.palette.yellow },
        cssTextAttr = { fg = colors.palette.blue },
        cssCommonAttr = { fg = colors.palette.blue },
        cssCascadeAttr = { fg = colors.palette.yellow },
        cssFlexibleBoxAttr = { fg = colors.palette.yellow },
        cssUnitDecorators = { fg = colors.palette.yellow },
        cssValueLength = { fg = colors.palette.dark_blue },

        -- TreeSitter Highlights
        -- If you want to add TreeSitter highlights, you can do so here.
    }
end

return M
