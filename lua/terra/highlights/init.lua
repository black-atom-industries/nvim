local apply_highlight_group = require("terra.actions.highlights").apply_highlight_group
local build_highlights_map = require("terra.highlights.map").build_highlights_map

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

---Setup highlights for a given season and time
---@param config TerraConfig
function M.setup(config)
    local season = config.season
    local time = config.time

    local colors = theme_color_palettes[season][time]

    -- Build the highlights map
    local highlights = build_highlights_map(colors, config)

    -- Apply the highlights
    apply_highlight_group(highlights.common)
    apply_highlight_group(highlights.lsp)

    for _, group in pairs(highlights.syntax) do
        apply_highlight_group(group)
    end

    for _, group in pairs(highlights.plugins) do
        apply_highlight_group(group)
    end
end

return M
