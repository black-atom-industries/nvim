---@doc https://github.com/ibhagwan/fzf-lua
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors, config)
        local lib = require("black-atom.lib")
        local fg = colors.ui.fg
        local bg = colors.ui.bg
        local bg_float = lib.bg.float(config, colors)

        ---@type BlackAtom.Highlights
        return {
            FzfLuaNormal = { fg = fg.primary.main, bg = bg_float },
            FzfLuaTitle = { fg = fg.active },
            FzfLuaBorder = { link = "FloatBorder" },
            FzfLuaPreviewBorder = { link = "FloatBorder" },
            FzfLuaCursorLine = { bg = bg.primary.main },
            FzfLuaDirPart = { fg = fg.neutral },
        }
    end,
}
