local actions = require("terra.actions")

local extend_with_code_style = actions.highlights.extend_with_code_style
local darken = actions.color.darken

---Returns the default Highlights
---@param colors Colors
---@param config TerraConfig
---@return Highlights
local function get_default_highlights(colors, config)
    -- NOTE: Improve typing that all nested keys are appear on completion
    ---@class Highlights
    local highlights = { langs = {}, plugins = {} }

    ---@type HighlightGroup
    highlights.common = {
        Normal = {
            fg = colors.semantic.fg,
            bg = config.transparent and colors.none or colors.semantic.bg1,
        },
        Terminal = {
            fg = colors.semantic.fg,
            bg = config.transparent and colors.none or colors.semantic.bg1,
        },
        EndOfBuffer = {
            fg = config.ending_tildes and colors.semantic.bg2 or colors.semantic.bg1,
            bg = config.transparent and colors.none or colors.semantic.bg1,
        },
        FoldColumn = {
            fg = colors.palette.gray,
            bg = config.transparent and colors.none or colors.semantic.bg1,
        },
        Folded = {
            fg = colors.palette.gray,
            bg = config.transparent and colors.none or colors.semantic.bg1,
        },
        SignColumn = {
            fg = colors.semantic.fg,
            bg = config.transparent and colors.none or colors.semantic.bg1,
        },
        ToolbarLine = { fg = colors.semantic.fg },
        Cursor = { reverse = true },
        vCursor = { reverse = true },
        iCursor = { reverse = true },
        lCursor = { reverse = true },
        CursorIM = { reverse = true },
        CursorColumn = { bg = colors.semantic.bg2 },
        CursorLine = { bg = colors.semantic.bg2 },
        ColorColumn = { bg = colors.semantic.bg2 },
        CursorLineNr = { fg = colors.palette.yellow },
        LineNr = { fg = colors.palette.gray },
        Conceal = { fg = colors.palette.gray, bg = colors.semantic.bg1 },
        DiffAdd = { fg = colors.semantic.diff_add },
        DiffChange = { fg = colors.semantic.diff_change },
        DiffDelete = { fg = colors.semantic.diff_delete },
        DiffText = { fg = colors.semantic.diff_text },
        DiffAdded = { fg = colors.palette.green },
        DiffRemoved = { fg = colors.palette.red },
        DiffFile = { fg = colors.palette.cyan },
        DiffIndexLine = { fg = colors.palette.gray },
        Directory = { fg = colors.palette.blue },
        ErrorMsg = { fg = colors.palette.red, bold = true },
        WarningMsg = { fg = colors.palette.yellow, bold = true },
        MoreMsg = { fg = colors.palette.blue, bold = true },
        IncSearch = { fg = colors.semantic.bg0, bg = colors.palette.blue },
        Search = { fg = colors.semantic.bg0, bg = colors.palette.blue },
        Substitute = { fg = colors.semantic.bg0, bg = colors.palette.green },
        MatchParen = { fg = colors.none, bg = colors.palette.gray },
        NonText = { fg = colors.palette.gray },
        Whitespace = { fg = colors.palette.gray },
        SpecialKey = { fg = colors.palette.gray },
        Pmenu = { fg = colors.semantic.fg, bg = colors.semantic.bg0 },
        PmenuSbar = { fg = colors.none, bg = colors.semantic.bg0 },
        PmenuSel = { fg = colors.semantic.bg0, bg = colors.palette.blue },
        WildMenu = { fg = colors.semantic.bg0, bg = colors.palette.blue },
        PmenuThumb = { fg = colors.none, bg = colors.palette.gray },
        Question = { fg = colors.palette.yellow },
        SpellBad = { fg = colors.palette.red, sp = colors.palette.red },
        SpellCap = { fg = colors.palette.yellow, sp = colors.palette.yellow },
        SpellLocal = { fg = colors.palette.blue, sp = colors.palette.blue },
        SpellRare = { fg = colors.palette.purple, sp = colors.palette.purple },
        StatusLine = { fg = colors.semantic.fg, bg = colors.semantic.bg2 },
        StatusLineTerm = { fg = colors.semantic.fg, bg = colors.semantic.bg2 },
        StatusLineNC = { fg = colors.palette.gray, bg = colors.semantic.bg1 },
        StatusLineTermNC = { fg = colors.palette.gray, bg = colors.semantic.bg1 },
        TabLine = { fg = colors.semantic.fg, bg = colors.semantic.bg1 },
        TabLineFill = { fg = colors.palette.gray, bg = colors.semantic.bg1 },
        TabLineSel = { fg = colors.semantic.fg, bg = colors.semantic.bg3 },
        VertSplit = { fg = colors.palette.gray },
        Visual = { bg = colors.semantic.bg3 },
        VisualNOS = { fg = colors.none, bg = colors.semantic.bg2 },
        QuickFixLine = { fg = colors.palette.blue, bg = colors.semantic.bg2 },
        Debug = { fg = colors.palette.yellow },
        debugPC = { fg = colors.semantic.bg0, bg = colors.palette.green },
        debugBreakpoint = { fg = colors.semantic.bg0, bg = colors.palette.red },
        ToolbarButton = { fg = colors.semantic.bg0, bg = colors.palette.blue },
        FloatBorder = { fg = colors.palette.gray, bg = colors.semantic.bg1 },
        NormalFloat = { fg = colors.semantic.fg, bg = colors.semantic.bg1 },
    }

    ---@type HighlightGroup
    highlights.syntax = {
        String = extend_with_code_style(
            { fg = colors.palette.cyan },
            config.code_style.strings
        ),
        Character = { fg = colors.palette.yellow },
        Number = { fg = colors.palette.dark_yellow },
        Float = { fg = colors.palette.dark_yellow },
        Boolean = { fg = colors.palette.dark_yellow },
        Type = { fg = colors.palette.yellow },
        Structure = { fg = colors.palette.yellow },
        StorageClass = { fg = colors.palette.blue },
        Identifier = extend_with_code_style(
            { fg = colors.palette.red },
            config.code_style.variables
        ),
        Constant = { fg = colors.palette.dark_yellow },
        PreProc = { fg = colors.palette.purple },
        PreCondit = { fg = colors.palette.purple },
        Include = { fg = colors.palette.purple },
        Keyword = extend_with_code_style(
            { fg = colors.palette.red },
            config.code_style.keywords
        ),
        Define = { fg = colors.palette.purple },
        Typedef = { fg = colors.palette.purple },
        Exception = { fg = colors.palette.purple },
        Conditional = extend_with_code_style(
            { fg = colors.palette.purple },
            config.code_style.keywords
        ),
        Repeat = extend_with_code_style(
            { fg = colors.palette.purple },
            config.code_style.keywords
        ),
        Statement = { fg = colors.palette.purple },
        Macro = { fg = colors.palette.red },
        Error = { fg = colors.palette.purple },
        Label = { fg = colors.palette.purple },
        Special = { fg = colors.palette.red },
        SpecialChar = { fg = colors.palette.red },
        Function = extend_with_code_style(
            { fg = colors.palette.yellow },
            config.code_style.functions
        ),
        Operator = { fg = colors.palette.purple },
        Title = { fg = colors.palette.cyan },
        Tag = { fg = colors.palette.green },
        Delimiter = { fg = colors.palette.light_gray },
        Comment = extend_with_code_style(
            { fg = colors.semantic.fg_dimmed },
            config.code_style.comments
        ),
        SpecialComment = extend_with_code_style(
            { fg = colors.semantic.fg_dimmed },
            config.code_style.comments
        ),
        Todo = extend_with_code_style(
            { fg = colors.semantic.fg_dimmed },
            config.code_style.comments
        ),
    }

    -- NOTE: https://stackoverflow.com/a/11886528/10945408
    ---@type HighlightGroup
    highlights.treesitter = {
        -- TODO: Omit @
        ["@annotation"] = { fg = colors.semantic.fg },
        ["@attribute"] = { fg = colors.palette.cyan },
        ["@boolean"] = { fg = colors.palette.dark_yellow },
        ["@character"] = { fg = colors.palette.dark_yellow },
        ["@character.special"] = { fg = colors.palette.dark_yellow },
        ["@comment"] = extend_with_code_style(
            { fg = colors.semantic.fg_dimmed },
            config.code_style.comments
        ),
        ["@conditional"] = extend_with_code_style(
            { fg = colors.palette.purple },
            config.code_style.keywords
        ),
        ["@constant"] = { fg = colors.palette.dark_yellow },
        ["@constant.builtin"] = { fg = colors.palette.dark_yellow },
        ["@constant.macro"] = { fg = colors.palette.dark_yellow },
        ["@constructor"] = { fg = colors.palette.yellow, bold = true },
        ["@error"] = { fg = colors.semantic.fg },
        ["@exception"] = { fg = colors.palette.purple },
        ["@field"] = { fg = colors.palette.cyan },
        ["@float"] = { fg = colors.palette.dark_yellow },
        ["@function"] = extend_with_code_style(
            { fg = colors.palette.yellow },
            config.code_style.functions
        ),
        ["@function.builtin"] = extend_with_code_style(
            { fg = colors.palette.cyan },
            config.code_style.functions
        ),
        ["@function.macro"] = extend_with_code_style(
            { fg = colors.palette.cyan },
            config.code_style.functions
        ),
        ["@include"] = { fg = colors.palette.purple },
        ["@keyword"] = extend_with_code_style({
            fg = colors.palette.red,
            bold = true,
        }, config.code_style.keywords),
        ["@keyword.function"] = extend_with_code_style(
            { fg = colors.palette.purple },
            config.code_style.functions
        ),
        ["@keyword.operator"] = extend_with_code_style(
            { fg = colors.palette.red },
            config.code_style.keywords
        ),
        ["@label"] = { fg = colors.palette.dark_yellow },
        ["@metod"] = { fg = colors.palette.blue },
        ["@namespace"] = { fg = colors.palette.yellow },
        ["@none"] = { fg = colors.semantic.fg },
        ["@number"] = { fg = colors.palette.dark_yellow },
        ["@operator"] = { fg = colors.palette.white },
        ["@parameter"] = { fg = colors.palette.blue },
        ["@parameter.reference"] = { fg = colors.semantic.fg },
        ["@property"] = { fg = colors.palette.blue },
        ["@punctuation.delimiter"] = { fg = colors.palette.white },
        ["@punctuation.bracket"] = { fg = colors.palette.white },
        ["@punctuation.special"] = { fg = colors.palette.white },
        ["@repeat"] = extend_with_code_style(
            { fg = colors.palette.purple },
            config.code_style.keywords
        ),
        ["@string"] = extend_with_code_style(
            { fg = colors.palette.green },
            config.code_style.strings
        ),
        ["@string.special"] = extend_with_code_style(
            { fg = colors.palette.green },
            config.code_style.strings
        ),
        ["@string.regex"] = extend_with_code_style(
            { fg = colors.palette.dark_yellow },
            config.code_style.strings
        ),
        ["@string.escape"] = extend_with_code_style(
            { fg = colors.palette.red },
            config.code_style.strings
        ),
        ["@symbol"] = { fg = colors.palette.cyan },
        ["@tag"] = { fg = colors.palette.yellow },
        ["@tag.delimiter"] = { fg = colors.palette.dark_yellow },
        ["@tag.attribute"] = { fg = colors.palette.dark_yellow },
        ["@text"] = { fg = colors.semantic.fg },
        ["@text.strong"] = { fg = colors.semantic.fg, bold = true },
        ["@text.emphasis"] = { fg = colors.semantic.fg, italic = true },
        ["@text.underline"] = { fg = colors.semantic.fg, underline = true },
        ["@text.strike"] = { fg = colors.semantic.fg, strikethrough = true },
        ["@text.title"] = { fg = colors.palette.dark_yellow, bold = true },
        ["@text.literal"] = { fg = colors.palette.green },
        ["@text.uri"] = { fg = colors.palette.cyan, underline = true },
        ["@text.math"] = { fg = colors.semantic.fg },
        ["@text.reference"] = { fg = colors.palette.blue },
        ["@text.environment"] = { fg = colors.semantic.fg },
        ["@text.environment.name"] = { fg = colors.semantic.fg },
        ["@text.note"] = { fg = colors.semantic.fg },
        ["@text.warning"] = { fg = colors.semantic.fg },
        ["@text.danger"] = { fg = colors.semantic.fg },
        ["@type"] = { fg = colors.palette.cyan },
        ["@type.builtin"] = { fg = colors.palette.dark_cyan },
        ["@variable"] = extend_with_code_style(
            { fg = colors.palette.dark_yellow },
            config.code_style.variables
        ),
        ["@variable.builtin"] = extend_with_code_style(
            { fg = colors.palette.red },
            config.code_style.variables
        ),
    }

    local diagnostics_error_color = config.diagnostics.darker
            and colors.palette.dark_red
        or colors.palette.red
    local diagnostics_hint_color = config.diagnostics.darker
            and colors.palette.dark_blue
        or colors.palette.blue
    local diagnostics_warn_color = config.diagnostics.darker
            and colors.palette.dark_yellow
        or colors.palette.yellow
    local diagnostics_info_color = config.diagnostics.darker
            and colors.palette.dark_cyan
        or colors.palette.cyan

    ---@type HighlightGroup
    highlights.plugins.lsp = {
        LspCxxHlGroupEnumConstant = { fg = colors.palette.dark_yellow },
        LspCxxHlGroupMemberVariable = { fg = colors.palette.dark_yellow },
        LspCxxHlGroupNamespace = { fg = colors.palette.blue },
        LspCxxHlSkippedRegion = { fg = colors.palette.gray },
        LspCxxHlSkippedRegionBeginEnd = { fg = colors.palette.red },

        DiagnosticError = { fg = colors.palette.red },
        DiagnosticHint = { fg = colors.palette.blue },
        DiagnosticInfo = { fg = colors.palette.cyan },
        DiagnosticWarn = { fg = colors.palette.yellow },

        DiagnosticVirtualTextError = {
            bg = config.diagnostics.background and darken(
                diagnostics_error_color,
                0.1,
                colors.semantic.bg1
            ) or colors.none,
            fg = diagnostics_error_color,
        },
        DiagnosticVirtualTextWarn = {
            bg = config.diagnostics.background and darken(
                diagnostics_warn_color,
                0.1,
                colors.semantic.bg1
            ) or colors.none,
            fg = diagnostics_warn_color,
        },
        DiagnosticVirtualTextInfo = {
            bg = config.diagnostics.background and darken(
                diagnostics_info_color,
                0.1,
                colors.semantic.bg1
            ) or colors.none,
            fg = diagnostics_info_color,
        },
        DiagnosticVirtualTextHint = {
            bg = config.diagnostics.background and darken(
                diagnostics_hint_color,
                0.1,
                colors.semantic.bg1
            ) or colors.none,
            fg = diagnostics_hint_color,
        },

        DiagnosticUnderlineError = {
            sp = colors.palette.red,
            config.diagnostics.undercurl and { undercurl = true },
        },
        DiagnosticUnderlineHint = {
            config.diagnostics.undercurl and { undercurl = true },
            sp = colors.palette.blue,
        },
        DiagnosticUnderlineInfo = {
            config.diagnostics.undercurl and { undercurl = true },
            sp = colors.palette.blue,
        },
        DiagnosticUnderlineWarn = {
            config.diagnostics.undercurl and { undercurl = true },
            sp = colors.palette.yellow,
        },

        LspReferenceText = { bg = colors.semantic.bg2 },
        LspReferenceWrite = { bg = colors.semantic.bg2 },
        LspReferenceRead = { bg = colors.semantic.bg2 },

        LspCodeLens = { fg = colors.palette.gray },
        LspCodeLensSeparator = { fg = colors.palette.gray },
    }

    highlights.plugins.lsp.LspDiagnosticsDefaultError =
        highlights.plugins.lsp.DiagnosticError
    highlights.plugins.lsp.LspDiagnosticsDefaultHint =
        highlights.plugins.lsp.DiagnosticHint
    highlights.plugins.lsp.LspDiagnosticsDefaultInformation =
        highlights.plugins.lsp.DiagnosticInfo
    highlights.plugins.lsp.LspDiagnosticsDefaultWarning =
        highlights.plugins.lsp.DiagnosticWarn
    highlights.plugins.lsp.LspDiagnosticsUnderlineError =
        highlights.plugins.lsp.DiagnosticUnderlineError
    highlights.plugins.lsp.LspDiagnosticsUnderlineHint =
        highlights.plugins.lsp.DiagnosticUnderlineHint
    highlights.plugins.lsp.LspDiagnosticsUnderlineInformation =
        highlights.plugins.lsp.DiagnosticUnderlineInfo
    highlights.plugins.lsp.LspDiagnosticsUnderlineWarning =
        highlights.plugins.lsp.DiagnosticUnderlineWarn
    highlights.plugins.lsp.LspDiagnosticsVirtualTextError =
        highlights.plugins.lsp.DiagnosticVirtualTextError
    highlights.plugins.lsp.LspDiagnosticsVirtualTextWarning =
        highlights.plugins.lsp.DiagnosticVirtualTextWarn
    highlights.plugins.lsp.LspDiagnosticsVirtualTextInformation =
        highlights.plugins.lsp.DiagnosticVirtualTextInfo
    highlights.plugins.lsp.LspDiagnosticsVirtualTextHint =
        highlights.plugins.lsp.DiagnosticVirtualTextHint

    ---@type HighlightGroup
    highlights.plugins.ale = {
        ALEErrorSign = highlights.plugins.lsp.DiagnosticError,
        ALEInfoSign = highlights.plugins.lsp.DiagnosticInfo,
        ALEWarningSign = highlights.plugins.lsp.DiagnosticWarn,
    }

    ---@type HighlightGroup
    highlights.plugins.barbar = {
        -- BufferLineFill = { bg = colors.semantic.bg0 },
        -- BufferLineBackground = { bg = colors.semantic.bg0 },
        -- BufferLineSeparator = { fg = colors.palette.red, bg = colors.palette.blue },
        -- BufferLineGroupSeparator = { bg = colors.semantic.bg0 },
        -- BufferLineSeparatorVisible = { fg = colors.semantic.bg0, bg = colors.semantic.bg0 },

        -- BufferCurrent = {  bold = true },
        -- BufferCurrentMod = { fg = colors.palette.dark_yellow, bg = colors.semantic.bg1, fmt = "bold,italic" },
        -- BufferCurrentSign = { fg = colors.palette.yellow },
        -- BufferInactiveMod = { fg = colors.palette.light_grey, bg = colors.semantic.bg2, fmt = "italic" },
        -- BufferVisible = { fg = colors.palette.light_grey, bg = colors.semantic.bg1 },
        -- BufferVisibleMod = { fg = colors.palette.yellow, bg = colors.semantic.bg1, fmt = "italic" },
        -- BufferVisibleIndex = { fg = colors.palette.light_grey, bg = colors.semantic.bg1 },
        -- BufferVisibleSign = { fg = colors.palette.light_grey, bg = colors.semantic.bg1 },
        -- BufferVisibleTarget = { fg = colors.palette.light_grey, bg = colors.semantic.bg1 },
        -- BufferLineTabClose = { fg = colors.palette.light_grey, bg = colors.semantic.bg1 },
        -- BufferLineTabSelected = { fg = colors.palette.yellow, bg = colors.semantic.bg1 },
        --
        -- BufferLineBuffer = { fg = colors.gray, bg = colors.semantic.bg0 },
        --
        -- BufferLineTab = { fg = colors.palette.grey, bg = colors.semantic.bg0 },
    }

    ---@type HighlightGroup
    highlights.plugins.cmp = {
        CmpItemAbbr = { fg = colors.semantic.fg },
        CmpItemAbbrDeprecated = {
            fg = colors.palette.light_gray,
            strikethrough = true,
        },
        CmpItemAbbrMatch = { fg = colors.palette.cyan },
        CmpItemAbbrMatchFuzzy = { fg = colors.palette.cyan, underline = true },
        CmpItemMenu = { fg = colors.palette.light_gray },
        CmpItemKind = {
            fg = colors.palette.purple,
            config.cmp_itemkind_reverse and { reverse = true },
        },
    }

    ---@type HighlightGroup
    highlights.plugins.coc = {
        CocErrorSign = highlights.plugins.lsp.DiagnosticError,
        CocHintSign = highlights.plugins.lsp.DiagnosticHint,
        CocInfoSign = highlights.plugins.lsp.DiagnosticInfo,
        CocWarningSign = highlights.plugins.lsp.DiagnosticWarn,
    }

    ---@type HighlightGroup
    highlights.plugins.whichkey = {
        WhichKey = { fg = colors.palette.red },
        WhichKeyDesc = { fg = colors.palette.blue },
        WhichKeyGroup = { fg = colors.palette.dark_yellow },
        WhichKeySeperator = { fg = colors.palette.green },
    }

    -- QUESTION: Solvable with a Link to ToggleTermNormal?
    ---@type HighlightGroup
    highlights.plugins.toggleterm = {
        ToggleTerm1FloatBorder = { fg = colors.palette.gray },
        ToggleTerm1NormalFloat = {
            fg = colors.semantic.fg,
            bg = colors.semantic.bg1,
        },
        ToggleTerm2FloatBorder = { fg = colors.palette.gray },
        ToggleTerm2NormalFloat = {
            fg = colors.semantic.fg,
            bg = colors.semantic.bg1,
        },
        ToggleTerm3FloatBorder = { fg = colors.palette.gray },
        ToggleTerm3NormalFloat = {
            fg = colors.semantic.fg,
            bg = colors.semantic.bg1,
        },
        ToggleTerm4FloatBorder = { fg = colors.palette.gray },
        ToggleTerm4NormalFloat = {
            fg = colors.semantic.fg,
            bg = colors.semantic.bg1,
        },
        ToggleTerm5FloatBorder = { fg = colors.palette.gray },
        ToggleTerm5NormalFloat = {
            fg = colors.semantic.fg,
            bg = colors.semantic.bg1,
        },
        ToggleTerm6FloatBorder = { fg = colors.palette.gray },
        ToggleTerm6NormalFloat = {
            fg = colors.semantic.fg,
            bg = colors.semantic.bg1,
        },
        ToggleTerm7FloatBorder = { fg = colors.palette.gray },
        ToggleTerm7NormalFloat = {
            fg = colors.semantic.fg,
            bg = colors.semantic.bg1,
        },
        ToggleTerm8FloatBorder = { fg = colors.palette.gray },
        ToggleTerm8NormalFloat = {
            fg = colors.semantic.fg,
            bg = colors.semantic.bg1,
        },
        ToggleTerm9FloatBorder = { fg = colors.palette.gray },
        ToggleTerm9NormalFloat = {
            fg = colors.semantic.fg,
            bg = colors.semantic.bg1,
        },
    }

    ---@type HighlightGroup
    highlights.plugins.gitgutter = {
        GitGutterAdd = { fg = colors.palette.green },
        GitGutterChange = { fg = colors.palette.blue },
        GitGutterDelete = { fg = colors.palette.red },
    }

    ---@type HighlightGroup
    highlights.plugins.hop = {
        HopNextKey = { fg = colors.palette.red, bold = true },
        HopNextKey1 = { fg = colors.palette.cyan, bold = true },
        HopNextKey2 = { fg = darken(colors.palette.blue, 0.7) },
        HopUnmatched = { fg = colors.palette.gray },
    }

    -- comment
    ---@type HighlightGroup
    highlights.plugins.diffview = {
        DiffviewFilePanelTitle = { fg = colors.palette.blue, bold = true },
        DiffviewFilePanelCounter = { fg = colors.palette.purple, bold = true },
        DiffviewFilePanelFileName = { fg = colors.semantic.fg },
        DiffviewNormal = highlights.common.Normal,
        DiffviewCursorLine = highlights.common.CursorLine,
        DiffviewVertSplit = highlights.common.VertSplit,
        DiffviewSignColumn = highlights.common.SignColumn,
        DiffviewStatusLine = highlights.common.StatusLine,
        DiffviewStatusLineNC = highlights.common.StatusLineNC,
        DiffviewEndOfBuffer = highlights.common.EndOfBuffer,
        DiffviewFilePanelRootPath = { fg = colors.palette.gray },
        DiffviewFilePanelPath = { fg = colors.palette.gray },
        DiffviewFilePanelInsertions = { fg = colors.palette.green },
        DiffviewFilePanelDeletions = { fg = colors.palette.red },
        DiffviewStatusAdded = { fg = colors.palette.green },
        DiffviewStatusUntracked = { fg = colors.palette.blue },
        DiffviewStatusModified = { fg = colors.palette.blue },
        DiffviewStatusRenamed = { fg = colors.palette.blue },
        DiffviewStatusCopied = { fg = colors.palette.blue },
        DiffviewStatusTypeChange = { fg = colors.palette.blue },
        DiffviewStatusUnmerged = { fg = colors.palette.blue },
        DiffviewStatusUnknown = { fg = colors.palette.red },
        DiffviewStatusDeleted = { fg = colors.palette.red },
        DiffviewStatusBroken = { fg = colors.palette.red },
    }

    ---@type HighlightGroup
    highlights.plugins.gitsigns = {
        GitSignsAdd = { fg = colors.palette.green },
        GitSignsAddLn = { fg = colors.palette.green },
        GitSignsAddNr = { fg = colors.palette.green },
        GitSignsChange = { fg = colors.palette.blue },
        GitSignsChangeLn = { fg = colors.palette.blue },
        GitSignsChangeNr = { fg = colors.palette.blue },
        GitSignsDelete = { fg = colors.palette.red },
        GitSignsDeleteLn = { fg = colors.palette.red },
        GitSignsDeleteNr = { fg = colors.palette.red },
    }

    ---@type HighlightGroup
    highlights.plugins.neotree = {
        NeoTreeNormal = {
            fg = colors.semantic.fg,
            bg = config.transparent and colors.none or colors.semantic.bg0,
        },
        NeoTreeNormalNC = {
            fg = colors.semantic.fg,
            bg = config.transparent and colors.none or colors.semantic.bg0,
        },
        NeoTreeEndOfBuffer = {
            fg = config.ending_tildes and colors.palette.red or colors.semantic.bg0,
            bg = config.transparent and colors.none or colors.semantic.bg0,
        },
    }

    ---@type HighlightGroup
    highlights.plugins.nvim_tree = {
        NvimTreeNormal = {
            fg = colors.semantic.fg,
            bg = config.transparent and colors.none or colors.semantic.bg0,
        },
        NvimTreeVertSplit = {
            fg = colors.palette.gray,
            bg = config.transparent and colors.none or colors.semantic.bg1,
        },
        NvimTreeEndOfBuffer = {
            fg = config.ending_tildes and colors.semantic.bg2 or colors.semantic.bg1,
            bg = config.transparent and colors.none or colors.semantic.bg0,
        },
        NvimTreeRootFolder = { fg = colors.palette.dark_yellow, bold = true },
        NvimTreeGitDirty = { fg = colors.palette.yellow },
        NvimTreeGitNew = { fg = colors.palette.green },
        NvimTreeGitDeleted = { fg = colors.palette.red },
        NvimTreeSpecialFile = { fg = colors.palette.yellow, underline = true },
        NvimTreeIndentMarker = { fg = colors.semantic.fg },
        NvimTreeImageFile = { fg = colors.palette.dark_purple },
        NvimTreeSymlink = { fg = colors.palette.purple },
        NvimTreeFolderName = { fg = colors.palette.blue },
        NvimTreeCursorLine = { bg = colors.semantic.bg1 },
        NvimTreeWindowPicker = {
            fg = colors.palette.white,
            bg = colors.palette.gray,
        },
    }

    ---@type HighlightGroup
    highlights.plugins.indent_blankline = {
        -- IndentBlanklineChar
        -- IndentBlanklineSpaceChar
        -- IndentBlanklineSpaceCharBlankline
        -- IndentBlanklineContextSpaceChar
        IndentBlanklineContextChar = { fg = colors.semantic.fg_active },
        IndentBlanklineIndent1 = { fg = colors.primary[2] },
        IndentBlanklineIndent2 = { fg = colors.primary[3] },
        IndentBlanklineIndent3 = { fg = colors.primary[4] },
        IndentBlanklineIndent4 = { fg = colors.primary[5] },
        IndentBlanklineIndent5 = { fg = colors.primary[6] },
        IndentBlanklineIndent6 = { fg = colors.primary[7] },
        IndentBlanklineIndent7 = { fg = colors.primary[8] },
        IndentBlanklineIndent8 = { fg = colors.primary[9] },
    }

    ---@type HighlightGroup
    highlights.plugins.telescope = {
        TelescopeNormal = { bg = colors.semantic.bg1 },
        TelescopeTitle = { fg = colors.palette.dark_yellow },
        TelescopeBorder = { fg = colors.palette.red },
        TelescopePromptBorder = { fg = colors.palette.gray },
        TelescopeResultsBorder = { fg = colors.palette.gray },
        TelescopePreviewBorder = { fg = colors.palette.gray },
        TelescopeMatching = { fg = colors.palette.dark_yellow, bold = true },
        TelescopePromptPrefix = { fg = colors.palette.green },
        TelescopeSelection = { bg = colors.semantic.bg2 },
        TelescopeSelectionCaret = { fg = colors.palette.yellow },
    }

    ---@type HighlightGroup
    highlights.plugins.dashboard = {
        DashboardShortCut = { fg = colors.palette.blue },
        DashboardHeader = { fg = colors.palette.yellow },
        DashboardCenter = { fg = colors.palette.cyan },
        DashboardFooter = { fg = colors.palette.dark_red, italic = true },
    }

    ---@type HighlightGroup
    highlights.plugins.outline = {
        FocusedSymbol = {
            fg = colors.palette.purple,
            bg = colors.semantic.bg2,
            bold = true,
        },
        AerialLine = {
            fg = colors.palette.purple,
            bg = colors.semantic.bg2,
            bold = true,
        },
    }

    ---@type HighlightGroup
    highlights.plugins.ts_rainbow = {
        rainbowcol1 = { fg = colors.palette.gray },
        rainbowcol2 = { fg = colors.palette.yellow },
        rainbowcol3 = { fg = colors.palette.blue },
        rainbowcol4 = { fg = colors.palette.dark_yellow },
        rainbowcol5 = { fg = colors.palette.purple },
        rainbowcol6 = { fg = colors.palette.green },
        rainbowcol7 = { fg = colors.palette.red },
    }

    ---@type HighlightGroup
    highlights.plugins.incline = {
        InclineNormal = {
            fg = colors.semantic.fg_active,
            bg = colors.semantic.bg0,
            bold = true,
        },
        InclineNormalNC = {
            fg = colors.semantic.fg_dimmed,
            bg = colors.semantic.bg0,
        },
    }

    ---@type HighlightGroup
    highlights.langs.typescript = {
        typescriptArrowFuncDef = { fg = colors.palette.dark_yellow },
        typescriptVariable = { fg = colors.palette.red },
    }

    ---@type HighlightGroup
    highlights.langs.css = {
        cssPositioningAttr = { fg = colors.palette.yellow },
        cssBoxAttr = { fg = colors.palette.yellow },
        cssTextAttr = { fg = colors.palette.blue },
        cssCommonAttr = { fg = colors.palette.blue },
        cssCascadeAttr = { fg = colors.palette.yellow },
        cssFlexibleBoxAttr = { fg = colors.palette.yellow },
        cssUnitDecorators = { fg = colors.palette.yellow },
        cssValueLength = { fg = colors.palette.dark_blue },
    }

    ---@type HighlightGroup
    highlights.langs.sass = {
        sassVariable = { fg = colors.palette.dark_yellow },
        sassProperty = { fg = colors.palette.blue },
        sassMixing = { fg = colors.palette.red },
        sassMixinName = { fg = colors.palette.purple },
        sassCssAttribute = { fg = colors.palette.yellow },
        sassDefinition = { fg = colors.palette.white },
        sassAmbersand = { fg = colors.palette.yellow },
        Character = { fg = colors.palette.yellow },
    }

    ---@type HighlightGroup
    highlights.langs.c = {
        cInclude = { fg = colors.palette.blue },
        cStorageClass = { fg = colors.palette.purple },
        cTypedef = { fg = colors.palette.purple },
        cDefine = { fg = colors.palette.cyan },
        cTSInclude = { fg = colors.palette.blue },
        cTSConstant = { fg = colors.palette.cyan },
        cTSConstMacro = { fg = colors.palette.purple },
        cTSOperator = { fg = colors.palette.purple },
    }

    ---@type HighlightGroup
    highlights.langs.cpp = {
        cppStatement = { fg = colors.palette.purple, bold = true },
        cppTSInclude = { fg = colors.palette.blue },
        cppTSConstant = { fg = colors.palette.cyan },
        cppTSConstMacro = { fg = colors.palette.purple },
        cppTSOperator = { fg = colors.palette.purple },
    }

    ---@type HighlightGroup
    highlights.langs.markdown = {
        markdownBlockquote = { fg = colors.palette.gray },
        markdownBold = { fg = colors.none, bold = true },
        markdownBoldDelimiter = { fg = colors.palette.gray },
        markdownCode = { fg = colors.palette.green },
        markdownCodeBlock = { fg = colors.palette.green },
        markdownCodeDelimiter = { fg = colors.palette.yellow },
        markdownH1 = { fg = colors.palette.red, bold = true },
        markdownH2 = { fg = colors.palette.purple, bold = true },
        markdownH3 = { fg = colors.palette.dark_yellow, bold = true },
        markdownH4 = { fg = colors.palette.red, bold = true },
        markdownH5 = { fg = colors.palette.purple, bold = true },
        markdownH6 = { fg = colors.palette.dark_yellow, bold = true },
        markdownHeadingDelimiter = { fg = colors.palette.gray },
        markdownHeadingRule = { fg = colors.palette.gray },
        markdownId = { fg = colors.palette.yellow },
        markdownIdDeclaration = { fg = colors.palette.red },
        markdownItalic = { fg = colors.none, italic = true },
        markdownItalicDelimiter = { fg = colors.palette.gray, italic = true },
        markdownLinkDelimiter = { fg = colors.palette.gray },
        markdownLinkText = { fg = colors.palette.red },
        markdownLinkTextDelimiter = { fg = colors.palette.gray },
        markdownListMarker = { fg = colors.palette.red },
        markdownOrderedListMarker = { fg = colors.palette.red },
        markdownRule = { fg = colors.palette.purple },
        markdownUrl = { fg = colors.palette.blue, underline = true },
        markdownUrlDelimiter = { fg = colors.palette.gray },
        markdownUrlTitleDelimiter = { fg = colors.palette.green },
    }

    ---@type HighlightGroup
    highlights.langs.php = {
        phpFunctions = extend_with_code_style(
            { fg = colors.semantic.fg },
            config.code_style.functions
        ),
        phpMethods = { fg = colors.palette.cyan },
        phpStructure = { fg = colors.palette.purple },
        phpOperator = { fg = colors.palette.purple },
        phpMemberSelector = { fg = colors.semantic.fg },
        phpVarSelector = extend_with_code_style(
            { fg = colors.palette.dark_yellow },
            config.code_style.variables
        ),
        phpIdentifier = extend_with_code_style(
            { fg = colors.palette.dark_yellow },
            config.code_style.variables
        ),
        phpBoolean = { fg = colors.palette.cyan },
        phpNumber = { fg = colors.palette.dark_yellow },
        phpHereDoc = { fg = colors.palette.green },
        phpNowDoc = { fg = colors.palette.green },
        phpSCKeyword = extend_with_code_style(
            { fg = colors.palette.purple },
            config.code_style.keywords
        ),
        phpFCKeyword = extend_with_code_style(
            { fg = colors.palette.purple },
            config.code_style.keywords
        ),
        phpRegion = { fg = colors.palette.blue },
    }

    ---@type HighlightGroup
    highlights.langs.scala = {
        scalaNameDefinition = { fg = colors.semantic.fg },
        scalaInterpolationBoundary = { fg = colors.palette.purple },
        scalaInterpolation = { fg = colors.palette.purple },
        scalaTypeOperator = { fg = colors.palette.red },
        scalaOperator = { fg = colors.palette.red },
        scalaKeywordModifier = extend_with_code_style(
            { fg = colors.palette.red },
            config.code_style.keywords
        ),
    }

    ---@type HighlightGroup
    highlights.langs.tex = {
        latexTSInclude = { fg = colors.palette.blue },
        latexTSFuncMacro = extend_with_code_style(
            { fg = colors.semantic.fg },
            config.code_style.functions
        ),
        latexTSEnvironment = { fg = colors.palette.cyan, bold = true },
        latexTSEnvironmentName = { fg = colors.palette.yellow },
        texCmdEnv = { fg = colors.palette.cyan },
        texEnvArgName = { fg = colors.palette.yellow },
        latexTSTitle = { fg = colors.palette.green },
        latexTSType = { fg = colors.palette.blue },
        latexTSMath = { fg = colors.palette.dark_yellow },
        texMathZoneX = { fg = colors.palette.dark_yellow },
        texMathZoneXX = { fg = colors.palette.dark_yellow },
        texMathDelimZone = { fg = colors.palette.light_gray },
        texMathDelim = { fg = colors.palette.purple },
        texMathOper = { fg = colors.palette.red },
        texCmd = { fg = colors.palette.purple },
        texCmdPart = { fg = colors.palette.blue },
        texCmdPackage = { fg = colors.palette.blue },
        texPgfType = { fg = colors.palette.yellow },
    }

    ---@type HighlightGroup
    highlights.langs.vim = {
        vimOption = { fg = colors.palette.red },
        vimSetEqual = { fg = colors.palette.yellow },
        vimMap = { fg = colors.palette.purple },
        vimMapModKey = { fg = colors.palette.dark_yellow },
        vimNotation = { fg = colors.palette.red },
        vimMapLhs = { fg = colors.semantic.fg },
        vimMapRhs = { fg = colors.palette.blue },
        vimVar = extend_with_code_style(
            { fg = colors.semantic.fg },
            config.code_style.variables
        ),
        vimCommentTitle = extend_with_code_style(
            { fg = colors.palette.light_gray },
            config.code_style.comments
        ),
    }

    highlights.lsp_kind_icons_color = {
        Default = colors.palette.purple,
        Class = colors.palette.yellow,
        Color = colors.palette.green,
        Constant = colors.palette.dark_yellow,
        Constructor = colors.palette.blue,
        Enum = colors.palette.purple,
        EnumMember = colors.palette.yellow,
        Event = colors.palette.yellow,
        Field = colors.palette.purple,
        File = colors.palette.blue,
        Folder = colors.palette.dark_yellow,
        Function = colors.palette.blue,
        Interface = colors.palette.green,
        Keyword = colors.palette.cyan,
        Method = colors.palette.blue,
        Module = colors.palette.dark_yellow,
        Operator = colors.palette.red,
        Property = colors.palette.cyan,
        Reference = colors.palette.dark_yellow,
        Snippet = colors.palette.red,
        Struct = colors.palette.purple,
        Text = colors.palette.light_gray,
        TypeParameter = colors.palette.red,
        Unit = colors.palette.green,
        Value = colors.palette.dark_yellow,
        Variable = colors.palette.purple,
    }

    for kind, color in pairs(highlights.lsp_kind_icons_color) do
        highlights.plugins.cmp["CmpItemKind" .. kind] = {
            fg = color,
            -- TODO: Test!
            config.cmp_itemkind_reverse and { reverse = true },
        }
        highlights.plugins.outline["Aerial" .. kind .. "Icon"] = { fg = color }
    end

    return highlights
end

return get_default_highlights
