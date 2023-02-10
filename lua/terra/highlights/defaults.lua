local actions = require("terra.actions")

local extend_with_code_style = actions.highlights.extend_with_code_style
local darken = actions.color.darken

---Returns the default Highlights
---@param colors TerraColors
---@param config TerraConfig
local function get_default_highlights(colors, config)
    ---@type Highlights
    local highlights = {
        langs = {},
        plugins = {},
    }

    ---@type HighlightGroup
    highlights.common = {
        Normal = {
            fg = colors.semantic.fg.main,
            bg = config.transparent and colors.none or colors.semantic.bg.main,
        },
        Terminal = {
            fg = colors.semantic.fg.main,
            bg = config.transparent and colors.none or colors.semantic.bg.main,
        },
        EndOfBuffer = {
            fg = config.ending_tildes and colors.semantic.bg.light
                or colors.semantic.bg.main,
            bg = config.transparent and colors.none or colors.semantic.bg.main,
        },
        FoldColumn = {
            fg = colors.palette.gray,
            bg = config.transparent and colors.none or colors.semantic.bg.main,
        },
        Folded = {
            fg = colors.palette.gray,
            bg = config.transparent and colors.none or colors.semantic.bg.main,
        },
        SignColumn = {
            fg = colors.semantic.fg.main,
            bg = config.transparent and colors.none or colors.semantic.bg.main,
        },
        ToolbarLine = { fg = colors.semantic.fg.main },
        Cursor = { reverse = true },
        vCursor = { reverse = true },
        iCursor = { reverse = true },
        lCursor = { reverse = true },
        CursorIM = { reverse = true },
        CursorColumn = { bg = colors.semantic.bg.light },
        CursorLine = { bg = colors.semantic.bg.light },
        ColorColumn = { bg = colors.semantic.bg.light },
        CursorLineNr = { fg = colors.palette.yellow },
        LineNr = { fg = colors.palette.gray },
        Conceal = { fg = colors.palette.gray, bg = colors.semantic.bg.main },
        DiffAdd = { fg = colors.semantic.fg.diff.add },
        DiffChange = { fg = colors.semantic.fg.diff.change },
        DiffDelete = { fg = colors.semantic.fg.diff.delete },
        DiffText = { fg = colors.semantic.fg.diff.text },
        DiffAdded = { fg = colors.palette.green },
        DiffRemoved = { fg = colors.palette.red },
        DiffFile = { fg = colors.palette.cyan },
        DiffIndexLine = { fg = colors.palette.gray },
        Directory = { fg = colors.palette.blue },
        ErrorMsg = { fg = colors.palette.red, bold = true },
        WarningMsg = { fg = colors.palette.yellow, bold = true },
        MoreMsg = { fg = colors.palette.blue, bold = true },
        IncSearch = { fg = colors.semantic.bg.dark, bg = colors.palette.blue },
        Search = { fg = colors.semantic.bg.dark, bg = colors.palette.blue },
        Substitute = { fg = colors.semantic.bg.dark, bg = colors.palette.green },
        MatchParen = { fg = colors.none, bg = colors.palette.gray },
        NonText = { fg = colors.palette.gray },
        Whitespace = { fg = colors.palette.gray },
        SpecialKey = { fg = colors.palette.gray },
        Pmenu = { fg = colors.semantic.fg.main, bg = colors.semantic.bg.dark },
        PmenuSbar = { fg = colors.none, bg = colors.semantic.bg.dark },
        PmenuSel = { fg = colors.semantic.bg.dark, bg = colors.palette.blue },
        WildMenu = { fg = colors.semantic.bg.dark, bg = colors.palette.blue },
        PmenuThumb = { fg = colors.none, bg = colors.palette.gray },
        Question = { fg = colors.palette.yellow },
        SpellBad = { fg = colors.palette.red, sp = colors.palette.red },
        SpellCap = { fg = colors.palette.yellow, sp = colors.palette.yellow },
        SpellLocal = { fg = colors.palette.blue, sp = colors.palette.blue },
        SpellRare = { fg = colors.palette.magenta, sp = colors.palette.magenta },
        StatusLine = { fg = colors.semantic.fg.main, bg = colors.semantic.bg.dark },
        StatusLineTerm = {
            fg = colors.semantic.fg.main,
            bg = colors.semantic.bg.dark,
        },
        StatusLineNC = { fg = colors.palette.gray, bg = colors.semantic.bg.dark },
        StatusLineTermNC = {
            fg = colors.palette.gray,
            bg = colors.semantic.bg.dark,
        },
        TabLine = { fg = colors.semantic.fg.main, bg = colors.semantic.bg.main },
        TabLineFill = { fg = colors.palette.gray, bg = colors.semantic.bg.main },
        TabLineSel = { fg = colors.semantic.fg.main, bg = colors.semantic.bg.light },
        VertSplit = { fg = colors.palette.gray },
        Visual = { bg = colors.semantic.bg.active },
        VisualNOS = { bg = colors.semantic.bg.active },
        QuickFixLine = { fg = colors.palette.blue, bg = colors.semantic.bg.light },
        Debug = { fg = colors.palette.yellow },
        debugPC = { fg = colors.semantic.bg.dark, bg = colors.palette.green },
        debugBreakpoint = { fg = colors.semantic.bg.dark, bg = colors.palette.red },
        ToolbarButton = { fg = colors.semantic.bg.dark, bg = colors.palette.blue },
        FloatBorder = { fg = colors.palette.gray, bg = colors.semantic.bg.main },
        NormalFloat = { fg = colors.semantic.fg.main, bg = colors.semantic.bg.main },
        WinBar = { link = "StatusLine" },
        WinBarNC = { link = "StatusLineNC" },
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
        PreProc = { fg = colors.palette.magenta },
        PreCondit = { fg = colors.palette.magenta },
        Include = { fg = colors.palette.magenta },
        Keyword = extend_with_code_style(
            { fg = colors.palette.red },
            config.code_style.keywords
        ),
        Define = { fg = colors.palette.magenta },
        Typedef = { fg = colors.palette.magenta },
        Exception = { fg = colors.palette.magenta },
        Conditional = extend_with_code_style(
            { fg = colors.palette.magenta },
            config.code_style.keywords
        ),
        Repeat = extend_with_code_style(
            { fg = colors.palette.magenta },
            config.code_style.keywords
        ),
        Statement = { fg = colors.palette.magenta },
        Macro = { fg = colors.palette.red },
        Error = { fg = colors.palette.magenta },
        Label = { fg = colors.palette.magenta },
        Special = { fg = colors.palette.red },
        SpecialChar = { fg = colors.palette.red },
        Function = extend_with_code_style(
            { fg = colors.palette.yellow },
            config.code_style.functions
        ),
        Operator = { fg = colors.semantic.fg.main },
        Title = { fg = colors.palette.cyan },
        Tag = { fg = colors.palette.green },
        Delimiter = { fg = colors.palette.light_gray },
        Comment = extend_with_code_style(
            { fg = colors.semantic.fg.dark },
            config.code_style.comments
        ),
        SpecialComment = extend_with_code_style(
            { fg = colors.semantic.fg.dark },
            config.code_style.comments
        ),
        Todo = { fg = colors.semantic.fg.neutral },
    }

    highlights.plugins.TreesitterContext = {
        TreesitterContext = {
            link = "StatusLine",
        },
        TreesitterContextLineNumber = {
            link = "StatusLine",
        },
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
            bg = config.diagnostics.background
                    and darken(diagnostics_error_color, 0.1, colors.semantic.bg.main)
                or colors.none,
            fg = diagnostics_error_color,
        },
        DiagnosticVirtualTextWarn = {
            bg = config.diagnostics.background
                    and darken(diagnostics_warn_color, 0.1, colors.semantic.bg.main)
                or colors.none,
            fg = diagnostics_warn_color,
        },
        DiagnosticVirtualTextInfo = {
            bg = config.diagnostics.background
                    and darken(diagnostics_info_color, 0.1, colors.semantic.bg.main)
                or colors.none,
            fg = diagnostics_info_color,
        },
        DiagnosticVirtualTextHint = {
            bg = config.diagnostics.background
                    and darken(diagnostics_hint_color, 0.1, colors.semantic.bg.main)
                or colors.none,
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

        LspReferenceText = { bg = colors.semantic.bg.light },
        LspReferenceWrite = { bg = colors.semantic.bg.light },
        LspReferenceRead = { bg = colors.semantic.bg.light },

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
    highlights.plugins.bufferline = {
        -- BufferLineFill = {
        --     bg = config.transparent and colors.none or colors.semantic.bg.dark,
        -- },
        -- BufferLineBackground = {
        --     bg = config.transparent and colors.none or colors.semantic.bg.dark,
        -- },
        -- BufferLineTabSeparator = {
        --     bg = config.transparent and colors.none or colors.semantic.bg.dark,
        -- },
        -- BufferLineOffsetSeparator = {
        --     fg = config.transparent and colors.none or colors.semantic.fg.neutral,
        --     bg = config.transparent and colors.none or colors.semantic.bg.main,
        -- },
        BufferLineTabSelected = {
            fg = colors.semantic.fg.active,
            -- bg = colors.semantic.bg.main,
        },
        -- BufferLineIndicatorSelected = {
        --     fg = colors.semantic.bg.main,
        -- },
        BufferLineBufferSelected = {
            fg = colors.semantic.fg.active,
            -- bg = colors.semantic.bg.dark,
            bold = true,
        },
        -- BufferLineCloseButtonSelected = {
        --     fg = colors.semantic.fg.neutral,
        --     bg = colors.semantic.bg.main,
        -- },
    }

    ---@type HighlightGroup
    highlights.plugins.cmp = {
        CmpItemAbbr = { fg = colors.semantic.fg.main },
        CmpItemAbbrDeprecated = {
            fg = colors.palette.light_gray,
            strikethrough = true,
        },
        CmpItemAbbrMatch = { fg = colors.palette.cyan },
        CmpItemAbbrMatchFuzzy = { fg = colors.palette.cyan, underline = true },
        CmpItemMenu = { fg = colors.palette.light_gray },
        CmpItemKind = {
            fg = colors.palette.magenta,
            config.cmp_itemkind_reverse and { reverse = true },
        },
    }

    ---@type HighlightGroup
    highlights.plugins.coc = {
        CocErrorSign = highlights.plugins.lsp.DgnosticError,
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
            fg = colors.semantic.fg.main,
            bg = colors.semantic.bg.main,
        },
        ToggleTerm2FloatBorder = { fg = colors.palette.gray },
        ToggleTerm2NormalFloat = {
            fg = colors.semantic.fg.main,
            bg = colors.semantic.bg.main,
        },
        ToggleTerm3FloatBorder = { fg = colors.palette.gray },
        ToggleTerm3NormalFloat = {
            fg = colors.semantic.fg.main,
            bg = colors.semantic.bg.main,
        },
        ToggleTerm4FloatBorder = { fg = colors.palette.gray },
        ToggleTerm4NormalFloat = {
            fg = colors.semantic.fg.main,
            bg = colors.semantic.bg.main,
        },
        ToggleTerm5FloatBorder = { fg = colors.palette.gray },
        ToggleTerm5NormalFloat = {
            fg = colors.semantic.fg.main,
            bg = colors.semantic.bg.main,
        },
        ToggleTerm6FloatBorder = { fg = colors.palette.gray },
        ToggleTerm6NormalFloat = {
            fg = colors.semantic.fg.main,
            bg = colors.semantic.bg.main,
        },
        ToggleTerm7FloatBorder = { fg = colors.palette.gray },
        ToggleTerm7NormalFloat = {
            fg = colors.semantic.fg.main,
            bg = colors.semantic.bg.main,
        },
        ToggleTerm8FloatBorder = { fg = colors.palette.gray },
        ToggleTerm8NormalFloat = {
            fg = colors.semantic.fg.main,
            bg = colors.semantic.bg.main,
        },
        ToggleTerm9FloatBorder = { fg = colors.palette.gray },
        ToggleTerm9NormalFloat = {
            fg = colors.semantic.fg.main,
            bg = colors.semantic.bg.main,
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
        DiffviewFilePanelCounter = { fg = colors.palette.magenta, bold = true },
        DiffviewFilePanelFileName = { fg = colors.semantic.fg.main },
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
            fg = colors.semantic.fg.main,
            -- bg = config.transparent and colors.none or colors.semantic.bg.dark,
            bg = colors.semantic.bg.dark,
        },
        NeoTreeNormalNC = {
            fg = colors.semantic.fg.main,
            -- bg = config.transparent and colors.none or colors.semantic.bg.dark,
            bg = colors.semantic.bg.dark,
        },
        NeoTreeEndOfBuffer = {
            fg = config.ending_tildes and colors.palette.red
                or colors.semantic.bg.dark,
            bg = config.transparent and colors.none or colors.semantic.bg.dark,
        },
        NeoTreeWinSeparator = {
            fg = colors.semantic.fg.neutral,
            bg = colors.semantic.bg.dark,
        },
    }

    ---@type HighlightGroup
    highlights.plugins.nvim_tree = {
        NvimTreeNormal = {
            fg = colors.semantic.fg.main,
            bg = config.transparent and colors.none or colors.semantic.bg.dark,
        },
        NvimTreeVertSplit = {
            fg = colors.palette.gray,
            bg = config.transparent and colors.none or colors.semantic.bg.main,
        },
        NvimTreeEndOfBuffer = {
            fg = config.ending_tildes and colors.semantic.bg.light
                or colors.semantic.bg.main,
            bg = config.transparent and colors.none or colors.semantic.bg.dark,
        },
        NvimTreeRootFolder = { fg = colors.palette.dark_yellow, bold = true },
        NvimTreeGitDirty = { fg = colors.palette.yellow },
        NvimTreeGitNew = { fg = colors.palette.green },
        NvimTreeGitDeleted = { fg = colors.palette.red },
        NvimTreeSpecialFile = { fg = colors.palette.yellow, underline = true },
        NvimTreeIndentMarker = { fg = colors.semantic.fg.main },
        NvimTreeImageFile = { fg = colors.palette.dark_magenta },
        NvimTreeSymlink = { fg = colors.palette.magenta },
        NvimTreeFolderName = {
            fg = colors.palette.blue,
            bg = config.transparent and colors.none or colors.semantic.bg.dark,
        },
        NvimTreeCursorLine = { bg = colors.semantic.bg.main },
        NvimTreeWinSeparator = {
            fg = colors.semantic.fg.neutral,
            bg = config.transparent and colors.none or colors.semantic.bg.main,
        },
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
        IndentBlanklineContextChar = { fg = colors.semantic.fg.active },
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
        TelescopeNormal = { bg = colors.semantic.bg.main },
        TelescopeTitle = { fg = colors.palette.dark_yellow },
        TelescopeBorder = { fg = colors.palette.red },
        TelescopePromptBorder = { fg = colors.palette.gray },
        TelescopeResultsBorder = { fg = colors.palette.gray },
        TelescopePreviewBorder = { fg = colors.palette.gray },
        TelescopeMatching = { fg = colors.palette.dark_yellow, bold = true },
        TelescopePromptPrefix = { fg = colors.palette.green },
        TelescopeSelection = { bg = colors.semantic.bg.light },
        TelescopeSelectionCaret = { fg = colors.palette.yellow },
    }

    ---@type HighlightGroup
    highlights.plugins.dashboard = {
        DashboardShortCut = { fg = colors.palette.blue },
        DashboardHeader = { fg = colors.palette.yellow },
        DashboardCenter = { fg = colors.palette.cyan },
        DashboardFooter = { fg = colors.palette.dark_red, italic = true },
    }

    ---https://github.com/DNLHC/glance.nvim
    ---@type HighlightGroup
    highlights.plugins.glance = {
        GlancePreviewNormal = {
            fg = colors.semantic.fg.main,
            bg = colors.semantic.bg.dark,
        },
        -- GlancePreviewMatch
        -- GlancePreviewCursorLine
        -- GlancePreviewSignColumn
        -- GlancePreviewEndOfBuffer
        -- GlancePreviewLineNr
        GlancePreviewBorderBottom = { fg = colors.semantic.fg.active },
        GlanceWinBarFilename = {
            fg = colors.semantic.fg.active,
            bg = colors.semantic.bg.dark,
        },
        GlanceWinBarFilepath = {
            fg = colors.semantic.fg.neutral,
            bg = colors.semantic.bg.dark,
        },
        -- GlanceWinBarTitle = { fg = colors.semantic.fg.active, bg = colors.semantic.bg.dark, },
        GlanceListNormal = {
            fg = colors.semantic.fg.main,
            bg = colors.semantic.bg.dark,
        },
        -- GlanceListFilename
        -- GlanceListFilepath
        -- GlanceListCount
        GlanceListMatch = { fg = colors.semantic.fg.active },
        -- GlanceListCursorLine
        -- GlanceListEndOfBuffer
        GlanceListBorderBottom = { fg = colors.semantic.fg.active },
        -- GlanceFoldIcon
        -- GlanceIndent
        GlanceBorderTop = { fg = colors.semantic.fg.active },
    }

    ---@type HighlightGroup
    highlights.plugins.outline = {
        FocusedSymbol = {
            fg = colors.palette.magenta,
            bg = colors.semantic.bg.light,
            bold = true,
        },
        AerialLine = {
            fg = colors.palette.magenta,
            bg = colors.semantic.bg.light,
            bold = true,
        },
    }

    ---@type HighlightGroup
    highlights.plugins.ts_rainbow = {
        rainbowcol1 = { fg = colors.palette.gray },
        rainbowcol2 = { fg = colors.palette.yellow },
        rainbowcol3 = { fg = colors.palette.blue },
        rainbowcol4 = { fg = colors.palette.dark_yellow },
        rainbowcol5 = { fg = colors.palette.magenta },
        rainbowcol6 = { fg = colors.palette.green },
        rainbowcol7 = { fg = colors.palette.red },
    }

    ---@type HighlightGroup
    highlights.plugins.incline = {
        InclineNormal = {
            fg = colors.semantic.fg.active,
            bg = colors.semantic.bg.dark,
            bold = true,
        },
        InclineNormalNC = {
            fg = colors.semantic.fg.neutral,
            bg = colors.semantic.bg.dark,
        },
    }

    ---@type HighlightGroup
    highlights.plugins.indent_scope = {
        MiniIndentscopeSymbol = {
            fg = colors.semantic.fg.active,
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
        sassMixinName = { fg = colors.palette.magenta },
        sassCssAttribute = { fg = colors.palette.yellow },
        sassDefinition = { fg = colors.palette.white },
        sassAmbersand = { fg = colors.palette.yellow },
        Character = { fg = colors.palette.yellow },
    }

    ---@type HighlightGroup
    highlights.langs.c = {
        cInclude = { fg = colors.palette.blue },
        cStorageClass = { fg = colors.palette.magenta },
        cTypedef = { fg = colors.palette.magenta },
        cDefine = { fg = colors.palette.cyan },
        cTSInclude = { fg = colors.palette.blue },
        cTSConstant = { fg = colors.palette.cyan },
        cTSConstMacro = { fg = colors.palette.magenta },
        cTSOperator = { fg = colors.palette.magenta },
    }

    ---@type HighlightGroup
    highlights.langs.cpp = {
        cppStatement = { fg = colors.palette.magenta, bold = true },
        cppTSInclude = { fg = colors.palette.blue },
        cppTSConstant = { fg = colors.palette.cyan },
        cppTSConstMacro = { fg = colors.palette.magenta },
        cppTSOperator = { fg = colors.palette.magenta },
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
        markdownH2 = { fg = colors.palette.magenta, bold = true },
        markdownH3 = { fg = colors.palette.dark_yellow, bold = true },
        markdownH4 = { fg = colors.palette.red, bold = true },
        markdownH5 = { fg = colors.palette.magenta, bold = true },
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
        markdownRule = { fg = colors.palette.magenta },
        markdownUrl = { fg = colors.palette.blue, underline = true },
        markdownUrlDelimiter = { fg = colors.palette.gray },
        markdownUrlTitleDelimiter = { fg = colors.palette.green },
    }

    ---@type HighlightGroup
    highlights.langs.php = {
        phpFunctions = extend_with_code_style(
            { fg = colors.semantic.fg.main },
            config.code_style.functions
        ),
        phpMethods = { fg = colors.palette.cyan },
        phpStructure = { fg = colors.palette.magenta },
        phpOperator = { fg = colors.palette.magenta },
        phpMemberSelector = { fg = colors.semantic.fg.main },
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
            { fg = colors.palette.magenta },
            config.code_style.keywords
        ),
        phpFCKeyword = extend_with_code_style(
            { fg = colors.palette.magenta },
            config.code_style.keywords
        ),
        phpRegion = { fg = colors.palette.blue },
    }

    ---@type HighlightGroup
    highlights.langs.scala = {
        scalaNameDefinition = { fg = colors.semantic.fg.main },
        scalaInterpolationBoundary = { fg = colors.palette.magenta },
        scalaInterpolation = { fg = colors.palette.magenta },
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
            { fg = colors.semantic.fg.main },
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
        texMathDelim = { fg = colors.palette.magenta },
        texMathOper = { fg = colors.palette.red },
        texCmd = { fg = colors.palette.magenta },
        texCmdPart = { fg = colors.palette.blue },
        texCmdPackage = { fg = colors.palette.blue },
        texPgfType = { fg = colors.palette.yellow },
    }

    ---@type HighlightGroup
    highlights.langs.vim = {
        vimOption = { fg = colors.palette.red },
        vimSetEqual = { fg = colors.palette.yellow },
        vimMap = { fg = colors.palette.magenta },
        vimMapModKey = { fg = colors.palette.dark_yellow },
        vimNotation = { fg = colors.palette.red },
        vimMapLhs = { fg = colors.semantic.fg.main },
        vimMapRhs = { fg = colors.palette.blue },
        vimVar = extend_with_code_style(
            { fg = colors.semantic.fg.main },
            config.code_style.variables
        ),
        vimCommentTitle = extend_with_code_style(
            { fg = colors.palette.light_gray },
            config.code_style.comments
        ),
    }

    highlights.lsp_kind_icons_color = {
        Default = colors.palette.magenta,
        Class = colors.palette.yellow,
        Color = colors.palette.green,
        Constant = colors.palette.dark_yellow,
        Constructor = colors.palette.blue,
        Enum = colors.palette.magenta,
        EnumMember = colors.palette.yellow,
        Event = colors.palette.yellow,
        Field = colors.palette.magenta,
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
        Struct = colors.palette.magenta,
        Text = colors.palette.light_gray,
        TypeParameter = colors.palette.red,
        Unit = colors.palette.green,
        Value = colors.palette.dark_yellow,
        Variable = colors.palette.magenta,
    }

    for kind, color in pairs(highlights.lsp_kind_icons_color) do
        highlights.plugins.cmp["CmpItemKind" .. kind] = {
            fg = color,
            -- TODO: Test!
            config.cmp_itemkind_reverse and { reverse = true },
        }
        highlights.plugins.outline["Aerial" .. kind .. "Icon"] = { fg = color }
    end

    require("terra.highlights.treesitter").setup(highlights, colors, config)

    return highlights
end

return get_default_highlights
