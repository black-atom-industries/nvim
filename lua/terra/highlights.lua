local colors = require("terra.colors")
local config = vim.g.terra_config
local util = require("terra.util")

local M = {}

local hl = { langs = {}, plugins = {} }

-- TODO: Declare highlights type
local function vim_set_highlights(highlights)
	-- For every pair in the highlights table set the highlights via a formated string
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
	Normal = { fg = colors.fg, bg = config.transparent and colors.none or colors.bg1 },
	Terminal = { fg = colors.fg, bg = config.transparent and colors.none or colors.bg1 },
	EndOfBuffer = {
		fg = config.ending_tildes and colors.bg2 or colors.bg1,
		bg = config.transparent and colors.none or colors.bg1,
	},
	FoldColumn = { fg = colors.grey, bg = config.transparent and colors.none or colors.bg1 },
	Folded = { fg = colors.grey, bg = config.transparent and colors.none or colors.bg1 },
	SignColumn = { fg = colors.fg, bg = config.transparent and colors.none or colors.bg1 },
	ToolbarLine = { fg = colors.fg },
	Cursor = { fmt = "reverse" },
	vCursor = { fmt = "reverse" },
	iCursor = { fmt = "reverse" },
	lCursor = { fmt = "reverse" },
	CursorIM = { fmt = "reverse" },
	CursorColumn = { bg = colors.bg1 },
	CursorLine = { bg = colors.bg1 },
	ColorColumn = { bg = colors.bg1 },
	CursorLineNr = { fg = colors.yellow },
	LineNr = { fg = colors.grey },
	Conceal = { fg = colors.grey, bg = colors.bg1 },
	DiffAdd = { fg = colors.none, bg = colors.diff_add },
	DiffChange = { fg = colors.none, bg = colors.diff_change },
	DiffDelete = { fg = colors.none, bg = colors.diff_delete },
	DiffText = { fg = colors.none, bg = colors.diff_text },
	DiffAdded = { fg = colors.green },
	DiffRemoved = { fg = colors.red },
	DiffFile = { fg = colors.cyan },
	DiffIndexLine = { fg = colors.grey },
	Directory = { fg = colors.blue },
	ErrorMsg = { fg = colors.red, fmt = "bold" },
	WarningMsg = { fg = colors.yellow, fmt = "bold" },
	MoreMsg = { fg = colors.blue, fmt = "bold" },
	IncSearch = { fg = colors.bg0, bg = colors.blue },
	Search = { fg = colors.bg0, bg = colors.blue },
	Substitute = { fg = colors.bg0, bg = colors.green },
	MatchParen = { fg = colors.none, bg = colors.grey },
	NonText = { fg = colors.grey },
	Whitespace = { fg = colors.grey },
	SpecialKey = { fg = colors.grey },
	Pmenu = { fg = colors.fg, bg = colors.bg0 },
	PmenuSbar = { fg = colors.none, bg = colors.bg0 },
	PmenuSel = { fg = colors.bg0, bg = colors.blue },
	WildMenu = { fg = colors.bg0, bg = colors.blue },
	PmenuThumb = { fg = colors.none, bg = colors.grey },
	Question = { fg = colors.yellow },
	SpellBad = { fg = colors.red, fmt = "underline", sp = colors.red },
	SpellCap = { fg = colors.yellow, fmt = "underline", sp = colors.yellow },
	SpellLocal = { fg = colors.blue, fmt = "underline", sp = colors.blue },
	SpellRare = { fg = colors.purple, fmt = "underline", sp = colors.purple },
	StatusLine = { fg = colors.fg, bg = colors.bg2 },
	StatusLineTerm = { fg = colors.fg, bg = colors.bg2 },
	StatusLineNC = { fg = colors.grey, bg = colors.bg1 },
	StatusLineTermNC = { fg = colors.grey, bg = colors.bg1 },
	TabLine = { fg = colors.fg, bg = colors.bg1 },
	TabLineFill = { fg = colors.grey, bg = colors.bg1 },
	TabLineSel = { fg = colors.fg, bg = colors.bg3 },
	VertSplit = { fg = colors.grey },
	Visual = { bg = colors.bg3 },
	VisualNOS = { fg = colors.none, bg = colors.bg2 },
	QuickFixLine = { fg = colors.blue, bg = colors.bg2 },
	Debug = { fg = colors.yellow },
	debugPC = { fg = colors.bg0, bg = colors.green },
	debugBreakpoint = { fg = colors.bg0, bg = colors.red },
	ToolbarButton = { fg = colors.bg0, bg = colors.blue },
	FloatBorder = { fg = colors.grey, bg = colors.bg1 },
	NormalFloat = { fg = colors.fg, bg = colors.bg1 },
}

