local M = {}

---@class Primary
M.primary = {
	"#141F19",
	"#17251E",
	"#123524",
	"#1B5037",
	"#256C49",
	"#50946A",
	"#79B791",
	"#ADE3C9",
	"#D6F1E4",
}

---@class Palette
M.palette = {
	black = M.primary[1],
	grey = "#455F56",

	dark_red = "#DA5B50",
	red = "#D67676",

	dark_green = M.primary[5],
	green = "#619B8A",

	dark_yellow = "#DD9046",
	yellow = "#F2C14E",

	dark_blue = "#629AD2",
	blue = "#7CA6CF",

	dark_purple = "#B07BAC",
	purple = "#BFA9D6",

	dark_cyan = "#47945D",
	cyan = "#7CC08F",

	light_grey = M.primary[8],
	white = M.primary[9],
}

---@class Semantics Second Level Semantics Color Definitions which are based on the palette
M.semantics = {
	bg0 = M.primary[1],
	bg1 = M.primary[2],
	bg2 = M.primary[3],
	bg3 = M.primary[4],

	fg = M.palette.white,

	diff_add = "#27341c",
	diff_delete = "#331c1e",
	diff_change = "#102b40",
	diff_text = "#1c4a6e",
}

---Merges the palette with the semantics
---@return table Merged Table of Both Color Tables
M.colors = function()
	return vim.tbl_deep_extend("keep", M.palette, M.semantics)
end

-- TODO: Dedicated highlights return for each theme

return M
