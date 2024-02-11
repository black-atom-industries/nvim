local conditional_hl = require("terra-core.utils.highlights").conditional_hl

local M = {}

---@param config TerraConfig
---@param colors TerraColors
---@return string
function M.main(config, colors)
    local no_color = colors.none
    local bg = colors.semantics.bg

    return conditional_hl(bg.primary.main, {
        [config.transparency == "partial"] = no_color,
        [config.transparency == "full"] = no_color,
    })
end

---@param config TerraConfig
---@param colors TerraColors
---@return string
function M.sidebar(config, colors)
    local dark_sidebars = config.style_presets.dark_sidebars
    local transparency = config.transparency
    local bg = colors.semantics.bg
    local no_color = colors.none

    return conditional_hl(bg.primary.dark, {
        [not dark_sidebars] = bg.primary.main,
        [dark_sidebars and transparency == "partial"] = bg.primary.dark,
        [transparency == "full"] = no_color,
    })
end

---@param config TerraConfig
---@param colors TerraColors
---@return string
---@diagnostic disable-next-line: unused-local
function M.float(config, colors)
    local bg = colors.semantics.bg

    return conditional_hl(bg.primary.dark, {
        -- I decided to always use the dark background for floating windows
        -- But just in case I change my mind, I'll leave this here
    })
end

return M
