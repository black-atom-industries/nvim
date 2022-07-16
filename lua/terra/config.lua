local M = {}

M.seasons = {
	"spring",
}

---@class TerraConfig
---@field season "spring" | "summer" | "fall" | "winter"
---@field time "night" | "day"

---@type TerraConfig
M.default_config = {
	season = "spring", -- selected season
	time = "night", -- selected time of day

	enabled_seasons = M.seasons, -- all enabled seasons

	-- QUESTION: Does WhichKey clear a <leader>Ts binding? YES.
	-- TODO: README Binding gets overwritten by WhichKey
	toggle_season = "<leader>Ts", -- binding to toggle between seasons

	-- TODO: select_season: "<leader>Ts" -- Select Season via vim.ui.select
	-- TODO: toggle_time: "<leader>Tt"

	transparent = false, -- don't set background
	term_colors = true, -- if true enable the terminal
	ending_tildes = false, -- show the end-of-buffer tildes
	cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

	-- Changing Formats --
	code_style = {
		comments = "italic",
		keywords = "none",
		functions = "none",
		strings = "none",
		variables = "none",
	},

	-- Custom Highlights --
	colors = {}, -- Override default colors
	highlights = {}, -- Override highlight groups

	-- Plugins Related --
	diagnostics = {
		darker = true, -- darker colors for diagnostic
		undercurl = true, -- use undercurl for diagnostics
		background = true, -- use background color for virtual text
	},
}

return M
