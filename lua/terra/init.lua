local default_config = require("terra.config")

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

	-- If the global option `background` is set to `light` we set the style to the "light" theme
	-- TODO: We want for every theme a dark and light variant, so we have to fix that
	if vim.o.background == "light" then
		M.set_options("style", "light")
		-- QUESTION: This confuses me.. Why we want to we switch to the dark theme if the terra_config.style is set to "light"??
	elseif vim.g.terra_config.style == "light" then
		M.set_options("style", "dark")
	end

	-- Now set up the highlights and terminal
	require("terra.highlights").setup()
	require("terra.terminal").setup()
end

---Toggle between terra styles
function M.toggle()
	local index = vim.g.terra_config.toggle_style_index + 1

	if index > #vim.g.terra_config.toggle_style_list then
		index = 1
	end

	local next_style_name = vim.g.terra_config.toggle_style_list[index]

	vim.notify("Selected style: " .. next_style_name)

	M.set_options("style", next_style_name)

	M.set_options("toggle_style_index", index)

	if vim.g.terra_config.style == "light" then
		vim.o.background = "light"
	else
		vim.o.background = "dark"
	end

	vim.api.nvim_command("colorscheme terra")
end

---Setup terra.nvim options, without applying colorscheme
---@param opts table: a table containing options
function M.setup(opts)
	-- If it's the first time setup() is called, load the default config
	if not vim.g.terra_config or not vim.g.terra_config.loaded then
		vim.g.terra_config = vim.tbl_deep_extend("keep", vim.g.terra_config or {}, default_config)

		-- TODO: Remove old config stuff
		local old_config = require("terra.old_config")

		if old_config then
			opts = old_config
		end

		-- Mark the theme as loaded
		M.set_options("loaded", true)

		-- Toggle the first style
		M.set_options("toggle_style_index", 0)
	end

	-- If there are defined options, set them in the global config
	if opts then
		vim.g.terra_config = vim.tbl_deep_extend("force", vim.g.terra_config, opts)

		if opts.toggle_style_list then -- this table cannot be extended, it has to be replaced
			M.set_options("toggle_style_list", opts.toggle_style_list)
		end
	end

	-- Set the toggle style key from config
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
