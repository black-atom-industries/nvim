local seasons = require("terra.config").seasons
local validate_season = require("terra.actions.config").validate_season

---@param season TerraConfig.Season
---@param time TerraConfig.Time
local get_palette = function(season, time)
    local valid_season = validate_season(seasons, season)

    if not valid_season then
        local notify = require("terra.actions.ui").notify

        local error_message = "Unknown season '" .. season .. "'!\nCheck for typos.\nCurrently only 'spring' is available!"

        notify(error_message, "error", {
            title = "Terra - Error",
            timeout = 5000,
            icon = "",
        })

        return
    else
        return require("terra.themes." .. season .. "." .. time)
    end
end

return get_palette
