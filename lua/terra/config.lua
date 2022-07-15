local M = {}

M.styles_list = {
	"spring_night",
	"spring_day",
}

---@class TerraConfig
---@field season "spring" | "summer" | "fall" | "winter"
---@field time "night" | "day"

M.default_config = {
	style = M.styles_list[1], -- seledcted style
	toggle_style_list = M.styles_list, -- all enabled seasons
	toggle_style_key = "<C-x>", -- binding to toggle between seasons

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
