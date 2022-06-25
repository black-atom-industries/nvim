local c = require("terra.colors")
local cfg = vim.g.terra_config
local util = require("terra.util")

local M = {}

local hl = { langs = {}, plugins = {} }

-- TODO: Declare highlights type
local function vim_highlights(highlights)
	for group_name, group_settings in pairs(highlights) do
		vim.api.nvim_command(
			string.format(
				"highlight %s guifg=%s guibg=%s guisp=%s gui=%s",
				group_name,
				group_settings.fg or "none",
				group_settings.bg or "none",
				group_settings.sp or "none",
				group_settings.fmt or "none"
			)
		)
	end
end

hl.common = {
	Normal = { fg = c.fg, bg = cfg.transparent and c.none or c.bg1 },
	Terminal = { fg = c.fg, bg = cfg.transparent and c.none or c.bg1 },
	EndOfBuffer = { fg = cfg.ending_tildes and c.bg2 or c.bg1, bg = cfg.transparent and c.none or c.bg1 },
	FoldColumn = { fg = c.grey, bg = cfg.transparent and c.none or c.bg1 },
	Folded = { fg = c.grey, bg = cfg.transparent and c.none or c.bg1 },
	SignColumn = { fg = c.fg, bg = cfg.transparent and c.none or c.bg1 },
	ToolbarLine = { fg = c.fg },
	Cursor = { fmt = "reverse" },
	vCursor = { fmt = "reverse" },
	iCursor = { fmt = "reverse" },
	lCursor = { fmt = "reverse" },
	CursorIM = { fmt = "reverse" },
	CursorColumn = { bg = c.bg1 },
	CursorLine = { bg = c.bg1 },
	ColorColumn = { bg = c.bg1 },
	CursorLineNr = { fg = c.yellow },
	LineNr = { fg = c.grey },
	Conceal = { fg = c.grey, bg = c.bg1 },
	DiffAdd = { fg = c.none, bg = c.diff_add },
	DiffChange = { fg = c.none, bg = c.diff_change },
	DiffDelete = { fg = c.none, bg = c.diff_delete },
	DiffText = { fg = c.none, bg = c.diff_text },
	DiffAdded = { fg = c.green },
	DiffRemoved = { fg = c.red },
	DiffFile = { fg = c.cyan },
	DiffIndexLine = { fg = c.grey },
	Directory = { fg = c.blue },
	ErrorMsg = { fg = c.red, fmt = "bold" },
	WarningMsg = { fg = c.yellow, fmt = "bold" },
	MoreMsg = { fg = c.blue, fmt = "bold" },
	IncSearch = { fg = c.bg0, bg = c.dark_cyan },
	Search = { fg = c.bg0, bg = c.dark_cyan },
	Substitute = { fg = c.bg0, bg = c.green },
	MatchParen = { fg = c.none, bg = c.grey },
	NonText = { fg = c.grey },
	Whitespace = { fg = c.grey },
	SpecialKey = { fg = c.grey },
	Pmenu = { fg = c.fg, bg = c.bg1 },
	PmenuSbar = { fg = c.none, bg = c.bg1 },
	PmenuSel = { fg = c.bg0, bg = c.bg_blue },
	WildMenu = { fg = c.bg0, bg = c.blue },
	PmenuThumb = { fg = c.none, bg = c.grey },
	Question = { fg = c.yellow },
	SpellBad = { fg = c.red, fmt = "underline", sp = c.red },
	SpellCap = { fg = c.yellow, fmt = "underline", sp = c.yellow },
	SpellLocal = { fg = c.blue, fmt = "underline", sp = c.blue },
	SpellRare = { fg = c.purple, fmt = "underline", sp = c.purple },
	StatusLine = { fg = c.fg, bg = c.bg2 },
	StatusLineTerm = { fg = c.fg, bg = c.bg2 },
	StatusLineNC = { fg = c.grey, bg = c.bg1 },
	StatusLineTermNC = { fg = c.grey, bg = c.bg1 },
	TabLine = { fg = c.fg, bg = c.bg1 },
	TabLineFill = { fg = c.grey, bg = c.bg1 },
	TabLineSel = { fg = c.fg, bg = c.bg3 },
	VertSplit = { fg = c.grey },
	Visual = { bg = c.bg3 },
	VisualNOS = { fg = c.none, bg = c.bg2 },
	QuickFixLine = { fg = c.blue, bg = c.bg2 },
	Debug = { fg = c.yellow },
	debugPC = { fg = c.bg0, bg = c.green },
	debugBreakpoint = { fg = c.bg0, bg = c.red },
	ToolbarButton = { fg = c.bg0, bg = c.bg_blue },
	FloatBorder = { fg = c.grey, bg = c.bg1 },
	NormalFloat = { fg = c.fg, bg = c.bg1 },
}

