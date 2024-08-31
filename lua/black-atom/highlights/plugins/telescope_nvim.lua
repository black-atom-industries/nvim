---@doc https://github.com/nvim-telescope/telescope.nvim
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors, config)
        local bg_float = require("black-atom.lib").bg.float(config, colors)

        local ui = colors.ui

        ---@type BlackAtom.Highlights
        return {
            TelescopeNormal = { bg = bg_float },
            TelescopeBorder = { fg = bg_float, bg = bg_float },
            TelescopeTitle = { fg = ui.fg.active },
            TelescopePromptPrefix = { fg = ui.fg.active },
            TelescopeMatching = { fg = ui.fg.active },
            TelescopeSelection = { fg = ui.fg.active, bg = ui.bg.primary.main },
        }
    end,
}
