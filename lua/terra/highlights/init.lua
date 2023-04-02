local set_highlights = require("terra.actions.highlights").set_highlights
local get_highlight_modules = require("terra.actions.files").get_highlight_modules
local write_debug_highlights_file = require("terra.actions.debug").write_debug_highlights_file
local aggregate_highlight_maps = require("terra.actions.highlights").aggregate_highlight_maps

local seasons = require("terra.config").seasons
local times = require("terra.config").times

local theme_color_palettes = {}

for _, season in pairs(seasons) do
    theme_color_palettes[season] = {}
    for _, time in pairs(times) do
        theme_color_palettes[season][time] = require("terra.themes." .. season .. "." .. time).colors()
    end
end

local M = {}

---@param colors TerraColors
---@param config TerraConfig
---@return TerraHighlights
M.build_highlights_map = function(colors, config)
    local default_ignore_pattern = ".*_template.lua$"

    local modules = get_highlight_modules("lua/terra/highlights/maps", default_ignore_pattern)

    local highlights_map = aggregate_highlight_maps(modules, colors, config)

    if config.debug then
        write_debug_highlights_file(modules, highlights_map)
    end

    return highlights_map
end

---Setup highlights for a given season and time
---@param config TerraConfig
---@return nil
function M.setup(config)
    local season = config.season
    local time = config.time

    local colors = theme_color_palettes[season][time]

    local highlights = M.build_highlights_map(colors, config)

    set_highlights(highlights)
end

return M
