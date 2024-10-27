local cond_hl = require("black-atom.lib.highlights").cond_hl

local M = {}

---@param config BlackAtom.Config
---@param colors BlackAtom.Theme.Colors
---@return string
function M.main(config, colors)
    local no_color = colors.none
    local bg = colors.ui.bg

    return cond_hl(bg.primary.main, {
        [config.styles.transparency == "partial"] = no_color,
        [config.styles.transparency == "full"] = no_color,
    })
end

---@param config BlackAtom.Config
---@param colors BlackAtom.Theme.Colors
---@return string
function M.dark(config, colors)
    local dark_sidebars = config.styles.dark_sidebars
    local transparency = config.styles.transparency
    local bg = colors.ui.bg
    local no_color = colors.none

    return cond_hl(bg.primary.dark, {
        [not dark_sidebars] = bg.primary.main,
        [dark_sidebars and transparency == "partial"] = bg.primary.dark,
        [transparency == "full"] = no_color,
    })
end

return M
