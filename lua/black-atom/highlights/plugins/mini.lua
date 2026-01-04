---@doc https://github.com/echasnovski/mini.nvim
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors)
        local ui = colors.ui
        local palette = colors.palette
        local syntax = colors.syntax

        ---@type BlackAtom.Highlights
        return {
            -- MiniAnimate
            MiniAnimateCursor = { reverse = true },
            MiniAnimateNormalFloat = { link = "NormalFloat" },

            -- MiniClue
            MiniClueBorder = { fg = ui.fg.accent, bg = ui.bg.float },
            MiniClueTitle = { fg = ui.fg.accent, bg = ui.bg.float, bold = true },
            MiniClueSeparator = { fg = ui.fg.subtle },
            MiniClueNextKey = { fg = ui.fg.accent, bold = true },
            MiniClueNextKeyWithPostkeys = { fg = ui.fg.accent, bold = true },
            MiniClueDescGroup = { fg = ui.fg.subtle, italic = true },
            MiniClueDescSingle = { fg = ui.fg.default },

            -- MiniCompletion
            MiniCompletionActiveParameter = { underline = true },

            -- MiniCursorword
            MiniCursorword = { bg = ui.bg.selection },
            MiniCursorwordCurrent = { bg = ui.bg.selection },

            -- MiniDeps
            MiniDepsChangeAdded = { fg = ui.fg.add },
            MiniDepsChangeRemoved = { fg = ui.fg.delete },
            MiniDepsHint = { fg = ui.fg.hint },
            MiniDepsInfo = { fg = ui.fg.info },
            MiniDepsMsgBreaking = { fg = ui.fg.warn, bold = true },
            MiniDepsPlaceholder = { fg = ui.fg.subtle },
            MiniDepsTitle = { fg = ui.fg.accent, bold = true },
            MiniDepsTitleError = { fg = ui.fg.negative, bold = true },
            MiniDepsTitleSame = { fg = ui.fg.subtle, bold = true },
            MiniDepsTitleUpdate = { fg = ui.fg.positive, bold = true },

            -- MiniDiff
            MiniDiffSignAdd = { fg = ui.fg.add },
            MiniDiffSignChange = { fg = ui.fg.modify },
            MiniDiffSignDelete = { fg = ui.fg.delete },
            MiniDiffOverAdd = { bg = ui.bg.add },
            MiniDiffOverChange = { bg = ui.bg.modify },
            MiniDiffOverDelete = { bg = ui.bg.delete },
            MiniDiffOverContext = { bg = ui.bg.active },

            -- MiniFiles
            MiniFilesBorder = { fg = ui.fg.accent, bg = ui.bg.float },
            MiniFilesBorderModified = { fg = ui.fg.warn, bg = ui.bg.float },
            MiniFilesCursorLine = { bg = ui.bg.active },
            MiniFilesDirectory = { fg = ui.fg.accent, bold = true },
            MiniFilesFile = { fg = ui.fg.default },
            MiniFilesNormal = { fg = ui.fg.default, bg = ui.bg.float },
            MiniFilesTitle = { fg = ui.fg.accent, bg = ui.bg.float, bold = true },
            MiniFilesTitleFocused = { fg = ui.fg.accent, bg = ui.bg.float, bold = true },

            -- MiniHipatterns
            MiniHipatternsFixme = { fg = ui.bg.default, bg = ui.fg.negative, bold = true },
            MiniHipatternsHack = { fg = ui.bg.default, bg = ui.fg.warn, bold = true },
            MiniHipatternsNote = { fg = ui.bg.default, bg = ui.fg.info, bold = true },
            MiniHipatternsTodo = { fg = ui.bg.default, bg = ui.fg.positive, bold = true },

            -- MiniIcons
            MiniIconsAzure = { fg = palette.cyan },
            MiniIconsBlue = { fg = palette.blue },
            MiniIconsCyan = { fg = palette.cyan },
            MiniIconsGreen = { fg = palette.green },
            MiniIconsGrey = { fg = palette.gray },
            MiniIconsOrange = { fg = ui.fg.warn },
            MiniIconsPurple = { fg = palette.magenta },
            MiniIconsRed = { fg = palette.red },
            MiniIconsYellow = { fg = palette.yellow },

            -- MiniIndentscope
            MiniIndentscopeSymbol = { fg = ui.fg.accent },
            MiniIndentscopeSymbolOff = { fg = ui.fg.subtle },

            -- MiniJump
            MiniJump = { fg = ui.fg.accent, bold = true, underline = true },

            -- MiniJump2d
            MiniJump2dSpot = { fg = ui.fg.accent, bold = true },
            MiniJump2dSpotAhead = { fg = ui.fg.accent },
            MiniJump2dSpotUnique = { fg = ui.fg.positive, bold = true },
            MiniJump2dDim = { fg = ui.fg.subtle },

            -- MiniMap
            MiniMapNormal = { fg = ui.fg.subtle, bg = ui.bg.panel },
            MiniMapSymbolCount = { fg = ui.fg.accent },
            MiniMapSymbolLine = { fg = ui.fg.accent },
            MiniMapSymbolView = { fg = ui.fg.subtle },

            -- MiniNotify
            MiniNotifyBorder = { fg = ui.fg.accent, bg = ui.bg.float },
            MiniNotifyNormal = { fg = ui.fg.default, bg = ui.bg.float },
            MiniNotifyTitle = { fg = ui.fg.accent, bg = ui.bg.float, bold = true },

            -- MiniOperators
            MiniOperatorsExchangeFrom = { bg = ui.bg.selection },

            -- MiniPick
            MiniPickBorder = { fg = ui.fg.accent, bg = ui.bg.float },
            MiniPickBorderBusy = { fg = ui.fg.warn, bg = ui.bg.float },
            MiniPickBorderText = { fg = ui.fg.accent, bg = ui.bg.float },
            MiniPickCursor = { link = "Cursor" },
            MiniPickHeader = { fg = ui.fg.accent, bold = true },
            MiniPickIconDirectory = { fg = ui.fg.accent },
            MiniPickIconFile = { fg = ui.fg.default },
            MiniPickMatch = { fg = ui.fg.accent, bold = true },
            MiniPickMatchCurrent = { bg = ui.bg.active },
            MiniPickMatchMarked = { fg = ui.fg.positive, bg = ui.bg.active },
            MiniPickMatchRanges = { fg = ui.fg.accent, bold = true },
            MiniPickNormal = { fg = ui.fg.default, bg = ui.bg.float },
            MiniPickPreviewLine = { bg = ui.bg.selection },
            MiniPickPreviewRegion = { bg = ui.bg.selection },
            MiniPickPrompt = { fg = ui.fg.accent, bg = ui.bg.float },

            -- MiniSnippets
            MiniSnippetsCurrent = { bg = ui.bg.selection },
            MiniSnippetsFinal = { bg = ui.bg.positive },
            MiniSnippetsUnvisited = { bg = ui.bg.info },
            MiniSnippetsVisited = { bg = ui.bg.active },

            -- MiniStarter
            MiniStarterCurrent = { bold = true },
            MiniStarterFooter = { fg = ui.fg.subtle, italic = true },
            MiniStarterHeader = { fg = ui.fg.accent, bold = true },
            MiniStarterInactive = { fg = ui.fg.subtle },
            MiniStarterItem = { fg = ui.fg.default },
            MiniStarterItemBullet = { fg = ui.fg.accent },
            MiniStarterItemPrefix = { fg = ui.fg.accent },
            MiniStarterQuery = { fg = ui.fg.accent, bold = true },
            MiniStarterSection = { fg = ui.fg.accent, bold = true },

            -- MiniStatusline
            MiniStatuslineDevinfo = { fg = ui.fg.default, bg = ui.bg.active },
            MiniStatuslineFileinfo = { fg = ui.fg.default, bg = ui.bg.active },
            MiniStatuslineFilename = { fg = ui.fg.default, bg = ui.bg.panel },
            MiniStatuslineInactive = { fg = ui.fg.subtle, bg = ui.bg.panel },
            MiniStatuslineModeCommand = { fg = ui.bg.default, bg = ui.fg.warn, bold = true },
            MiniStatuslineModeInsert = { fg = ui.bg.default, bg = ui.fg.positive, bold = true },
            MiniStatuslineModeNormal = { fg = ui.bg.default, bg = ui.fg.accent, bold = true },
            MiniStatuslineModeOther = { fg = ui.bg.default, bg = ui.fg.subtle, bold = true },
            MiniStatuslineModeReplace = { fg = ui.bg.default, bg = ui.fg.negative, bold = true },
            MiniStatuslineModeVisual = { fg = ui.bg.default, bg = syntax.keyword.default, bold = true },

            -- MiniTabline
            MiniTablineCurrent = { fg = ui.fg.default, bg = ui.bg.default, bold = true },
            MiniTablineFill = { bg = ui.bg.panel },
            MiniTablineHidden = { fg = ui.fg.subtle, bg = ui.bg.panel },
            MiniTablineModifiedCurrent = { fg = ui.fg.warn, bg = ui.bg.default, bold = true },
            MiniTablineModifiedHidden = { fg = ui.fg.warn, bg = ui.bg.panel },
            MiniTablineModifiedVisible = { fg = ui.fg.warn, bg = ui.bg.active },
            MiniTablineTabpagesection = { fg = ui.fg.accent, bg = ui.bg.active, bold = true },
            MiniTablineVisible = { fg = ui.fg.default, bg = ui.bg.active },

            -- MiniTest
            MiniTestEmphasis = { bold = true },
            MiniTestFail = { fg = ui.fg.negative, bold = true },
            MiniTestPass = { fg = ui.fg.positive, bold = true },

            -- MiniTrailspace
            MiniTrailspace = { bg = ui.fg.negative },
        }
    end,
}
