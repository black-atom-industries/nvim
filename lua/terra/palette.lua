local actions = require("terra.actions")

---@param season Season
---@param time Time
local get_palette = function(season, time)
	-- Check if season is valid
	if season ~= "spring" then
		local error_message = "Unknown season '"
			.. season
			.. "'!\nCheck for typos.\nCurrently only 'spring' is available!"

		actions.ui.notify(error_message, "error", {
			title = "Terra - Error",
			timeout = 5000,
			icon = "",
		})

		return
	end

	local season_palette = "terra.themes." .. season
	local palette = require(season_palette)[time]

	return palette
end

return get_palette