hl.css = {
	cssPositioningAttr = { fg = c.blue },
	cssBoxAttr = { fg = c.blue },
	cssTextAttr = { fg = c.blue },
	cssCommonAttr = { fg = c.blue },
	cssCascadeAttr = { fg = c.blue },
	cssFlexibleBoxAttr = { fg = c.blue },
	cssUnitDecorators = { fg = c.yellow },
	cssValueLength = { fg = c.dark_blue },
}

hl.sass = {
	sassVariable = { fg = c.dark_yellow },
	sassMixing = { fg = c.dark_red },
	sassCssAttribute = { fg = c.white },
}

hl.syntax = {
	String = { fg = c.green, fmt = cfg.code_style.strings },
	Character = { fg = c.dark_yellow },
	Number = { fg = c.dark_yellow },
	Float = { fg = c.dark_yellow },
	Boolean = { fg = c.dark_yellow },
	Type = { fg = c.yellow },
	Structure = { fg = c.yellow },
	StorageClass = { fg = c.yellow },
	Identifier = { fg = c.red, fmt = cfg.code_style.variables },
	Constant = { fg = c.cyan },
	PreProc = { fg = c.purple },
	PreCondit = { fg = c.purple },
	Include = { fg = c.purple },
	Keyword = { fg = c.purple, fmt = cfg.code_style.keywords },
	Define = { fg = c.purple },
	Typedef = { fg = c.purple },
	Exception = { fg = c.purple },
	Conditional = { fg = c.purple, fmt = cfg.code_style.keywords },
	Repeat = { fg = c.purple, fmt = cfg.code_style.keywords },
	Statement = { fg = c.purple },
	Macro = { fg = c.red },
	Error = { fg = c.purple },
	Label = { fg = c.purple },
	Special = { fg = c.red },
	SpecialChar = { fg = c.red },
	Function = { fg = c.blue, fmt = cfg.code_style.functions },
	Operator = { fg = c.purple },
	Title = { fg = c.cyan },
	Tag = { fg = c.green },
	Delimiter = { fg = c.light_grey },
	Comment = { fg = c.grey, fmt = cfg.code_style.comments },
	SpecialComment = { fg = c.grey, fmt = cfg.code_style.comments },
	Todo = { fg = c.red, fmt = cfg.code_style.comments },
}

