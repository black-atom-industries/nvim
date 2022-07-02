local M = {}

-- TODO: Rename cfg
local cfg = vim.g.terra_config

-- TODO: Rename c
local c = require("terra.colors")

-- INFO: This seems to set the global vim terminal colors
function M.setup()
	if not cfg.term_colors then
		return
	end
	vim.g.terminal_color_0 = c.palette.grey
	vim.g.terminal_color_1 = c.palette.red
	vim.g.terminal_color_2 = c.palette.green
	vim.g.terminal_color_3 = c.palette.yellow
	vim.g.terminal_color_4 = c.palette.blue
	vim.g.terminal_color_5 = c.palette.purple
	vim.g.terminal_color_6 = c.palette.cyan
	vim.g.terminal_color_7 = c.semantic.fg
	vim.g.terminal_color_8 = c.palette.black
	vim.g.terminal_color_9 = c.palette.red
	vim.g.terminal_color_10 = c.palette.green
	vim.g.terminal_color_11 = c.palette.yellow
	vim.g.terminal_color_12 = c.palette.blue
	vim.g.terminal_color_13 = c.palette.purple
	vim.g.terminal_color_14 = c.palette.cyan
	vim.g.terminal_color_15 = c.semantic.fg
end

return M