hl.syntax = {
	String = { fg = colors.green, fmt = config.code_style.strings },
	Character = { fg = colors.dark_yellow },
	Number = { fg = colors.dark_yellow },
	Float = { fg = colors.dark_yellow },
	Boolean = { fg = colors.dark_yellow },
	Type = { fg = colors.yellow },
	Structure = { fg = colors.yellow },
	StorageClass = { fg = colors.yellow },
	Identifier = { fg = colors.red, fmt = config.code_style.variables },
	Constant = { fg = colors.cyan },
	PreProc = { fg = colors.purple },
	PreCondit = { fg = colors.purple },
	Include = { fg = colors.purple },
	Keyword = { fg = colors.purple, fmt = config.code_style.keywords },
	Define = { fg = colors.purple },
	Typedef = { fg = colors.purple },
	Exception = { fg = colors.purple },
	Conditional = { fg = colors.purple, fmt = config.code_style.keywords },
	Repeat = { fg = colors.purple, fmt = config.code_style.keywords },
	Statement = { fg = colors.purple },
	Macro = { fg = colors.red },
	Error = { fg = colors.purple },
	Label = { fg = colors.purple },
	Special = { fg = colors.red },
	SpecialChar = { fg = colors.red },
	Function = { fg = colors.blue, fmt = config.code_style.functions },
	Operator = { fg = colors.purple },
	Title = { fg = colors.cyan },
	Tag = { fg = colors.green },
	Delimiter = { fg = colors.light_grey },
	Comment = { fg = colors.grey, fmt = config.code_style.comments },
	SpecialComment = { fg = colors.grey, fmt = config.code_style.comments },
	Todo = { fg = colors.red, fmt = config.code_style.comments },
}

hl.treesitter = {
	TSAnnotation = { fg = colors.fg },
	TSAttribute = { fg = colors.cyan },
	TSBoolean = { fg = colors.dark_yellow },
	TSCharacter = { fg = colors.dark_yellow },
	TSComment = { fg = colors.grey, fmt = config.code_style.comments },
	TSConditional = { fg = colors.purple, fmt = config.code_style.keywords },
	TSConstant = { fg = colors.dark_yellow },
	TSConstBuiltin = { fg = colors.dark_yellow },
	TSConstMacro = { fg = colors.dark_yellow },
	TSConstructor = { fg = colors.yellow, fmt = "bold" },
	TSError = { fg = colors.fg },
	TSException = { fg = colors.purple },
	TSField = { fg = colors.cyan },
	TSFloat = { fg = colors.dark_yellow },
	TSFunction = { fg = colors.yellow, fmt = config.code_style.functions },
	TSFuncBuiltin = { fg = colors.cyan, fmt = config.code_style.functions },
	TSFuncMacro = { fg = colors.cyan, fmt = config.code_style.functions },
	TSInclude = { fg = colors.purple },
	TSKeyword = { fg = colors.red, fmt = config.code_style.keywords },
	TSKeywordFunction = { fg = colors.purple, fmt = config.code_style.functions },
	TSKeywordOperator = { fg = colors.purple, fmt = config.code_style.keywords },
	TSLabel = { fg = colors.dark_yellow },
	TSMethod = { fg = colors.blue },
	TSNamespace = { fg = colors.yellow },
	TSNone = { fg = colors.fg },
	TSNumber = { fg = colors.dark_yellow },
	TSOperator = { fg = colors.white },
	TSParameter = { fg = colors.dark_yellow },
	TSParameterReference = { fg = colors.fg },
	TSProperty = { fg = colors.blue },
	TSPunctDelimiter = { fg = colors.white },
	TSPunctBracket = { fg = colors.white },
	TSPunctSpecial = { fg = colors.red },
	TSRepeat = { fg = colors.purple, fmt = config.code_style.keywords },
	TSString = { fg = colors.cyan, fmt = config.code_style.strings },
	TSStringRegex = { fg = colors.orange, fmt = config.code_style.strings },
	TSStringEscape = { fg = colors.red, fmt = config.code_style.strings },
	TSSymbol = { fg = colors.cyan },
	TSTag = { fg = colors.yellow },
	TSTagDelimiter = { fg = colors.dark_yellow },
	TSText = { fg = colors.fg },
	TSStrong = { fg = colors.fg, fmt = "bold" },
	TSEmphasis = { fg = colors.fg, fmt = "italic" },
	TSUnderline = { fg = colors.fg, fmt = "underline" },
	TSStrike = { fg = colors.fg, fmt = "strikethrough" },
	TSTitle = { fg = colors.orange, fmt = "bold" },
	TSLiteral = { fg = colors.green },
	TSURI = { fg = colors.cyan, fmt = "underline" },
	TSMath = { fg = colors.fg },
	TSTextReference = { fg = colors.blue },
	TSEnviroment = { fg = colors.fg },
	TSEnviromentName = { fg = colors.fg },
	TSNote = { fg = colors.fg },
	TSWarning = { fg = colors.fg },
	TSDanger = { fg = colors.fg },
	TSType = { fg = colors.yellow },
	TSTypeBuiltin = { fg = colors.yellow },
	TSVariable = { fg = colors.dark_yellow, fmt = config.code_style.variables },
	TSVariableBuiltin = { fg = colors.red, fmt = config.code_style.variables },
}