hl.treesitter = {
	TSAnnotation = { fg = c.fg },
	TSAttribute = { fg = c.cyan },
	TSBoolean = { fg = c.dark_yellow },
	TSCharacter = { fg = c.dark_yellow },
	TSComment = { fg = c.grey, fmt = cfg.code_style.comments },
	TSConditional = { fg = c.purple, fmt = cfg.code_style.keywords },
	TSConstant = { fg = c.dark_yellow },
	TSConstBuiltin = { fg = c.dark_yellow },
	TSConstMacro = { fg = c.dark_yellow },
	TSConstructor = { fg = c.yellow, fmt = "bold" },
	TSError = { fg = c.fg },
	TSException = { fg = c.purple },
	TSField = { fg = c.cyan },
	TSFloat = { fg = c.dark_yellow },
	TSFunction = { fg = c.yellow, fmt = cfg.code_style.functions },
	TSFuncBuiltin = { fg = c.cyan, fmt = cfg.code_style.functions },
	TSFuncMacro = { fg = c.cyan, fmt = cfg.code_style.functions },
	TSInclude = { fg = c.purple },
	TSKeyword = { fg = c.red, fmt = cfg.code_style.keywords },
	TSKeywordFunction = { fg = c.purple, fmt = cfg.code_style.functions },
	TSKeywordOperator = { fg = c.purple, fmt = cfg.code_style.keywords },
	TSLabel = { fg = c.dark_yellow },
	TSMethod = { fg = c.blue },
	TSNamespace = { fg = c.yellow },
	TSNone = { fg = c.fg },
	TSNumber = { fg = c.dark_yellow },
	TSOperator = { fg = c.white },
	TSParameter = { fg = c.dark_yellow },
	TSParameterReference = { fg = c.fg },
	TSProperty = { fg = c.blue },
	TSPunctDelimiter = { fg = c.white },
	TSPunctBracket = { fg = c.white },
	TSPunctSpecial = { fg = c.red },
	TSRepeat = { fg = c.purple, fmt = cfg.code_style.keywords },
	TSString = { fg = c.cyan, fmt = cfg.code_style.strings },
	TSStringRegex = { fg = c.orange, fmt = cfg.code_style.strings },
	TSStringEscape = { fg = c.red, fmt = cfg.code_style.strings },
	TSSymbol = { fg = c.cyan },
	TSTag = { fg = c.yellow },
	TSTagDelimiter = { fg = c.dark_yellow },
	TSText = { fg = c.fg },
	TSStrong = { fg = c.fg, fmt = "bold" },
	TSEmphasis = { fg = c.fg, fmt = "italic" },
	TSUnderline = { fg = c.fg, fmt = "underline" },
	TSStrike = { fg = c.fg, fmt = "strikethrough" },
	TSTitle = { fg = c.orange, fmt = "bold" },
	TSLiteral = { fg = c.green },
	TSURI = { fg = c.cyan, fmt = "underline" },
	TSMath = { fg = c.fg },
	TSTextReference = { fg = c.blue },
	TSEnviroment = { fg = c.fg },
	TSEnviromentName = { fg = c.fg },
	TSNote = { fg = c.fg },
	TSWarning = { fg = c.fg },
	TSDanger = { fg = c.fg },
	TSType = { fg = c.yellow },
	TSTypeBuiltin = { fg = c.yellow },
	TSVariable = { fg = c.dark_yellow, fmt = cfg.code_style.variables },
	TSVariableBuiltin = { fg = c.red, fmt = cfg.code_style.variables },
}

local diagnostics_error_color = cfg.diagnostics.darker and c.dark_red or c.red
local diagnostics_hint_color = cfg.diagnostics.darker and c.dark_blue or c.blue
local diagnostics_warn_color = cfg.diagnostics.darker and c.dark_yellow or c.yellow
local diagnostics_info_color = cfg.diagnostics.darker and c.dark_cyan or c.cyan

