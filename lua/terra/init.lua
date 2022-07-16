local M = {}

---Change terra option (vim.g.terra_config.option)
---It can't be changed directly by modifing that field due to a Neovim lua bug with global variables (terra_config is a global variable)
---@param opt string: option name
---@param value any: new value
function M.set_options(opt, value)
	local config = vim.g.terra_config
	config[opt] = value
	vim.g.terra_config = config
end

---Apply the colorscheme (same as ':colorscheme terra')
function M.colorscheme()
	-- Clear all highlights
	vim.cmd("hi clear")

	-- Reset syntax highlighting
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	-- Set vim options
	vim.o.termguicolors = true
	vim.g.colors_name = "terra"

	-- If the global option `background` is set to `light` we set the terra config to "day"-time
	if vim.o.background == "light" then
		M.set_options("time", "day")
	end

	-- Now set up the highlights and terminal
	require("terra.highlights").setup()
	require("terra.terminal").setup()
end

---Syncs `time` of TerraConfig with `vim.o.background`
---@param time "day" | "night"
function M.sync_terra_time_with_vim_opt_background(time)
	if time == "day" then
		vim.o.background = "light"
	else
		vim.o.background = "dark"
	end
end

---Toggle between terra styles
function M.toggle_season()
	local index = vim.g.terra_config.toggle_style_index + 1

	if index > #vim.g.terra_config.enabled_seasons then
		index = 1
	end

	local next_style_name = vim.g.terra_config.enabled_seasons[index]

	vim.notify("Selected style: " .. next_style_name)

	M.set_options("style", next_style_name)

	M.set_options("toggle_style_index", index)

	M.sync_terra_time_with_vim_opt_background(vim.g.terra_config.time)

	vim.api.nvim_command("colorscheme terra")
end

---Setup terra.nvim options, without applying colorscheme
---@param opts table: a table containing options
function M.setup(opts)
	local default_config = require("terra.config").default_config

	-- If it's the first time setup() is called, load the default config
	if not vim.g.terra_config or not vim.g.terra_config.loaded then
		vim.g.terra_config = vim.tbl_deep_extend(
			"keep",
			vim.g.terra_config or {},
			default_config
		)

		-- Mark the theme as loaded
		M.set_options("loaded", true)

		-- Toggle the first style
		M.set_options("toggle_style_index", 0)
	end

	-- If there are defined options, set them in the global config
	if opts then
		vim.g.terra_config = vim.tbl_deep_extend("force", vim.g.terra_config, opts)

		if opts.enabled_seasons then -- this table cannot be extended, it has to be replaced
			M.set_options("enabled_seasons", opts.enabled_seasons)
		end
	end

	-- Set the toggle style key from config
	vim.api.nvim_set_keymap(
		"n",
		vim.g.terra_config.toggle_season,
		'<cmd>lua require("terra").toggle_season()<CR>',
		{ noremap = true, silent = true }
	)
end

function M.load()
	vim.api.nvim_command("colorscheme terra")
end

return M