local diagnostics_error_color = config.diagnostics.darker and colors.dark_red or colors.red
local diagnostics_hint_color = config.diagnostics.darker and colors.dark_blue or colors.blue
local diagnostics_warn_color = config.diagnostics.darker and colors.dark_yellow or colors.yellow
local diagnostics_info_color = config.diagnostics.darker and colors.dark_cyan or colors.cyan

hl.plugins.lsp = {
	LspCxxHlGroupEnumConstant = { fg = colors.dark_yellow },
	LspCxxHlGroupMemberVariable = { fg = colors.dark_yellow },
	LspCxxHlGroupNamespace = { fg = colors.blue },
	LspCxxHlSkippedRegion = { fg = colors.grey },
	LspCxxHlSkippedRegionBeginEnd = { fg = colors.red },

	DiagnosticError = { fg = colors.red },
	DiagnosticHint = { fg = colors.blue },
	DiagnosticInfo = { fg = colors.cyan },
	DiagnosticWarn = { fg = colors.yellow },

	DiagnosticVirtualTextError = {
		bg = config.diagnostics.background and util.darken(diagnostics_error_color, 0.1, colors.bg1) or colors.none,
		fg = diagnostics_error_color,
	},
	DiagnosticVirtualTextWarn = {
		bg = config.diagnostics.background and util.darken(diagnostics_warn_color, 0.1, colors.bg1) or colors.none,
		fg = diagnostics_warn_color,
	},
	DiagnosticVirtualTextInfo = {
		bg = config.diagnostics.background and util.darken(diagnostics_info_color, 0.1, colors.bg1) or colors.none,
		fg = diagnostics_info_color,
	},
	DiagnosticVirtualTextHint = {
		bg = config.diagnostics.background and util.darken(diagnostics_hint_color, 0.1, colors.bg1) or colors.none,
		fg = diagnostics_hint_color,
	},

	DiagnosticUnderlineError = { fmt = config.diagnostics.undercurl and "undercurl" or "underline", sp = colors.red },
	DiagnosticUnderlineHint = { fmt = config.diagnostics.undercurl and "undercurl" or "underline", sp = colors.blue },
	DiagnosticUnderlineInfo = { fmt = config.diagnostics.undercurl and "undercurl" or "underline", sp = colors.blue },
	DiagnosticUnderlineWarn = { fmt = config.diagnostics.undercurl and "undercurl" or "underline", sp = colors.yellow },

	LspReferenceText = { bg = colors.bg2 },
	LspReferenceWrite = { bg = colors.bg2 },
	LspReferenceRead = { bg = colors.bg2 },

	LspCodeLens = { fg = colors.grey, fmt = config.code_style.comments },
	LspCodeLensSeparator = { fg = colors.grey },
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
	BufferCurrentMod = { fg = colors.orange, bg = colors.bg1, fmt = "bold,italic" },
	BufferCurrentSign = { fg = colors.yellow },
	BufferInactiveMod = { fg = colors.light_grey, bg = colors.bg2, fmt = "italic" },
	BufferVisible = { fg = colors.light_grey, bg = colors.bg1 },
	BufferVisibleMod = { fg = colors.yellow, bg = colors.bg1, fmt = "italic" },
	BufferVisibleIndex = { fg = colors.light_grey, bg = colors.bg1 },
	BufferVisibleSign = { fg = colors.light_grey, bg = colors.bg1 },
	BufferVisibleTarget = { fg = colors.light_grey, bg = colors.bg1 },
}

