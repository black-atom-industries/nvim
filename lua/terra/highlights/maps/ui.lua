local extend = require("terra.actions").highlights.extend_highlight
local cond_highlight = require("terra.actions").highlights.cond_highlight

---@type TerraHighlightsSpec
local highlight_map_extension = {
    map = function(colors, config)
        ---@type TerraHighlights
        local highlights_map = {
            Normal = {
                fg = colors.semantics.fg.primary.main,
                bg = cond_highlight(colors.semantics.bg.primary.main, {
                    [config.transparent] = colors.none,
                }),
            },
            NormalNC = {
                fg = colors.semantics.fg.primary.dark,
                bg = cond_highlight(colors.semantics.bg.primary.main, {
                    [config.dim_inactive_panes] = colors.semantics.bg.primary.dark,
                    [config.transparent] = colors.none,
                }),
            },
            NormalFloat = { link = "Normal" },
            EndOfBuffer = {
                fg = cond_highlight(colors.semantics.bg.primary.main, {
                    [config.ending_tildes] = colors.semantics.fg.neutral,
                }),
                bg = cond_highlight(colors.semantics.bg.primary.main, {
                    [config.dim_inactive_panes] = colors.none,
                    [config.transparent] = colors.none,
                }),
            },
            SignColumn = { fg = colors.semantics.fg.neutral },
            FoldColumn = { fg = colors.semantics.fg.neutral },
            Folded = {
                fg = colors.semantics.fg.neutral,
                bg = config.transparent and colors.none or colors.semantics.bg.primary.main,
            },
            Terminal = {
                fg = colors.semantics.fg.primary.main,
                bg = cond_highlight(colors.semantics.bg.primary.dark, {
                    [config.transparent] = colors.none,
                }),
            },
            StatusLine = { fg = colors.semantics.fg.primary.main, bg = colors.semantics.bg.primary.dark },
            StatusLineTerm = { fg = colors.semantics.fg.primary.main, bg = colors.semantics.bg.primary.dark },
            StatusLineNC = { fg = colors.palette.gray, bg = colors.semantics.bg.primary.dark },
            StatusLineTermNC = { fg = colors.palette.gray, bg = colors.semantics.bg.primary.dark },
            ToolbarLine = { fg = colors.semantics.fg.primary.main },
            WinBar = { link = "Normal" },
            WinBarNC = { link = "NormalNC" },
            Cursor = { reverse = true },
            vCursor = { reverse = true },
            iCursor = { reverse = true },
            lCursor = { reverse = true },
            CursorIM = { reverse = true },
            CursorColumn = { bg = colors.semantics.bg.primary.light },
            CursorLine = { bg = colors.semantics.bg.primary.dark },
            ColorColumn = { bg = colors.semantics.bg.primary.dark },
            CursorLineNr = { fg = colors.palette.yellow },
            LineNr = { fg = colors.semantics.fg.neutral },
            Conceal = { fg = colors.palette.gray, bg = colors.semantics.bg.primary.main },
            DiffAdd = { fg = colors.semantics.fg.diff.add },
            DiffChange = { fg = colors.semantics.fg.diff.change },
            DiffDelete = { fg = colors.semantics.fg.diff.delete },
            DiffText = { fg = colors.semantics.fg.diff.text },
            DiffAdded = { fg = colors.palette.green },
            DiffRemoved = { fg = colors.palette.red },
            DiffFile = { fg = colors.palette.cyan },
            DiffIndexLine = { fg = colors.palette.gray },
            Directory = { fg = colors.palette.blue },
            ErrorMsg = extend({ fg = colors.palette.red }, config.code_style.messages),
            WarningMsg = extend({ fg = colors.palette.yellow }, config.code_style.messages),
            MoreMsg = extend({ fg = colors.palette.blue }, config.code_style.messages),
            ModeMsg = extend({ fg = colors.semantics.fg.primary.main }, config.code_style.messages),
            IncSearch = { link = "Search" },
            Search = { bg = colors.semantics.bg.match },
            Substitute = { fg = colors.semantics.bg.primary.dark, bg = colors.palette.green },
            MatchParen = { fg = colors.none, bg = colors.palette.gray },
            NonText = { fg = colors.palette.gray },
            Whitespace = { fg = colors.palette.gray },
            SpecialKey = { fg = colors.palette.gray },
            Pmenu = { fg = colors.semantics.fg.primary.main, bg = colors.semantics.bg.primary.dark },
            PmenuSbar = { fg = colors.none, bg = colors.semantics.bg.primary.dark },
            PmenuSel = { fg = colors.semantics.bg.primary.dark, bg = colors.palette.blue },
            WildMenu = { fg = colors.semantics.bg.primary.dark, bg = colors.palette.blue },
            PmenuThumb = { fg = colors.none, bg = colors.palette.gray },
            Question = { fg = colors.palette.yellow },
            SpellBad = { fg = colors.palette.red, sp = colors.palette.red },
            SpellCap = { fg = colors.palette.yellow, sp = colors.palette.yellow },
            SpellLocal = { fg = colors.palette.blue, sp = colors.palette.blue },
            SpellRare = { fg = colors.palette.magenta, sp = colors.palette.magenta },
            TabLine = { fg = colors.semantics.fg.primary.main, bg = colors.semantics.bg.primary.main },
            TabLineFill = { fg = colors.palette.gray, bg = colors.semantics.bg.primary.main },
            TabLineSel = { fg = colors.semantics.fg.primary.main, bg = colors.semantics.bg.primary.light },
            VertSplit = {
                fg = colors.semantics.fg.neutral,
                bg = config.dim_inactive_panes and colors.semantics.bg.primary.dark or colors.semantics.bg.primary.main,
            },
            Visual = { bg = colors.semantics.bg.match },
            VisualNOS = { link = "Visual" },
            QuickFixLine = { fg = colors.palette.blue, bg = colors.semantics.bg.primary.light },
            Debug = { fg = colors.palette.yellow },
            debugPC = { fg = colors.semantics.bg.primary.dark, bg = colors.palette.green },
            debugBreakpoint = { fg = colors.semantics.bg.primary.dark, bg = colors.palette.red },
            ToolbarButton = { fg = colors.semantics.bg.primary.dark, bg = colors.palette.blue },
            FloatBorder = { fg = colors.semantics.fg.neutral, bg = colors.semantics.bg.primary.main },
            NvimFloat = { fg = colors.semantics.fg.primary.main, bg = colors.semantics.bg.primary.main },
        }

        return highlights_map
    end,
}

return highlight_map_extension
