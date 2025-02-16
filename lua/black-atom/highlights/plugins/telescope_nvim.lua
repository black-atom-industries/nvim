---@doc https://github.com/nvim-telescope/telescope.nvim
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors, config)
        local bg = require("black-atom.lib").bg
        local bg_panel = bg.panel(config, colors)

        local ui = colors.ui

        ---@type BlackAtom.Highlights
        return {
            TelescopeNormal = { bg = bg_panel },
            TelescopeBorder = { fg = bg_panel, bg = bg_panel },
            TelescopeTitle = { fg = ui.fg.accent },
            TelescopePromptPrefix = { fg = ui.fg.accent },
            TelescopeMatching = { fg = ui.fg.accent },
            TelescopeSelection = { fg = ui.fg.accent, bg = ui.bg.default },
        }
    end,
}