hl.plugins.cmp = {
	CmpItemAbbr = { fg = colors.fg },
	CmpItemAbbrDeprecated = { fg = colors.light_grey, fmt = "strikethrough" },
	CmpItemAbbrMatch = { fg = colors.cyan },
	CmpItemAbbrMatchFuzzy = { fg = colors.cyan, fmt = "underline" },
	CmpItemMenu = { fg = colors.light_grey },
	CmpItemKind = { fg = colors.purple, fmt = config.cmp_itemkind_reverse and "reverse" },
}

hl.plugins.coc = {
	CocErrorSign = hl.plugins.lsp.DiagnosticError,
	CocHintSign = hl.plugins.lsp.DiagnosticHint,
	CocInfoSign = hl.plugins.lsp.DiagnosticInfo,
	CocWarningSign = hl.plugins.lsp.DiagnosticWarn,
}

hl.plugins.whichkey = {
	WhichKey = { fg = colors.red },
	WhichKeyDesc = { fg = colors.blue },
	WhichKeyGroup = { fg = colors.dark_yellow },
	WhichKeySeperator = { fg = colors.green },
}

-- TODO: Solvable with a Link to ToggleTermNormal?
hl.plugins.toggleterm = {
	ToggleTerm1FloatBorder = { fg = colors.grey },
	ToggleTerm1NormalFloat = { fg = colors.fg, bg = colors.bg1 },
	ToggleTerm2FloatBorder = { fg = colors.grey },
	ToggleTerm2NormalFloat = { fg = colors.fg, bg = colors.bg1 },
	ToggleTerm3FloatBorder = { fg = colors.grey },
	ToggleTerm3NormalFloat = { fg = colors.fg, bg = colors.bg1 },
	ToggleTerm4FloatBorder = { fg = colors.grey },
	ToggleTerm4NormalFloat = { fg = colors.fg, bg = colors.bg1 },
	ToggleTerm5FloatBorder = { fg = colors.grey },
	ToggleTerm5NormalFloat = { fg = colors.fg, bg = colors.bg1 },
	ToggleTerm6FloatBorder = { fg = colors.grey },
	ToggleTerm6NormalFloat = { fg = colors.fg, bg = colors.bg1 },
	ToggleTerm7FloatBorder = { fg = colors.grey },
	ToggleTerm7NormalFloat = { fg = colors.fg, bg = colors.bg1 },
	ToggleTerm8FloatBorder = { fg = colors.grey },
	ToggleTerm8NormalFloat = { fg = colors.fg, bg = colors.bg1 },
	ToggleTerm9FloatBorder = { fg = colors.grey },
	ToggleTerm9NormalFloat = { fg = colors.fg, bg = colors.bg1 },
}

hl.plugins.gitgutter = {
	GitGutterAdd = { fg = colors.green },
	GitGutterChange = { fg = colors.blue },
	GitGutterDelete = { fg = colors.red },
}

hl.plugins.hop = {
	HopNextKey = { fg = colors.red, fmt = "bold" },
	HopNextKey1 = { fg = colors.cyan, fmt = "bold" },
	HopNextKey2 = { fg = util.darken(colors.blue, 0.7) },
	HopUnmatched = { fg = colors.grey },
}

