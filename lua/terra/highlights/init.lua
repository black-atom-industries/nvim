local colors = require("terra.colors")
local set_highlight_group = require("terra.actions.highlights").set_highlight_group
local notify = require("terra.actions.ui").notify

local themes = {
    spring = {
        night = require("terra.themes.spring.night").highlights,
        day = require("terra.themes.spring.day").highlights,
    },
    summer = {
        night = require("terra.themes.summer.night").highlights,
        day = require("terra.themes.summer.day").highlights,
    },
    fall = {
        night = require("terra.themes.fall.night").highlights,
        day = require("terra.themes.fall.day").highlights,
    },
    winter = {
        night = require("terra.themes.winter.night").highlights,
        day = require("terra.themes.winter.day").highlights,
    },
}

local M = {}

function M.setup()
    local season = vim.g.terra_config.season
    local time = vim.g.terra_config.time

    local highlights = themes[season][time]

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
