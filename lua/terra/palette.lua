local validate_season = require("terra.actions.config").validate_season

---@param season Season
---@param time Time
local get_palette = function(season, time)
	local valid_season = validate_season(season)

	if not valid_season then
		local notify = require("terra.actions.ui").notify

		local error_message = "Unknown season '"
			.. season
			.. "'!\nCheck for typos.\nCurrently only 'spring' is available!"

		notify(error_message, "error", {
			title = "Terra - Error",
			timeout = 5000,
			icon = "",
		})

		return
	else
		local season_palette = "terra.themes." .. season
		local palette = require(season_palette)[time]

		return palette
	end
end

return get_palette
