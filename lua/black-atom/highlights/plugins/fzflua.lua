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
            FzfLuaNormal = { fg = fg.default, bg = bg_float },
            FzfLuaPreviewNormal = { fg = fg.default, bg = bg.default },
            FzfLuaTitle = { fg = fg.accent, bg = bg_float },
            FzfLuaBorder = { link = "FloatBorder" },
            FzfLuaPreviewBorder = { link = "FloatBorder" },
            FzfLuaCursorLine = { bg = bg.default },
            FzfLuaDirPart = { fg = fg.subtle },
        }
    end,
}
