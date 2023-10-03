local themes = require("terra-core.themes").themes
local dev_status_warning = require("terra-core.actions.config").dev_status_warning

local M = {}

--- Get the palette for a theme and variant
---@param theme_key TerraConfig.ThemeKey
---@param variant_key TerraConfig.ThemeVariantKey
local function get_palette(theme_key, variant_key)
    dev_status_warning(themes, theme_key, variant_key)

    return require(themes[theme_key].variants[variant_key].path)
end

---@return TerraColors
function M.get_colors()
    local colors = {}

    local extend_colors = function(tbl_1, tbl_2)
        return vim.tbl_extend("force", tbl_1, tbl_2)
    end

    -- Extend colors with the palette for the current theme and variant
    local config = vim.g.terra_config
    colors = extend_colors(colors, get_palette(config.theme, config.variant))

    -- Extend colors with custom user overrides
    local overrides = vim.g.terra_config.colors
    colors = extend_colors(colors, overrides)

    return colors
end

return M.get_colors()