-- comment
hl.plugins.diffview = {
	DiffviewFilePanelTitle = { fg = colors.blue, fmt = "bold" },
	DiffviewFilePanelCounter = { fg = colors.purple, fmt = "bold" },
	DiffviewFilePanelFileName = { fg = colors.fg },
	DiffviewNormal = hl.common.Normal,
	DiffviewCursorLine = hl.common.CursorLine,
	DiffviewVertSplit = hl.common.VertSplit,
	DiffviewSignColumn = hl.common.SignColumn,
	DiffviewStatusLine = hl.common.StatusLine,
	DiffviewStatusLineNC = hl.common.StatusLineNC,
	DiffviewEndOfBuffer = hl.common.EndOfBuffer,
	DiffviewFilePanelRootPath = { fg = colors.grey },
	DiffviewFilePanelPath = { fg = colors.grey },
	DiffviewFilePanelInsertions = { fg = colors.green },
	DiffviewFilePanelDeletions = { fg = colors.red },
	DiffviewStatusAdded = { fg = colors.green },
	DiffviewStatusUntracked = { fg = colors.blue },
	DiffviewStatusModified = { fg = colors.blue },
	DiffviewStatusRenamed = { fg = colors.blue },
	DiffviewStatusCopied = { fg = colors.blue },
	DiffviewStatusTypeChange = { fg = colors.blue },
	DiffviewStatusUnmerged = { fg = colors.blue },
	DiffviewStatusUnknown = { fg = colors.red },
	DiffviewStatusDeleted = { fg = colors.red },
	DiffviewStatusBroken = { fg = colors.red },
}

hl.plugins.gitsigns = {
	GitSignsAdd = { fg = colors.green },
	GitSignsAddLn = { fg = colors.green },
	GitSignsAddNr = { fg = colors.green },
	GitSignsChange = { fg = colors.blue },
	GitSignsChangeLn = { fg = colors.blue },
	GitSignsChangeNr = { fg = colors.blue },
	GitSignsDelete = { fg = colors.red },
	GitSignsDeleteLn = { fg = colors.red },
	GitSignsDeleteNr = { fg = colors.red },
}

hl.plugins.nvim_tree = {
	NvimTreeNormal = { fg = colors.fg, bg = config.transparent and colors.none or colors.bg0 },
	NvimTreeVertSplit = { fg = colors.grey, bg = config.transparent and colors.none or colors.bg1 },
	NvimTreeEndOfBuffer = {
		fg = config.ending_tildes and colors.bg2 or colors.bg1,
		bg = config.transparent and colors.none or colors.bg0,
	},
	NvimTreeRootFolder = { fg = colors.orange, fmt = "bold" },
	NvimTreeGitDirty = { fg = colors.yellow },
	NvimTreeGitNew = { fg = colors.green },
	NvimTreeGitDeleted = { fg = colors.red },
	NvimTreeSpecialFile = { fg = colors.yellow, fmt = "underline" },
	NvimTreeIndentMarker = { fg = colors.fg },
	NvimTreeImageFile = { fg = colors.dark_purple },
	NvimTreeSymlink = { fg = colors.purple },
	NvimTreeFolderName = { fg = colors.blue },
	NvimTreeCursorLine = { bg = colors.bg1 },
	NvimTreeWindowPicker = { fg = colors.white, bg = colors.grey },
}

hl.plugins.telescope = {
	TelescopeTitle = { fg = colors.dark_yellow },
	TelescopeBorder = { fg = colors.red },
	TelescopePromptBorder = { fg = colors.grey },
	TelescopeResultsBorder = { fg = colors.grey },
	TelescopePreviewBorder = { fg = colors.grey },
	TelescopeMatching = { fg = colors.orange, fmt = "bold" },
	TelescopePromptPrefix = { fg = colors.green },
	TelescopeSelection = { bg = colors.bg2 },
	TelescopeSelectionCaret = { fg = colors.yellow },
}

hl.plugins.dashboard = {
	DashboardShortCut = { fg = colors.blue },
	DashboardHeader = { fg = colors.yellow },
	DashboardCenter = { fg = colors.cyan },
	DashboardFooter = { fg = colors.dark_red, fmt = "italic" },
}

hl.plugins.outline = {
	FocusedSymbol = { fg = colors.purple, bg = colors.bg2, fmt = "bold" },
	AerialLine = { fg = colors.purple, bg = colors.bg2, fmt = "bold" },
}

