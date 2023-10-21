local themes = require("terra-core.themes")
local utils = require("terra-core.utils")

---@return TerraColors
local function get_colors()
    local theme_key = vim.g[TerraConfigNameSpace].theme
    local variant_key = vim.g[TerraConfigNameSpace].variant

    utils.config.dev_status_warning(themes, theme_key, variant_key)

    ---Based on the theme and variant keys, load the theme variant by their defined variant path
    ---@type TerraColors
    return require(themes[theme_key].variants[variant_key].path)
end

return get_colors()
