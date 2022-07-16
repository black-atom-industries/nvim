---@param season "spring" | "summer" | "fall" | "winter"
---@param time "day" | "night"
local get_palette = function(season, time)
	if season ~= "spring" then
		local error_message = "Unknown season '"
			.. season
			.. "'!\nCheck for typos.\nCurrently only 'spring' is available!"

		-- Use `notify` plugin if available
		local notify_ok, notify = pcall(require, "notify")

		if notify_ok then
			notify(error_message, "error", {
				title = "TerraConfig Error",
				timeout = 5000,
				icon = "",
			})
		else
			vim.notify(error_message)
		end

		return
	end

	local season_palette = "terra.themes." .. season
	local palette = require(season_palette)[time]

	return palette
end

return get_palette
