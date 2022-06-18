local M = {}

-- TODO: Config Field: `season: spring | summer | fall | winter`
M.styles_list = { "dark", "darker", "cool", "warm", "warmer", "light", "spring" }

---Change terra option (vim.g.terra_config.option)
---It can't be changed directly by modifing that field due to a Neovim lua bug with global variables (terra_config is a global variable)
---@param opt string: option name
---@param value any: new value
-- INFO: This seems tiny but if often used
-- TODO: Rename `cfg` to `config`
function M.set_options(opt, value)
	local cfg = vim.g.terra_config
	cfg[opt] = value
	vim.g.terra_config = cfg
end

---Apply the colorscheme (same as ':colorscheme terra')
function M.colorscheme()
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end
	vim.o.termguicolors = true
	vim.g.colors_name = "terra"
	if vim.o.background == "light" then
		M.set_options("style", "light")
	elseif vim.g.terra_config.style == "light" then
		M.set_options("style", "dark")
	end
	require("terra.highlights").setup()
	require("terra.terminal").setup()
end

---Toggle between terra styles
function M.toggle()
	local index = vim.g.terra_config.toggle_style_index + 1
	if index > #vim.g.terra_config.toggle_style_list then
		index = 1
	end
	M.set_options("style", vim.g.terra_config.toggle_style_list[index])
	M.set_options("toggle_style_index", index)
	if vim.g.terra_config.style == "light" then
		vim.o.background = "light"
	else
		vim.o.background = "dark"
	end
	vim.api.nvim_command("colorscheme terra")
end

-- TODO: Put in seperate file
local default_config = {
	-- Main options --
	style = "spring", -- choose between 'spring', 'dark', 'darker', 'cool', 'warm', 'warmer' and 'light'
	toggle_style_key = "<leader>ts",
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

---Setup terra.nvim options, without applying colorscheme
---@param opts table: a table containing options
function M.setup(opts)
	if not vim.g.terra_config or not vim.g.terra_config.loaded then -- if it's the first time setup() is called
		vim.g.terra_config = vim.tbl_deep_extend("keep", vim.g.terra_config or {}, default_config)
		local old_config = require("terra.old_config")
		if old_config then
			opts = old_config
		end
		M.set_options("loaded", true)
		M.set_options("toggle_style_index", 0)
	end
	if opts then
		vim.g.terra_config = vim.tbl_deep_extend("force", vim.g.terra_config, opts)
		if opts.toggle_style_list then -- this table cannot be extended, it has to be replaced
			M.set_options("toggle_style_list", opts.toggle_style_list)
		end
	end
	vim.api.nvim_set_keymap(
		"n",
		vim.g.terra_config.toggle_style_key,
		'<cmd>lua require("terra").toggle()<cr>',
		{ noremap = true, silent = true }
	)
end

function M.load()
	vim.api.nvim_command("colorscheme terra")
end

return M
