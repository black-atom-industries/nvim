local M = {}

-- TODO: Finalize primary colors
-- TODO: Setup luadoc typings
-- TODO: After finalize, update Figma and declare symbols
-- TODO: Dedicated highlights return for each theme

-- ---@class Primary
-- M.primary = {
-- 	primary1 = "#141F19",
-- 	primary2 = "#17251E",
-- 	primary3 = "#123524",
-- 	primary4 = "#1B5037",
-- 	primary5 = "#256C49",
-- 	primary6 = "#50946A",
-- 	primary7 = "#79B791",
-- 	primary8 = "#ADE3C9",
-- 	primary9 = "#D6F1E4",
-- }

---@class Primary Theme Primary Colors
M.primary = {
	"#141F19",
	"#17251E",
	"#1B2C24",
	"#284336",
	"#365B49",
	"#568F6B",
	"#79B791",
	"#ADE3C9",
	"#D6F1E4",
}

---@class Palette Base theme color pallette
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

	light_grey = "#9EB6A5",
	white = "#F1E5D6",
}

---Second Level Semantics Color Definitions which have to be based on the Palette colors
---@class Semantic
M.semantic = {
	bg0 = M.primary[9],
	bg1 = "#ffffff",
	bg2 = M.primary[7],
	bg3 = M.primary[6],

	fg = M.primary[1],
	fg_active = M.palette.yellow,
	fg_dimmed = M.palette.grey,

	diff_add = "#27341c",
	diff_delete = "#331c1e",
	diff_change = "#102b40",
	diff_text = "#1c4a6e",
}

---A merged table of the theme primary, palette and semantic colors
---@return Colors
M.colors = function()
	return {
		none = "none",
		primary = M.primary,
		palette = M.palette,
		semantic = M.semantic,
	}
end

return M
