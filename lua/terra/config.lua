local M = {}

---@type Season[]
M.seasons = {
	"spring",
}

---@alias Season "spring" | "summer" | "fall" | "winter"
---@alias Time "day" | "night"
---@alias CodeStyleFormat HighlightFormat

---@class TerraConfig.CodeStyle
---@field comments CodeStyleFormat
---@field keywords CodeStyleFormat
---@field functions CodeStyleFormat
---@field strings CodeStyleFormat
---@field variables CodeStyleFormat

---@class TerraConfig.Diagnostics
---@field darker boolean
---@field undercurl boolean
---@field background boolean

---@class TerraConfig
---@field season Season
---@field time Time
---@field icons table
---@field select_season string
---@field transparent boolean
---@field term_colors boolean
---@field ending_tildes boolean
---@field cmp_itemkind_reverse boolean
---@field code_style TerraConfig.CodeStyle
---@field colors table<string, string>
---@field highlights table<string, string>
---@field diagnostics TerraConfig.Diagnostics

---@type TerraConfig
M.default_config = {
	season = M.seasons[1], -- Currently set season
	time = "night", -- Current set time of day

	icons = { -- Icons associated with each season
		spring = "",
		summer = "",
		fall = "",
		winter = "",
	},

	-- TODO: Notice in README that binding can get overwritten by config or plugins
	select_season = "<C-x>", -- Normal mode mapping string for triggering the season selection

	-- TODO: select_time: "<leader>Tt"

	transparent = false, -- Wether to render the background color
	term_colors = true, -- Wether to enable terminal colors
	ending_tildes = false, -- Wether to show the end-of-buffer tildes
	cmp_itemkind_reverse = false, -- Wether to reverse item kind highlights in cmp menu

	code_style = { -- Code styling options
		comments = "italic",
		keywords = "NONE",
		functions = "NONE",
		strings = "NONE",
		variables = "NONE",
	},

	colors = {}, -- Override default colors
	highlights = {}, -- Override highlight colors

	diagnostics = { -- Diagnostics related settings
		darker = false, -- Wether to use darker colors for diagnostics
		undercurl = false, -- Wether to use undercurls for diagnostics
		background = false, -- Wether to use background color for virtual text
	},
}

return M
