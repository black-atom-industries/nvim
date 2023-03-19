local set_highlight_group = require("terra.actions.highlights").set_highlight_group
local get_highlights_map = require("terra.highlights.map").get_highlights_map

local seasons = require("terra.config").seasons
local times = require("terra.config").times

local theme_color_palettes = {}

for _, season in pairs(seasons) do
    theme_color_palettes[season] = {}
    for _, time in pairs(times) do
        theme_color_palettes[season][time] = require("terra.themes." .. season .. "." .. time).colors()
    end
end

---@type TerraHighlightsMap
local highlights = {
    common = {},
    syntax = {},
    langs = {},
    plugins = {},
}

local M = {}

---Setup highlights for a given season and time
---@param config TerraConfig
function M.setup(config)
    local season = config.season
    local time = config.time

    local colors = theme_color_palettes[season][time]

    local highlights = get_highlights_map(highlights, colors, config)

    -- Set common highlights
    set_highlight_group(highlights.common)
    set_highlight_group(highlights.syntax)
    set_highlight_group(highlights.treesitter)

    -- Set language highlights
    for _, group in pairs(highlights.langs) do
        set_highlight_group(group)
    end

    -- Set plugin highlights
    for _, group in pairs(highlights.plugins) do
        set_highlight_group(group)
    end
end

return M
