local cond_hl = require("black-atom.lib.highlights").cond_hl

local M = {}

---@param config BlackAtom.Config
---@param colors BlackAtom.Theme.Colors
---@return string
function M.default(config, colors)
    return cond_hl(colors.ui.bg.default, {
        [config.styles.transparency == "partial"] = colors.none,
        [config.styles.transparency == "full"] = colors.none,
    })
end

---@param config BlackAtom.Config
---@param colors BlackAtom.Theme.Colors
---@return string
function M.panel(config, colors)
    return cond_hl(colors.ui.bg.panel, {
        [not config.styles.dark_sidebars] = colors.ui.bg.default,
        [config.styles.dark_sidebars and config.styles.transparency == "partial"] = colors.ui.bg.panel,
        [config.styles.transparency == "full"] = colors.none,
    })
end

---@param config BlackAtom.Config
---@param colors BlackAtom.Theme.Colors
---@return string
function M.float(config, colors)
    return cond_hl(colors.ui.bg.panel, {
        [not config.styles.dark_floats] = colors.ui.bg.default,
        [config.styles.dark_floats and config.styles.transparency == "partial"] = colors.ui.bg.panel,
        [config.styles.transparency == "full"] = colors.none,
    })
end

return M
