---@doc https://github.com/folke/flash.nvim
---@type BlackAtom.HighlightsSpec
return {
    enabled = false,
    map = function(colors)
        local ui = colors.ui
        local pal = colors.palette

        ---@type BlackAtom.Highlights
        local highlights_map = {
            FlashMatch = { fg = ui.fg.contrast, bg = pal.dark_magenta },
        }

        return highlights_map
    end,
}
