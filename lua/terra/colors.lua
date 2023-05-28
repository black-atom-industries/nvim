local get_palette = require("terra.palette")

---@return TerraColors
local function get_colors()
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

return get_colors()
