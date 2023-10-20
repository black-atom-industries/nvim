local themes = require("terra-core.themes")

local theme_color_palettes = {}

local variant_keys = require("terra-core.utils.themes").get_sorted_variant_keys(themes)

for _, theme in pairs(themes) do
    theme_color_palettes[theme.key] = {}
    for _, variant_key in pairs(variant_keys) do
        theme_color_palettes[theme.key][variant_key] =
            require("terra-core.themes." .. theme.key .. "." .. variant_key).colors()
    end
end

local M = {}

---@param colors TerraColors
---@param config TerraConfig
---@return TerraHighlights
function M.build_highlights_map(colors, config)
    local default_ignore_pattern = ".*_template.lua$"

    local highlight_modules = require("terra-core.utils.files").get_highlight_modules(
        "lua/terra-core/highlights/maps",
        default_ignore_pattern
    )

    local highlights_map = require("terra-core.utils.highlights").aggregate_highlight_maps(highlight_modules, colors, config)

    if config.debug then
        require("terra-core.utils.debug").write_debug_highlights_file(highlight_modules, highlights_map)
    end

    return highlights_map
end

---Setup highlights for a given theme and variant
---@param config TerraConfig
---@return nil
function M.setup(config)
    local colors = theme_color_palettes[config.theme][config.variant]

    local highlights = M.build_highlights_map(colors, config)

    require("terra-core.utils.highlights").set_highlights(highlights)
end

return M
