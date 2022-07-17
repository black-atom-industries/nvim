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

-- TODO: Type Highlights
---Apply `highlight` command for each group in highlights
---@param highlights HighlightGroup
M.set_highlights = function(highlights)
	-- TODO: Type four `group_name` and `group_settings`

	---@param hl_group_name HighlightGroupName
	---@param hl_group_settings HighlightGroupSettings
	local apply_highlights = function(hl_group_name, hl_group_settings)
		vim.api.nvim_command(
			string.format(
				"highlight %s guifg=%s guibg=%s guisp=%s gui=%s",
				hl_group_name,
				hl_group_settings.fg or "none",
				hl_group_settings.bg or "none",
				hl_group_settings.sp or "none",
				hl_group_settings.fmt or "none"
			)
		)
	end

	for group_name, group_settings in pairs(highlights) do
		apply_highlights(group_name, group_settings)
	end
end

return M
