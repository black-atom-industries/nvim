local actions = require("terra.actions")

local extend = actions.highlights.extend_highlight
local darken = actions.color.darken

local M = {}

---@param highlights TerraHighlightsMap
---@param colors TerraColors
---@param config TerraConfig
---@return TerraHighlightsMap
M.get_highlights_map = function(highlights, colors, config)
    require("terra.highlights.common").setup(highlights, colors, config)
    require("terra.highlights.syntax").setup(highlights, colors, config)

    highlights.plugins.TreesitterContext = {
        TreesitterContext = {
            link = "StatusLine",
        },
        TreesitterContextLineNumber = {
            link = "StatusLine",
        },
    }

    local diagnostics_error_color = config.diagnostics.darker and colors.palette.dark_red or colors.palette.red
    local diagnostics_hint_color = config.diagnostics.darker and colors.palette.dark_blue or colors.palette.blue
    local diagnostics_warn_color = config.diagnostics.darker and colors.palette.dark_yellow or colors.palette.yellow
    local diagnostics_info_color = config.diagnostics.darker and colors.palette.dark_cyan or colors.palette.cyan

    ---@type TerraHighlightGroup
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
            bg = config.diagnostics.background and darken(diagnostics_error_color, 0.1, colors.semantics.bg.primary.main)
                or colors.none,
            fg = diagnostics_error_color,
        },
        DiagnosticVirtualTextWarn = {
            bg = config.diagnostics.background and darken(diagnostics_warn_color, 0.1, colors.semantics.bg.primary.main)
                or colors.none,
            fg = diagnostics_warn_color,
        },
        DiagnosticVirtualTextInfo = {
            bg = config.diagnostics.background and darken(diagnostics_info_color, 0.1, colors.semantics.bg.primary.main)
                or colors.none,
            fg = diagnostics_info_color,
        },
        DiagnosticVirtualTextHint = {
            bg = config.diagnostics.background and darken(diagnostics_hint_color, 0.1, colors.semantics.bg.primary.main)
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

        LspReferenceText = { bg = colors.semantics.bg.primary.light },
        LspReferenceWrite = { bg = colors.semantics.bg.primary.light },
        LspReferenceRead = { bg = colors.semantics.bg.primary.light },

        LspCodeLens = { fg = colors.palette.gray },
        LspCodeLensSeparator = { fg = colors.palette.gray },
    }

    highlights.plugins.lsp.LspDiagnosticsDefaultError = highlights.plugins.lsp.DiagnosticError
    highlights.plugins.lsp.LspDiagnosticsDefaultHint = highlights.plugins.lsp.DiagnosticHint
    highlights.plugins.lsp.LspDiagnosticsDefaultInformation = highlights.plugins.lsp.DiagnosticInfo
    highlights.plugins.lsp.LspDiagnosticsDefaultWarning = highlights.plugins.lsp.DiagnosticWarn
    highlights.plugins.lsp.LspDiagnosticsUnderlineError = highlights.plugins.lsp.DiagnosticUnderlineError
    highlights.plugins.lsp.LspDiagnosticsUnderlineHint = highlights.plugins.lsp.DiagnosticUnderlineHint
    highlights.plugins.lsp.LspDiagnosticsUnderlineInformation = highlights.plugins.lsp.DiagnosticUnderlineInfo
    highlights.plugins.lsp.LspDiagnosticsUnderlineWarning = highlights.plugins.lsp.DiagnosticUnderlineWarn
    highlights.plugins.lsp.LspDiagnosticsVirtualTextError = highlights.plugins.lsp.DiagnosticVirtualTextError
    highlights.plugins.lsp.LspDiagnosticsVirtualTextWarning = highlights.plugins.lsp.DiagnosticVirtualTextWarn
    highlights.plugins.lsp.LspDiagnosticsVirtualTextInformation = highlights.plugins.lsp.DiagnosticVirtualTextInfo
    highlights.plugins.lsp.LspDiagnosticsVirtualTextHint = highlights.plugins.lsp.DiagnosticVirtualTextHint

    ---@type TerraHighlightGroup
    highlights.plugins.ale = {
        ALEErrorSign = highlights.plugins.lsp.DiagnosticError,
        ALEInfoSign = highlights.plugins.lsp.DiagnosticInfo,
        ALEWarningSign = highlights.plugins.lsp.DiagnosticWarn,
    }

    ---@type TerraHighlightGroup
    highlights.plugins.cmp = {
        CmpItemAbbr = { fg = colors.semantics.fg.primary.main },
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

    ---@type TerraHighlightGroup
    highlights.plugins.coc = {
        CocErrorSign = highlights.plugins.lsp.DgnosticError,
        CocHintSign = highlights.plugins.lsp.DiagnosticHint,
        CocInfoSign = highlights.plugins.lsp.DiagnosticInfo,
        CocWarningSign = highlights.plugins.lsp.DiagnosticWarn,
    }

    ---@type TerraHighlightGroup
    highlights.plugins.whichkey = {
        WhichKey = { fg = colors.palette.red },
        WhichKeyDesc = { fg = colors.palette.blue },
        WhichKeyGroup = { fg = colors.palette.dark_yellow },
        WhichKeySeperator = { fg = colors.palette.green },
    }

    ---@type TerraHighlightGroup
    highlights.plugins.gitgutter = {
        GitGutterAdd = { fg = colors.palette.green },
        GitGutterChange = { fg = colors.palette.blue },
        GitGutterDelete = { fg = colors.palette.red },
    }

    ---@type TerraHighlightGroup
    highlights.plugins.hop = {
        HopNextKey = { fg = colors.palette.red, bold = true },
        HopNextKey1 = { fg = colors.palette.cyan, bold = true },
        HopNextKey2 = { fg = darken(colors.palette.blue, 0.7) },
        HopUnmatched = { fg = colors.palette.gray },
    }

    ---@type TerraHighlightGroup
    highlights.plugins.diffview = {
        DiffviewFilePanelTitle = { fg = colors.palette.blue, bold = true },
        DiffviewFilePanelCounter = { fg = colors.palette.magenta, bold = true },
        DiffviewFilePanelFileName = { fg = colors.semantics.fg.primary.main },
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

    ---@type TerraHighlightGroup
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

    ---@type TerraHighlightGroup
    highlights.plugins.neotree = {
        NeoTreeNormal = {
            fg = colors.semantics.fg.primary.main,
            bg = config.transparent and colors.none or colors.semantics.bg.primary.dark,
        },
        NeoTreeNormalNC = {
            fg = colors.semantics.fg.primary.main,
            bg = config.transparent and colors.none or colors.semantics.bg.primary.dark,
        },
        NeoTreeCursorLine = {
            bg = colors.semantics.bg.primary.main,
        },
        NeoTreeEndOfBuffer = {
            fg = config.ending_tildes and colors.semantics.fg.secondary.dark or colors.semantics.bg.primary.dark,
            bg = config.transparent and colors.none or colors.semantics.bg.primary.dark,
        },
        NeoTreeTabActive = {
            fg = colors.semantics.fg.primary.main,
            bg = config.transparent and colors.none or colors.semantics.bg.primary.main,
        },
        NeoTreeTabSeparatorActive = {
            link = "NeoTreeTabActive",
        },
        NeoTreeTabInactive = {
            fg = colors.semantics.fg.neutral,
            bg = config.transparent and colors.none or colors.semantics.bg.primary.dark,
        },
        NeoTreeTabSeparatorInactive = {
            link = "NeoTreeTabInactive",
        },
    }

    ---@type TerraHighlightGroup
    highlights.plugins.nvim_tree = {
        NvimTreeNormal = {
            fg = colors.semantics.fg.primary.main,
            bg = config.transparent and colors.none or colors.semantics.bg.primary.dark,
        },
        NvimTreeVertSplit = {
            fg = colors.palette.gray,
            bg = config.transparent and colors.none or colors.semantics.bg.primary.main,
        },
        NvimTreeEndOfBuffer = {
            fg = config.ending_tildes and colors.semantics.bg.primary.light or colors.semantics.bg.primary.main,
            bg = config.transparent and colors.none or colors.semantics.bg.primary.dark,
        },
        NvimTreeRootFolder = { fg = colors.palette.dark_yellow, bold = true },
        NvimTreeGitDirty = { fg = colors.palette.yellow },
        NvimTreeGitNew = { fg = colors.palette.green },
        NvimTreeGitDeleted = { fg = colors.palette.red },
        NvimTreeSpecialFile = { fg = colors.palette.yellow, underline = true },
        NvimTreeIndentMarker = { fg = colors.semantics.fg.primary.main },
        NvimTreeImageFile = { fg = colors.palette.dark_magenta },
        NvimTreeSymlink = { fg = colors.palette.magenta },
        NvimTreeFolderName = {
            fg = colors.palette.blue,
            bg = config.transparent and colors.none or colors.semantics.bg.primary.dark,
        },
        NvimTreeCursorLine = { bg = colors.semantics.bg.primary.main },
        NvimTreeWinSeparator = {
            fg = colors.semantics.fg.neutral,
            bg = config.transparent and colors.none or colors.semantics.bg.primary.main,
        },
        NvimTreeWindowPicker = {
            fg = colors.palette.white,
            bg = colors.palette.gray,
        },
    }

    ---@type TerraHighlightGroup
    highlights.plugins.indent_blankline = {
        IndentBlanklineChar = { fg = colors.semantics.fg.neutral },
        IndentBlanklineContextChar = { fg = colors.semantics.fg.active },
    }

    ---@type TerraHighlightGroup
    highlights.plugins.telescope = {
        TelescopeNormal = { bg = colors.semantics.bg.primary.dark },
        TelescopeBorder = {
            fg = colors.semantics.fg.neutral,
            bg = colors.semantics.bg.primary.dark,
        },
        TelescopeTitle = { fg = colors.semantics.fg.active },
        TelescopePromptPrefix = { fg = colors.semantics.fg.active },
        TelescopeMatching = { fg = colors.semantics.fg.active },
        TelescopeSelection = {
            fg = colors.semantics.fg.active,
            bg = colors.semantics.bg.primary.main,
        },
    }

    ---@type TerraHighlightGroup
    highlights.plugins.dashboard = {
        DashboardShortCut = { fg = colors.palette.blue },
        DashboardHeader = { fg = colors.palette.yellow },
        DashboardCenter = { fg = colors.palette.cyan },
        DashboardFooter = { fg = colors.palette.dark_red, italic = true },
    }

    ---@type TerraHighlightGroup
    highlights.plugins.outline = {
        FocusedSymbol = {
            fg = colors.palette.magenta,
            bg = colors.semantics.bg.primary.light,
            bold = true,
        },
        AerialLine = {
            fg = colors.palette.magenta,
            bg = colors.semantics.bg.primary.light,
            bold = true,
        },
    }

    ---@type TerraHighlightGroup
    highlights.plugins.ts_rainbow = {
        rainbowcol1 = { fg = colors.palette.gray },
        rainbowcol2 = { fg = colors.palette.yellow },
        rainbowcol3 = { fg = colors.palette.blue },
        rainbowcol4 = { fg = colors.palette.dark_yellow },
        rainbowcol5 = { fg = colors.palette.magenta },
        rainbowcol6 = { fg = colors.palette.green },
        rainbowcol7 = { fg = colors.palette.red },
    }

    ---@type TerraHighlightGroup
    highlights.plugins.incline = {
        InclineNormal = {
            fg = colors.semantics.fg.active,
            bg = colors.semantics.bg.primary.dark,
            bold = true,
        },
        InclineNormalNC = {
            fg = colors.semantics.fg.neutral,
            bg = colors.semantics.bg.primary.dark,
        },
    }

    ---@type TerraHighlightGroup
    highlights.plugins.indent_scope = {
        MiniIndentscopeSymbol = {
            fg = colors.semantics.fg.active,
        },
    }

    ---@type TerraHighlightGroup
    highlights.langs.typescript = {
        typescriptArrowFuncDef = { fg = colors.palette.dark_yellow },
        typescriptVariable = { fg = colors.palette.red },
    }

    ---@type TerraHighlightGroup
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

    ---@type TerraHighlightGroup
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

    ---@type TerraHighlightGroup
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

    ---@type TerraHighlightGroup
    highlights.langs.cpp = {
        cppStatement = { fg = colors.palette.magenta, bold = true },
        cppTSInclude = { fg = colors.palette.blue },
        cppTSConstant = { fg = colors.palette.cyan },
        cppTSConstMacro = { fg = colors.palette.magenta },
        cppTSOperator = { fg = colors.palette.magenta },
    }

    ---@type TerraHighlightGroup
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

    ---@type TerraHighlightGroup
    highlights.langs.php = {
        phpFunctions = extend({ fg = colors.semantics.fg.primary.main }, config.code_style.functions),
        phpMethods = { fg = colors.palette.cyan },
        phpStructure = { fg = colors.palette.magenta },
        phpOperator = { fg = colors.palette.magenta },
        phpMemberSelector = { fg = colors.semantics.fg.primary.main },
        phpVarSelector = extend({ fg = colors.palette.dark_yellow }, config.code_style.variables),
        phpIdentifier = extend({ fg = colors.palette.dark_yellow }, config.code_style.variables),
        phpBoolean = { fg = colors.palette.cyan },
        phpNumber = { fg = colors.palette.dark_yellow },
        phpHereDoc = { fg = colors.palette.green },
        phpNowDoc = { fg = colors.palette.green },
        phpSCKeyword = extend({ fg = colors.palette.magenta }, config.code_style.keywords),
        phpFCKeyword = extend({ fg = colors.palette.magenta }, config.code_style.keywords),
        phpRegion = { fg = colors.palette.blue },
    }

    ---@type TerraHighlightGroup
    highlights.langs.scala = {
        scalaNameDefinition = { fg = colors.semantics.fg.primary.main },
        scalaInterpolationBoundary = { fg = colors.palette.magenta },
        scalaInterpolation = { fg = colors.palette.magenta },
        scalaTypeOperator = { fg = colors.palette.red },
        scalaOperator = { fg = colors.palette.red },
        scalaKeywordModifier = extend({ fg = colors.palette.red }, config.code_style.keywords),
    }

    ---@type TerraHighlightGroup
    highlights.langs.tex = {
        latexTSInclude = { fg = colors.palette.blue },
        latexTSFuncMacro = extend({ fg = colors.semantics.fg.primary.main }, config.code_style.functions),
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

    ---@type TerraHighlightGroup
    highlights.langs.vim = {
        vimOption = { fg = colors.palette.red },
        vimSetEqual = { fg = colors.palette.yellow },
        vimMap = { fg = colors.palette.magenta },
        vimMapModKey = { fg = colors.palette.dark_yellow },
        vimNotation = { fg = colors.palette.red },
        vimMapLhs = { fg = colors.semantics.fg.primary.main },
        vimMapRhs = { fg = colors.palette.blue },
        vimVar = extend({ fg = colors.semantics.fg.primary.main }, config.code_style.variables),
        vimCommentTitle = extend({ fg = colors.palette.light_gray }, config.code_style.comments),
    }

    local lsp_kind_icons_color = {
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

    for kind, color in pairs(lsp_kind_icons_color) do
        highlights.plugins.cmp["CmpItemKind" .. kind] = {
            fg = color,
            config.cmp_itemkind_reverse and { reverse = true },
        }
        highlights.plugins.outline["Aerial" .. kind .. "Icon"] = { fg = color }
    end

    require("terra.highlights.treesitter").setup(highlights, colors, config)

    return highlights
end

return M