hl.plugins.lsp = {
	LspCxxHlGroupEnumConstant = { fg = c.dark_yellow },
	LspCxxHlGroupMemberVariable = { fg = c.dark_yellow },
	LspCxxHlGroupNamespace = { fg = c.blue },
	LspCxxHlSkippedRegion = { fg = c.grey },
	LspCxxHlSkippedRegionBeginEnd = { fg = c.red },

	DiagnosticError = { fg = c.red },
	DiagnosticHint = { fg = c.blue },
	DiagnosticInfo = { fg = c.cyan },
	DiagnosticWarn = { fg = c.yellow },

	DiagnosticVirtualTextError = {
		bg = cfg.diagnostics.background and util.darken(diagnostics_error_color, 0.1, c.bg1) or c.none,
		fg = diagnostics_error_color,
	},
	DiagnosticVirtualTextWarn = {
		bg = cfg.diagnostics.background and util.darken(diagnostics_warn_color, 0.1, c.bg1) or c.none,
		fg = diagnostics_warn_color,
	},
	DiagnosticVirtualTextInfo = {
		bg = cfg.diagnostics.background and util.darken(diagnostics_info_color, 0.1, c.bg1) or c.none,
		fg = diagnostics_info_color,
	},
	DiagnosticVirtualTextHint = {
		bg = cfg.diagnostics.background and util.darken(diagnostics_hint_color, 0.1, c.bg1) or c.none,
		fg = diagnostics_hint_color,
	},

	DiagnosticUnderlineError = { fmt = cfg.diagnostics.undercurl and "undercurl" or "underline", sp = c.red },
	DiagnosticUnderlineHint = { fmt = cfg.diagnostics.undercurl and "undercurl" or "underline", sp = c.blue },
	DiagnosticUnderlineInfo = { fmt = cfg.diagnostics.undercurl and "undercurl" or "underline", sp = c.blue },
	DiagnosticUnderlineWarn = { fmt = cfg.diagnostics.undercurl and "undercurl" or "underline", sp = c.yellow },

	LspReferenceText = { bg = c.bg2 },
	LspReferenceWrite = { bg = c.bg2 },
	LspReferenceRead = { bg = c.bg2 },

	LspCodeLens = { fg = c.grey, fmt = cfg.code_style.comments },
	LspCodeLensSeparator = { fg = c.grey },
}

hl.plugins.lsp.LspDiagnosticsDefaultError = hl.plugins.lsp.DiagnosticError
hl.plugins.lsp.LspDiagnosticsDefaultHint = hl.plugins.lsp.DiagnosticHint
hl.plugins.lsp.LspDiagnosticsDefaultInformation = hl.plugins.lsp.DiagnosticInfo
hl.plugins.lsp.LspDiagnosticsDefaultWarning = hl.plugins.lsp.DiagnosticWarn
hl.plugins.lsp.LspDiagnosticsUnderlineError = hl.plugins.lsp.DiagnosticUnderlineError
hl.plugins.lsp.LspDiagnosticsUnderlineHint = hl.plugins.lsp.DiagnosticUnderlineHint
hl.plugins.lsp.LspDiagnosticsUnderlineInformation = hl.plugins.lsp.DiagnosticUnderlineInfo
hl.plugins.lsp.LspDiagnosticsUnderlineWarning = hl.plugins.lsp.DiagnosticUnderlineWarn
hl.plugins.lsp.LspDiagnosticsVirtualTextError = hl.plugins.lsp.DiagnosticVirtualTextError
hl.plugins.lsp.LspDiagnosticsVirtualTextWarning = hl.plugins.lsp.DiagnosticVirtualTextWarn
hl.plugins.lsp.LspDiagnosticsVirtualTextInformation = hl.plugins.lsp.DiagnosticVirtualTextInfo
hl.plugins.lsp.LspDiagnosticsVirtualTextHint = hl.plugins.lsp.DiagnosticVirtualTextHint

hl.plugins.ale = {
	ALEErrorSign = hl.plugins.lsp.DiagnosticError,
	ALEInfoSign = hl.plugins.lsp.DiagnosticInfo,
	ALEWarningSign = hl.plugins.lsp.DiagnosticWarn,
}

hl.plugins.barbar = {
	BufferCurrent = { fmt = "bold" },
	BufferCurrentMod = { fg = c.orange, bg = c.bg1, fmt = "bold,italic" },
	BufferCurrentSign = { fg = c.yellow },
	BufferInactiveMod = { fg = c.light_grey, bg = c.bg2, fmt = "italic" },
	BufferVisible = { fg = c.light_grey, bg = c.bg1 },
	BufferVisibleMod = { fg = c.yellow, bg = c.bg1, fmt = "italic" },
	BufferVisibleIndex = { fg = c.light_grey, bg = c.bg1 },
	BufferVisibleSign = { fg = c.light_grey, bg = c.bg1 },
	BufferVisibleTarget = { fg = c.light_grey, bg = c.bg1 },
}

