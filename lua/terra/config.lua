local M = {}

-- TODO: terra_config.season = "spring" | "summer" | "fall" | "winter"
-- TODO: terra_config.time = "night" | "day"

M.styles_list = {
	"spring",
	"light",
}

M.default_config = {
	-- Main options --
	style = "spring", -- choose between 'spring', 'dark', 'darker', 'cool', 'warm', 'warmer' and 'light'
	toggle_style_key = "<leader>Ts",
	toggle_style_list = M.styles_list,
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
