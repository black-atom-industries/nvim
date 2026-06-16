---@doc https://github.com/FylerOrg/fyler.nvim
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors, config)
        local fg = colors.ui.fg
        local bg = require("black-atom.lib.bg")
        local bg_panel = bg.panel(config, colors)
        local bg_float = bg.float(config, colors)
        local palette = colors.palette

        ---@type BlackAtom.Highlights
        return {
            -- Window
            FylerNormal = { fg = fg.default, bg = bg_panel },

            -- Filesystem
            FylerDirectoryIcon = { fg = palette.blue },
            FylerDirectoryName = { fg = palette.blue, bold = true },

            -- Float (confirmation dialog)
            FylerFloat = { fg = fg.default, bg = bg_float },
            FylerFloatBorder = { fg = bg_float, bg = bg_float },
            FylerFloatTitle = { fg = fg.subtle, bg = bg_float },

            -- Indent
            FylerIndentGuide = { fg = fg.subtle },
        }
    end,
}