hl.plugins.ts_rainbow = {
	rainbowcol1 = { fg = colors.grey },
	rainbowcol2 = { fg = colors.yellow },
	rainbowcol3 = { fg = colors.blue },
	rainbowcol4 = { fg = colors.dark_yellow },
	rainbowcol5 = { fg = colors.purple },
	rainbowcol6 = { fg = colors.green },
	rainbowcol7 = { fg = colors.red },
}

hl.plugins.incline = {
	InclineNormal = { bg = colors.bg3 },
	InclineNormalNC = { bg = colors.bg2 },
}

hl.langs.css = {
	cssPositioningAttr = { fg = colors.blue },
	cssBoxAttr = { fg = colors.blue },
	cssTextAttr = { fg = colors.blue },
	cssCommonAttr = { fg = colors.blue },
	cssCascadeAttr = { fg = colors.blue },
	cssFlexibleBoxAttr = { fg = colors.blue },
	cssUnitDecorators = { fg = colors.yellow },
	cssValueLength = { fg = colors.dark_blue },
}

hl.langs.sass = {
	sassVariable = { fg = colors.dark_yellow },
	sassMixing = { fg = colors.dark_red },
	sassCssAttribute = { fg = colors.white },
}

hl.langs.c = {
	cInclude = { fg = colors.blue },
	cStorageClass = { fg = colors.purple },
	cTypedef = { fg = colors.purple },
	cDefine = { fg = colors.cyan },
	cTSInclude = { fg = colors.blue },
	cTSConstant = { fg = colors.cyan },
	cTSConstMacro = { fg = colors.purple },
	cTSOperator = { fg = colors.purple },
}

hl.langs.cpp = {
	cppStatement = { fg = colors.purple, fmt = "bold" },
	cppTSInclude = { fg = colors.blue },
	cppTSConstant = { fg = colors.cyan },
	cppTSConstMacro = { fg = colors.purple },
	cppTSOperator = { fg = colors.purple },
}

hl.langs.markdown = {
	markdownBlockquote = { fg = colors.grey },
	markdownBold = { fg = colors.none, fmt = "bold" },
	markdownBoldDelimiter = { fg = colors.grey },
	markdownCode = { fg = colors.green },
	markdownCodeBlock = { fg = colors.green },
	markdownCodeDelimiter = { fg = colors.yellow },
	markdownH1 = { fg = colors.red, fmt = "bold" },
	markdownH2 = { fg = colors.purple, fmt = "bold" },
	markdownH3 = { fg = colors.orange, fmt = "bold" },
	markdownH4 = { fg = colors.red, fmt = "bold" },
	markdownH5 = { fg = colors.purple, fmt = "bold" },
	markdownH6 = { fg = colors.orange, fmt = "bold" },
	markdownHeadingDelimiter = { fg = colors.grey },
	markdownHeadingRule = { fg = colors.grey },
	markdownId = { fg = colors.yellow },
	markdownIdDeclaration = { fg = colors.red },
	markdownItalic = { fg = colors.none, fmt = "italic" },
	markdownItalicDelimiter = { fg = colors.grey, fmt = "italic" },
	markdownLinkDelimiter = { fg = colors.grey },
	markdownLinkText = { fg = colors.red },
	markdownLinkTextDelimiter = { fg = colors.grey },
	markdownListMarker = { fg = colors.red },
	markdownOrderedListMarker = { fg = colors.red },
	markdownRule = { fg = colors.purple },
	markdownUrl = { fg = colors.blue, fmt = "underline" },
	markdownUrlDelimiter = { fg = colors.grey },
	markdownUrlTitleDelimiter = { fg = colors.green },
}

hl.langs.php = {
	phpFunctions = { fg = colors.fg, fmt = config.code_style.functions },
	phpMethods = { fg = colors.cyan },
	phpStructure = { fg = colors.purple },
	phpOperator = { fg = colors.purple },
	phpMemberSelector = { fg = colors.fg },
	phpVarSelector = { fg = colors.orange, fmt = config.code_style.variables },
	phpIdentifier = { fg = colors.orange, fmt = config.code_style.variables },
	phpBoolean = { fg = colors.cyan },
	phpNumber = { fg = colors.dark_yellow },
	phpHereDoc = { fg = colors.green },
	phpNowDoc = { fg = colors.green },
	phpSCKeyword = { fg = colors.purple, fmt = config.code_style.keywords },
	phpFCKeyword = { fg = colors.purple, fmt = config.code_style.keywords },
	phpRegion = { fg = colors.blue },
}

