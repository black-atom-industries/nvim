local util = require("terra.util")

---@param season "spring" | "summer" | "fall" | "winter"
---@param time "day" | "night"
local get_palette = function(season, time)
	-- Check if season is valid
	if season ~= "spring" then
		local error_message = "Unknown season '"
			.. season
			.. "'!\nCheck for typos.\nCurrently only 'spring' is available!"

		util.notify(error_message, "error", {
			title = "TerraConfig Error",
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
