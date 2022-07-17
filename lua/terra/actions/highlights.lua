local M = {}

---Reset Vim Highlights and Syntax
---@return nil
M.reset = function()
	-- Clear all highlights
	vim.cmd("hi clear")

	-- Reset syntax highlighting
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end
end

return M
