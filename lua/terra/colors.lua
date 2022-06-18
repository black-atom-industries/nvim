local colors = require("terra.palette")

-- QUESTION: Not quite sure what this does yet
local function select_colors()
	local selected = { none = "none" }
	selected = vim.tbl_extend("force", selected, colors[vim.g.terra_config.style])
	selected = vim.tbl_extend("force", selected, vim.g.terra_config.colors)
	return selected
end

return select_colors()
