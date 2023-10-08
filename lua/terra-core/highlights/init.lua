local set_highlights = require("terra-core.actions.highlights").set_highlights
local get_highlight_modules = require("terra-core.actions.files").get_highlight_modules
local write_debug_highlights_file = require("terra-core.actions.debug").write_debug_highlights_file
local aggregate_highlight_maps = require("terra-core.actions.highlights").aggregate_highlight_maps

local themes = require("terra-core.themes").themes
local variants = require("terra-core.themes").get_sorted_variant_keys()

local theme_color_palettes = {}

for _, theme in pairs(themes) do
    theme_color_palettes[theme.key] = {}
    for _, variant in pairs(variants) do
        theme_color_palettes[theme.key][variant] = require("terra-core.themes." .. theme.key .. "." .. variant).colors()
    end
end

local M = {}

---@param colors TerraColors
---@param config TerraConfig
---@return TerraHighlights
function M.build_highlights_map(colors, config)
    local default_ignore_pattern = ".*_template.lua$"

    local modules = get_highlight_modules("lua/terra-core/highlights/maps", default_ignore_pattern)

    local highlights_map = aggregate_highlight_maps(modules, colors, config)

    if config.debug then
        write_debug_highlights_file(modules, highlights_map)
    end

    return highlights_map
end

---Setup highlights for a given theme and variant
---@param config TerraConfig
---@return nil
function M.setup(config)
    local colors = theme_color_palettes[config.theme][config.variant]

    local highlights = M.build_highlights_map(colors, config)

    set_highlights(highlights)
end

return M
