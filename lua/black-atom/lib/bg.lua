local M = {}

---@param config BlackAtom.Config
---@param colors BlackAtom.Theme.Colors
---@return string
function M.main(config, colors)
    local no_color = colors.none
    local bg = colors.ui.bg

    return require("black-atom.lib.highlights").conditional_hl(bg.primary.main, {
        [config.styles.transparency == "partial"] = no_color,
        [config.styles.transparency == "full"] = no_color,
    })
end

---@param config BlackAtom.Config
---@param colors BlackAtom.Theme.Colors
---@return string
function M.sidebar(config, colors)
    local dark_sidebars = config.styles.dark_sidebars
    local transparency = config.styles.transparency
    local bg = colors.ui.bg
    local no_color = colors.none

    return require("black-atom.lib.highlights").conditional_hl(bg.primary.dark, {
        [not dark_sidebars] = bg.primary.main,
        [dark_sidebars and transparency == "partial"] = bg.primary.dark,
        [transparency == "full"] = no_color,
    })
end

---@param config BlackAtom.Config
---@param colors BlackAtom.Theme.Colors
---@return string
---@diagnostic disable-next-line: unused-local
function M.float(config, colors)
    local bg = colors.ui.bg

    return require("black-atom.lib.highlights").conditional_hl(bg.primary.dark, {
        -- I decided to always use the dark background for floating windows
        -- But just in case I change my mind, I'll leave this here
    })
end

return M
