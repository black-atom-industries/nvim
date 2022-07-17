local validate_season = require("terra.actions.config").validate_season

---@param season Season
---@param time Time
local get_palette = function(season, time)
	local valid_season = validate_season(season)

	if not valid_season then
		return
	else
		local season_palette = "terra.themes." .. season
		local palette = require(season_palette)[time]

		return palette
	end
end

return get_palette