hl.plugins.cmp = {
	CmpItemAbbr = { fg = c.fg },
	CmpItemAbbrDeprecated = { fg = c.light_grey, fmt = "strikethrough" },
	CmpItemAbbrMatch = { fg = c.cyan },
	CmpItemAbbrMatchFuzzy = { fg = c.cyan, fmt = "underline" },
	CmpItemMenu = { fg = c.light_grey },
	CmpItemKind = { fg = c.purple, fmt = cfg.cmp_itemkind_reverse and "reverse" },
}

hl.plugins.coc = {
	CocErrorSign = hl.plugins.lsp.DiagnosticError,
	CocHintSign = hl.plugins.lsp.DiagnosticHint,
	CocInfoSign = hl.plugins.lsp.DiagnosticInfo,
	CocWarningSign = hl.plugins.lsp.DiagnosticWarn,
}

hl.plugins.whichkey = {
	WhichKey = { fg = c.red },
	WhichKeyDesc = { fg = c.blue },
	WhichKeyGroup = { fg = c.dark_yellow },
	WhichKeySeperator = { fg = c.green },
}

-- TODO: Solvable with a Link to ToggleTermNormal?
hl.plugins.toggleterm = {
	ToggleTerm1FloatBorder = { fg = c.grey },
	ToggleTerm1NormalFloat = { fg = c.fg, bg = c.bg1 },
	ToggleTerm2FloatBorder = { fg = c.grey },
	ToggleTerm2NormalFloat = { fg = c.fg, bg = c.bg1 },
	ToggleTerm3FloatBorder = { fg = c.grey },
	ToggleTerm3NormalFloat = { fg = c.fg, bg = c.bg1 },
	ToggleTerm4FloatBorder = { fg = c.grey },
	ToggleTerm4NormalFloat = { fg = c.fg, bg = c.bg1 },
	ToggleTerm5FloatBorder = { fg = c.grey },
	ToggleTerm5NormalFloat = { fg = c.fg, bg = c.bg1 },
	ToggleTerm6FloatBorder = { fg = c.grey },
	ToggleTerm6NormalFloat = { fg = c.fg, bg = c.bg1 },
	ToggleTerm7FloatBorder = { fg = c.grey },
	ToggleTerm7NormalFloat = { fg = c.fg, bg = c.bg1 },
	ToggleTerm8FloatBorder = { fg = c.grey },
	ToggleTerm8NormalFloat = { fg = c.fg, bg = c.bg1 },
	ToggleTerm9FloatBorder = { fg = c.grey },
	ToggleTerm9NormalFloat = { fg = c.fg, bg = c.bg1 },
}

hl.plugins.gitgutter = {
	GitGutterAdd = { fg = c.green },
	GitGutterChange = { fg = c.blue },
	GitGutterDelete = { fg = c.red },
}

hl.plugins.hop = {
	HopNextKey = { fg = c.red, fmt = "bold" },
	HopNextKey1 = { fg = c.cyan, fmt = "bold" },
	HopNextKey2 = { fg = util.darken(c.blue, 0.7) },
	HopUnmatched = { fg = c.grey },
}

-- comment
hl.plugins.diffview = {
	DiffviewFilePanelTitle = { fg = c.blue, fmt = "bold" },
	DiffviewFilePanelCounter = { fg = c.purple, fmt = "bold" },
	DiffviewFilePanelFileName = { fg = c.fg },
	DiffviewNormal = hl.common.Normal,
	DiffviewCursorLine = hl.common.CursorLine,
	DiffviewVertSplit = hl.common.VertSplit,
	DiffviewSignColumn = hl.common.SignColumn,
	DiffviewStatusLine = hl.common.StatusLine,
	DiffviewStatusLineNC = hl.common.StatusLineNC,
	DiffviewEndOfBuffer = hl.common.EndOfBuffer,
	DiffviewFilePanelRootPath = { fg = c.grey },
	DiffviewFilePanelPath = { fg = c.grey },
	DiffviewFilePanelInsertions = { fg = c.green },
	DiffviewFilePanelDeletions = { fg = c.red },
	DiffviewStatusAdded = { fg = c.green },
	DiffviewStatusUntracked = { fg = c.blue },
	DiffviewStatusModified = { fg = c.blue },
	DiffviewStatusRenamed = { fg = c.blue },
	DiffviewStatusCopied = { fg = c.blue },
	DiffviewStatusTypeChange = { fg = c.blue },
	DiffviewStatusUnmerged = { fg = c.blue },
	DiffviewStatusUnknown = { fg = c.red },
	DiffviewStatusDeleted = { fg = c.red },
	DiffviewStatusBroken = { fg = c.red },
}

