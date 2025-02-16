---@doc https://github.com/folke/flash.nvim
---@type BlackAtom.HighlightsSpec
return {
    enabled = false,
    map = function(colors)
        local ui = colors.ui
        local palette = colors.palette

        ---@type BlackAtom.Highlights
        local highlights_map = {
            FlashMatch = { fg = ui.fg.contrast, bg = palette.dark_magenta },
        }

        return highlights_map
    end,
}
