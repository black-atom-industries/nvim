local config = require("terra.config")
local includes = require("terra.actions.utils").includes
local notify = require("terra.actions.ui").notify

local M = {}

---Change terra option (vim.g.terra_config.option)
---@param options TerraConfig
---@return nil
function M.set_options(options)
    vim.g.terra_config = vim.tbl_deep_extend("force", vim.g.terra_config, options)
end

-- NOTE: Introduce `M.get_options(options)` which receives a table of config keys and returns current values as a table

---Syncs `vim.o.background` of Vim with `time` of TerraConfig
---@param time Time
---@return nil
function M.sync_vim_opt_background_with_terra_time(time)
    if time == "day" then
        vim.o.background = "light"
    else
        vim.o.background = "dark"
    end
end

---Syncs `time` of TerraConfig with `vim.o.background` of Vim
---@param background "light" | "dark"
---@return nil
function M.sync_terra_time_with_vim_opt_background(background)
    if background == "light" then
        M.set_options({
            time = "day",
        })
    end
end

---Select a Terra Season
---@return nil
function M.select_season()
    local reload_colorscheme = require("terra.init").load
    local capitalize = require("terra.actions.utils").capitalize

    ---@param selected_season string|nil
    local handle_select_season = function(selected_season)
        -- Handle abort
        if selected_season == nil then
            notify("Aborted: No Season selected!", "warn", {
                title = "Warning",
                icon = " ",
            })
            return
        end

        -- Give feedback to user about selected season
        local formatted_season = capitalize(selected_season)

        notify("You selected '" .. formatted_season .. "'!", "success", {
            title = formatted_season,
            icon = vim.g.terra_config.icons[selected_season],
        })

        M.set_options({
            season = selected_season,
        })

        M.sync_vim_opt_background_with_terra_time(vim.g.terra_config.time)

        reload_colorscheme()
    end

    ---@param item unknown
    ---@return string
    local format_item = function(item)
        return vim.g.terra_config.icons[item] .. "  " .. capitalize(item)
    end

    -- Open select menu to choose a Season
    vim.ui.select(config.seasons, {
        prompt = "Terra - Please select a Season",
        -- NOTE: The `telescope` property will get gracefully disregarded if telescope or dressing.nvim is not present
        telescope = require("telescope.themes").get_dropdown(),
        format_item = format_item,
    }, handle_select_season)
end

---Select a Terra Time
---@return nil
function M.select_time()
    local reload_colorscheme = require("terra.init").load
    local capitalize = require("terra.actions.utils").capitalize

    ---@param selected_time string|nil
    local handle_select_time = function(selected_time)
        -- Handle abort
        if selected_time == nil then
            notify("Aborted: No Time selected!", "warn", {
                title = "Warning",
                icon = " ",
            })
            return
        end

        -- Give feedback to user about selected time
        local formatted_time = capitalize(selected_time)

        notify("You selected '" .. formatted_time .. "'!", "success", {
            title = formatted_time,
            icon = vim.g.terra_config.icons[selected_time],
        })

        M.set_options({
            time = selected_time,
        })

        M.sync_vim_opt_background_with_terra_time(vim.g.terra_config.time)

        reload_colorscheme()
    end

    ---@param item unknown
    ---@return string
    local format_item = function(item)
        return capitalize(item)
    end

    -- Open select menu to choose a Time
    vim.ui.select({
        "day",
        "night",
    }, {
        prompt = "Terra - Please select a Time",
        -- NOTE: The `telescope` property will get gracefully disregarded if telescope or dressing.nvim is not present
        telescope = require("telescope.themes").get_dropdown(),
        format_item = format_item,
    }, handle_select_time)
end

---Runtime validation for `season` setting
---@param season Season
---@return boolean
function M.validate_season(seasons, season)
    if includes(seasons, season) then
        return true
    else
        return false
    end
end

return M
