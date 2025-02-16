---@doc https://github.com/ibhagwan/fzf-lua
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors, config)
        local lib = require("black-atom.lib")
        local fg = colors.ui.fg
        local bg = colors.ui.bg
        local bg_panel = lib.bg.panel(config, colors)

        ---@type BlackAtom.Highlights
        return {
            FzfLuaNormal = { fg = fg.default, bg = bg_panel },
            FzfLuaTitle = { fg = fg.accent, bg = bg_panel },
            FzfLuaBorder = { link = "FloatBorder" },
            FzfLuaPreviewBorder = { link = "FloatBorder" },
            FzfLuaCursorLine = { bg = bg.default },
            FzfLuaDirPart = { fg = fg.subtle },
        }
    end,
}