hl.plugins.gitsigns = {
	GitSignsAdd = { fg = c.green },
	GitSignsAddLn = { fg = c.green },
	GitSignsAddNr = { fg = c.green },
	GitSignsChange = { fg = c.blue },
	GitSignsChangeLn = { fg = c.blue },
	GitSignsChangeNr = { fg = c.blue },
	GitSignsDelete = { fg = c.red },
	GitSignsDeleteLn = { fg = c.red },
	GitSignsDeleteNr = { fg = c.red },
}

hl.plugins.nvim_tree = {
	NvimTreeNormal = { fg = c.fg, bg = cfg.transparent and c.none or c.bg0 },
	NvimTreeVertSplit = { fg = c.grey, bg = cfg.transparent and c.none or c.bg1 },
	NvimTreeEndOfBuffer = { fg = cfg.ending_tildes and c.bg2 or c.bg1, bg = cfg.transparent and c.none or c.bg0 },
	NvimTreeRootFolder = { fg = c.orange, fmt = "bold" },
	NvimTreeGitDirty = { fg = c.yellow },
	NvimTreeGitNew = { fg = c.green },
	NvimTreeGitDeleted = { fg = c.red },
	NvimTreeSpecialFile = { fg = c.yellow, fmt = "underline" },
	NvimTreeIndentMarker = { fg = c.fg },
	NvimTreeImageFile = { fg = c.dark_purple },
	NvimTreeSymlink = { fg = c.purple },
	NvimTreeFolderName = { fg = c.blue },
	NvimTreeCursorLine = { bg = c.bg1 },
	NvimTreeWindowPicker = { fg = c.white, bg = c.grey },
}

-- TODO: NeoTree Highlights
hl.plugins.neo_tree = {
	-- NeoTreeNormal = { fg = c.fg, bg = cfg.transparent and c.none or c.bg_d },
	-- NeoTreeNormalNC = { fg = c.fg, bg = cfg.transparent and c.none or c.bg_d },
}

hl.plugins.telescope = {
	TelescopeTitle = { fg = c.dark_yellow },
	TelescopeBorder = { fg = c.red },
	TelescopePromptBorder = { fg = c.grey },
	TelescopeResultsBorder = { fg = c.grey },
	TelescopePreviewBorder = { fg = c.grey },
	TelescopeMatching = { fg = c.orange, fmt = "bold" },
	TelescopePromptPrefix = { fg = c.green },
	TelescopeSelection = { bg = c.bg2 },
	TelescopeSelectionCaret = { fg = c.yellow },
}

hl.plugins.dashboard = {
	DashboardShortCut = { fg = c.blue },
	DashboardHeader = { fg = c.yellow },
	DashboardCenter = { fg = c.cyan },
	DashboardFooter = { fg = c.dark_red, fmt = "italic" },
}

hl.plugins.outline = {
	FocusedSymbol = { fg = c.purple, bg = c.bg2, fmt = "bold" },
	AerialLine = { fg = c.purple, bg = c.bg2, fmt = "bold" },
}