hl.langs.scala = {
	scalaNameDefinition = { fg = colors.fg },
	scalaInterpolationBoundary = { fg = colors.purple },
	scalaInterpolation = { fg = colors.purple },
	scalaTypeOperator = { fg = colors.red },
	scalaOperator = { fg = colors.red },
	scalaKeywordModifier = { fg = colors.red, fmt = config.code_style.keywords },
}

hl.langs.tex = {
	latexTSInclude = { fg = colors.blue },
	latexTSFuncMacro = { fg = colors.fg, fmt = config.code_style.functions },
	latexTSEnvironment = { fg = colors.cyan, fmt = "bold" },
	latexTSEnvironmentName = { fg = colors.yellow },
	texCmdEnv = { fg = colors.cyan },
	texEnvArgName = { fg = colors.yellow },
	latexTSTitle = { fg = colors.green },
	latexTSType = { fg = colors.blue },
	latexTSMath = { fg = colors.dark_yellow },
	texMathZoneX = { fg = colors.dark_yellow },
	texMathZoneXX = { fg = colors.dark_yellow },
	texMathDelimZone = { fg = colors.light_grey },
	texMathDelim = { fg = colors.purple },
	texMathOper = { fg = colors.red },
	texCmd = { fg = colors.purple },
	texCmdPart = { fg = colors.blue },
	texCmdPackage = { fg = colors.blue },
	texPgfType = { fg = colors.yellow },
}

hl.langs.vim = {
	vimOption = { fg = colors.red },
	vimSetEqual = { fg = colors.yellow },
	vimMap = { fg = colors.purple },
	vimMapModKey = { fg = colors.dark_yellow },
	vimNotation = { fg = colors.red },
	vimMapLhs = { fg = colors.fg },
	vimMapRhs = { fg = colors.blue },
	vimVar = { fg = colors.fg, fmt = config.code_style.variables },
	vimCommentTitle = { fg = colors.light_grey, fmt = config.code_style.comments },
}

local lsp_kind_icons_color = {
	Default = colors.purple,
	Class = colors.yellow,
	Color = colors.green,
	Constant = colors.orange,
	Constructor = colors.blue,
	Enum = colors.purple,
	EnumMember = colors.yellow,
	Event = colors.yellow,
	Field = colors.purple,
	File = colors.blue,
	Folder = colors.orange,
	Function = colors.blue,
	Interface = colors.green,
	Keyword = colors.cyan,
	Method = colors.blue,
	Module = colors.orange,
	Operator = colors.red,
	Property = colors.cyan,
	Reference = colors.orange,
	Snippet = colors.red,
	Struct = colors.purple,
	Text = colors.light_grey,
	TypeParameter = colors.red,
	Unit = colors.green,
	Value = colors.orange,
	Variable = colors.purple,
}

function M.setup()
	-- define cmp and aerial kind highlights with lsp_kind_icons_color
	for kind, color in pairs(lsp_kind_icons_color) do
		hl.plugins.cmp["CmpItemKind" .. kind] = { fg = color, fmt = config.cmp_itemkind_reverse and "reverse" }
		hl.plugins.outline["Aerial" .. kind .. "Icon"] = { fg = color }
	end

	-- Set common highlights
	vim_set_highlights(hl.common)
	vim_set_highlights(hl.syntax)
	vim_set_highlights(hl.treesitter)

	-- Set language highlights
	for _, group in pairs(hl.langs) do
		vim_set_highlights(group)
	end

	-- Set plugin highlights
	for _, group in pairs(hl.plugins) do
		vim_set_highlights(group)
	end

	-- user defined highlights: vim_set_highlights function cannot be used because it sets an attribute to none if not specified
	local function replace_color(prefix, color_name)
		if not color_name then
			return ""
		end

		if color_name:sub(1, 1) == "$" then
			local name = color_name:sub(2, -1)
			color_name = colors[name]

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

	-- Replace custom set highlights from the config
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
