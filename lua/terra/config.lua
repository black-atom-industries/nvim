local M = {}

M.seasons = {
	"spring",
}

---@alias Season "spring" | "summer" | "fall" | "winter"
---@alias Time "day" | "night"
-- TODO: Research formats ("italic bold" ??)
---@alias CodeStyleFormat "italic" | "bold" | "none"

---@class TerraConfig.CodeStyle
---@field comments CodeStyleFormat
---@field keywords CodeStyleFormat
---@field functions CodeStyleFormat
---@field strings CodeStyleFormat
---@field variables CodeStyleFormat

---@class TerraConfig.Diagnostics
---@field darker boolean Wether to use darker colors for diagnostics
---@field undercurl boolean Wether to use undercurls for diagnostics
---@field background boolean Wether to use backgroudn color for virtual text

---@class TerraConfig
---@field season Season: Currently set season
---@field time Time: Current set time of day
---@field icons table: Icons associated with each season
---@field enabled_seasons table: Table of enabled seasons
---@field select_season string: Normal mode mapping string for triggering the season selection
---@field transparent boolean: Wether to render the background color
---@field term_colors boolean: Wether to enable terminal colors
---@field ending_tildes boolean: Wether to show the end-of-buffer tildes
---@field cmp_itemkind_reverse boolean: Wether to reverse item kind highlights in cmp menu
---@field code_style TerraConfig.CodeStyle: Code styling options
---@field colors table<string, string>: Override default colors
---@field highlights table<string, string>: Override highlight colors
---@field diagnostics TerraConfig.Diagnostics: Diagnostics related settings

---@type TerraConfig
M.default_config = {
	season = M.seasons[1],
	time = "night",

	icons = { --
		spring = "",
		summer = "",
		fall = "",
		winter = "",
	},

	-- TODO: Notice in README that binding can get overwritten by config or plugins
	select_season = "<C-x>",

	-- TODO: select_time: "<leader>Tt"

	transparent = false,
	term_colors = true,
	ending_tildes = false,
	cmp_itemkind_reverse = false,

	code_style = {
		comments = "italic",
		keywords = "none",
		functions = "none",
		strings = "none",
		variables = "none",
	},

	colors = {},
	highlights = {},

	diagnostics = {
		darker = false,
		undercurl = false,
		background = false,
	},
}

return M