hl.plugins.ts_rainbow = {
	rainbowcol1 = { fg = c.grey },
	rainbowcol2 = { fg = c.yellow },
	rainbowcol3 = { fg = c.blue },
	rainbowcol4 = { fg = c.dark_yellow },
	rainbowcol5 = { fg = c.purple },
	rainbowcol6 = { fg = c.green },
	rainbowcol7 = { fg = c.red },
}

hl.plugins.incline = {
	InclineNormal = { bg = c.bg3 },
	InclineNormalNC = { bg = c.bg2 },
}

hl.langs.c = {
	cInclude = { fg = c.blue },
	cStorageClass = { fg = c.purple },
	cTypedef = { fg = c.purple },
	cDefine = { fg = c.cyan },
	cTSInclude = { fg = c.blue },
	cTSConstant = { fg = c.cyan },
	cTSConstMacro = { fg = c.purple },
	cTSOperator = { fg = c.purple },
}

hl.langs.cpp = {
	cppStatement = { fg = c.purple, fmt = "bold" },
	cppTSInclude = { fg = c.blue },
	cppTSConstant = { fg = c.cyan },
	cppTSConstMacro = { fg = c.purple },
	cppTSOperator = { fg = c.purple },
}

hl.langs.markdown = {
	markdownBlockquote = { fg = c.grey },
	markdownBold = { fg = c.none, fmt = "bold" },
	markdownBoldDelimiter = { fg = c.grey },
	markdownCode = { fg = c.green },
	markdownCodeBlock = { fg = c.green },
	markdownCodeDelimiter = { fg = c.yellow },
	markdownH1 = { fg = c.red, fmt = "bold" },
	markdownH2 = { fg = c.purple, fmt = "bold" },
	markdownH3 = { fg = c.orange, fmt = "bold" },
	markdownH4 = { fg = c.red, fmt = "bold" },
	markdownH5 = { fg = c.purple, fmt = "bold" },
	markdownH6 = { fg = c.orange, fmt = "bold" },
	markdownHeadingDelimiter = { fg = c.grey },
	markdownHeadingRule = { fg = c.grey },
	markdownId = { fg = c.yellow },
	markdownIdDeclaration = { fg = c.red },
	markdownItalic = { fg = c.none, fmt = "italic" },
	markdownItalicDelimiter = { fg = c.grey, fmt = "italic" },
	markdownLinkDelimiter = { fg = c.grey },
	markdownLinkText = { fg = c.red },
	markdownLinkTextDelimiter = { fg = c.grey },
	markdownListMarker = { fg = c.red },
	markdownOrderedListMarker = { fg = c.red },
	markdownRule = { fg = c.purple },
	markdownUrl = { fg = c.blue, fmt = "underline" },
	markdownUrlDelimiter = { fg = c.grey },
	markdownUrlTitleDelimiter = { fg = c.green },
}

hl.langs.php = {
	phpFunctions = { fg = c.fg, fmt = cfg.code_style.functions },
	phpMethods = { fg = c.cyan },
	phpStructure = { fg = c.purple },
	phpOperator = { fg = c.purple },
	phpMemberSelector = { fg = c.fg },
	phpVarSelector = { fg = c.orange, fmt = cfg.code_style.variables },
	phpIdentifier = { fg = c.orange, fmt = cfg.code_style.variables },
	phpBoolean = { fg = c.cyan },
	phpNumber = { fg = c.dark_yellow },
	phpHereDoc = { fg = c.green },
	phpNowDoc = { fg = c.green },
	phpSCKeyword = { fg = c.purple, fmt = cfg.code_style.keywords },
	phpFCKeyword = { fg = c.purple, fmt = cfg.code_style.keywords },
	phpRegion = { fg = c.blue },
}

hl.langs.scala = {
	scalaNameDefinition = { fg = c.fg },
	scalaInterpolationBoundary = { fg = c.purple },
	scalaInterpolation = { fg = c.purple },
	scalaTypeOperator = { fg = c.red },
	scalaOperator = { fg = c.red },
	scalaKeywordModifier = { fg = c.red, fmt = cfg.code_style.keywords },
}

hl.langs.tex = {
	latexTSInclude = { fg = c.blue },
	latexTSFuncMacro = { fg = c.fg, fmt = cfg.code_style.functions },
	latexTSEnvironment = { fg = c.cyan, fmt = "bold" },
	latexTSEnvironmentName = { fg = c.yellow },
	texCmdEnv = { fg = c.cyan },
	texEnvArgName = { fg = c.yellow },
	latexTSTitle = { fg = c.green },
	latexTSType = { fg = c.blue },
	latexTSMath = { fg = c.dark_yellow },
	texMathZoneX = { fg = c.dark_yellow },
	texMathZoneXX = { fg = c.dark_yellow },
	texMathDelimZone = { fg = c.light_grey },
	texMathDelim = { fg = c.purple },
	texMathOper = { fg = c.red },
	texCmd = { fg = c.purple },
	texCmdPart = { fg = c.blue },
	texCmdPackage = { fg = c.blue },
	texPgfType = { fg = c.yellow },
}

hl.langs.vim = {
	vimOption = { fg = c.red },
	vimSetEqual = { fg = c.yellow },
	vimMap = { fg = c.purple },
	vimMapModKey = { fg = c.dark_yellow },
	vimNotation = { fg = c.red },
	vimMapLhs = { fg = c.fg },
	vimMapRhs = { fg = c.blue },
	vimVar = { fg = c.fg, fmt = cfg.code_style.variables },
	vimCommentTitle = { fg = c.light_grey, fmt = cfg.code_style.comments },
}

local lsp_kind_icons_color = {
	Default = c.purple,
	Class = c.yellow,
	Color = c.green,
	Constant = c.orange,
	Constructor = c.blue,
	Enum = c.purple,
	EnumMember = c.yellow,
	Event = c.yellow,
	Field = c.purple,
	File = c.blue,
	Folder = c.orange,
	Function = c.blue,
	Interface = c.green,
	Keyword = c.cyan,
	Method = c.blue,
	Module = c.orange,
	Operator = c.red,
	Property = c.cyan,
	Reference = c.orange,
	Snippet = c.red,
	Struct = c.purple,
	Text = c.light_grey,
	TypeParameter = c.red,
	Unit = c.green,
	Value = c.orange,
	Variable = c.purple,
}

function M.setup()
	-- define cmp and aerial kind highlights with lsp_kind_icons_color
	for kind, color in pairs(lsp_kind_icons_color) do
		hl.plugins.cmp["CmpItemKind" .. kind] = { fg = color, fmt = cfg.cmp_itemkind_reverse and "reverse" }
		hl.plugins.outline["Aerial" .. kind .. "Icon"] = { fg = color }
	end

	vim_highlights(hl.common)
	vim_highlights(hl.syntax)
	vim_highlights(hl.css)
	vim_highlights(hl.sass)
	vim_highlights(hl.treesitter)
	for _, group in pairs(hl.langs) do
		vim_highlights(group)
	end
	for _, group in pairs(hl.plugins) do
		vim_highlights(group)
	end

	-- user defined highlights: vim_highlights function cannot be used because it sets an attribute to none if not specified
	local function replace_color(prefix, color_name)
		if not color_name then
			return ""
		end
		if color_name:sub(1, 1) == "$" then
			local name = color_name:sub(2, -1)
			color_name = c[name]
			if not color_name then
				vim.schedule(function()
					vim.notify(
						'terra.nvim: unknown color "' .. name .. '"',
						vim.log.levels.ERROR,
						{ title = "terra.nvim" }
					)
				end)
				return ""
			end
		end
		return prefix .. "=" .. color_name
	end

	for group_name, group_settings in pairs(vim.g.terra_config.highlights) do
		vim.api.nvim_command(
			string.format(
				"highlight %s %s %s %s %s",
				group_name,
				replace_color("guifg", group_settings.fg),
				replace_color("guibg", group_settings.bg),
				replace_color("guisp", group_settings.sp),
				replace_color("gui", group_settings.fmt)
			)
		)
	end
end

return M
