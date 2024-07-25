local lib = require("black-atom.lib")

---@type BlackAtom.HighlightsSpec
local highlight_map_extension = {
    map = function(colors, config)
        local bg = colors.ui.bg
        local fg = colors.ui.fg
        local palette = colors.palette
        local syntax = colors.syntax

        ---@type BlackAtom.Highlights
        local highlights_map = {
            -- Basic Text
            Normal = { fg = fg.primary.main, bg = lib.bg.main(config, colors) },
            NormalNC = { fg = fg.primary.main, bg = lib.bg.main(config, colors) },
            EndOfBuffer = {
                fg = lib.highlights.conditional_hl(bg.primary.main, { [config.styles.ending_tildes] = fg.neutral }),
            },
            NonText = { fg = fg.neutral },
            Whitespace = { link = "NonText" },
            SpecialKey = { link = "NonText" },

            -- Floating Windows
            NormalFloat = { fg = fg.primary.main, bg = bg.primary.dark },
            FloatBorder = { fg = fg.active, bg = bg.primary.dark },
            FloatTitle = { fg = fg.active, bg = bg.primary.dark },

            -- Native Regex Highlights (See: `:h syntax`)
            Boolean = { fg = palette.dark_yellow },
            Character = { fg = palette.yellow },
            Comment = lib.highlights.extend_hl({ fg = fg.neutral }, config.styles.syntax.comments),
            Conditional = lib.highlights.extend_hl({ fg = palette.magenta }, config.styles.syntax.keywords),
            Constant = { fg = palette.dark_yellow },
            Define = { fg = palette.magenta },
            Delimiter = { fg = syntax.punctuation.delimiter },
            Error = { fg = palette.magenta },
            Exception = { fg = palette.magenta },
            Float = { fg = palette.dark_yellow },
            Function = lib.highlights.extend_hl({ fg = palette.yellow }, config.styles.syntax.functions),
            Identifier = lib.highlights.extend_hl({ fg = fg.active }, config.styles.syntax.variables),
            Include = { fg = palette.magenta },
            Keyword = lib.highlights.extend_hl({ fg = palette.red }, config.styles.syntax.keywords),
            Label = { fg = palette.magenta },
            MatchParen = { bold = true, bg = bg.match.active },
            Macro = { fg = palette.red },
            Number = { fg = palette.dark_yellow },
            Operator = { fg = syntax.operator.default },
            PreCondit = { fg = palette.magenta },
            PreProc = { fg = palette.magenta },
            Repeat = lib.highlights.extend_hl({ fg = palette.magenta }, config.styles.syntax.keywords),
            Special = { fg = syntax.punctuation.special },
            SpecialChar = { fg = palette.red },
            SpecialComment = lib.highlights.extend_hl({ fg = fg.secondary.dark }, config.styles.syntax.comments),
            Statement = { fg = palette.magenta },
            StorageClass = { fg = palette.blue },
            String = lib.highlights.extend_hl({ fg = palette.cyan }, config.styles.syntax.strings),
            Structure = { fg = palette.yellow },
            Tag = { fg = palette.green },
            Todo = { fg = fg.neutral },
            Type = { fg = palette.yellow },
            Typedef = { fg = palette.magenta },

            -- Cursor
            Cursor = { reverse = true },
            CursorIM = { reverse = true },
            CursorLine = { bg = bg.primary.dark },

            -- Search
            Search = { bg = bg.match.active },
            IncSearch = { link = "Search" },

            -- Line Numbering
            LineNr = { fg = fg.neutral },
            CursorLineNr = { fg = fg.active },

            -- Diff
            DiffAdd = { fg = fg.invert, bg = bg.diff.add },
            DiffChange = { fg = fg.diff.change },
            DiffDelete = { fg = fg.diff.delete },
            DiffText = { fg = fg.diff.text },

            -- Spell Checking
            SpellBad = { fg = palette.red, sp = palette.red },
            SpellCap = { fg = palette.yellow, sp = palette.yellow },
            SpellLocal = { fg = palette.blue, sp = palette.blue },
            SpellRare = { fg = palette.magenta, sp = palette.magenta },

            -- Popup Menu
            Pmenu = { fg = fg.primary.main, bg = bg.primary.dark },
            PmenuSel = { bg = bg.primary.light },
            PmenuSbar = { fg = colors.none, bg = bg.primary.dark },
            PmenuThumb = { fg = colors.none, bg = bg.active },

            -- Messages & Mode
            ErrorMsg = lib.highlights.extend_hl({
                fg = palette.red,
            }, config.styles.syntax.messages),
            MoreMsg = lib.highlights.extend_hl({
                fg = palette.blue,
            }, config.styles.syntax.messages),
            ModeMsg = lib.highlights.extend_hl({ fg = fg.primary.main }, config.styles.syntax.messages),
            WarningMsg = lib.highlights.extend_hl({ fg = palette.yellow }, config.styles.syntax.messages),

            -- Window & Tab Management
            Title = { fg = fg.active },
            StatusLine = {
                fg = fg.primary.main,
                bg = lib.highlights.conditional_hl(
                    bg.primary.dark,
                    { [config.styles.transparency == "full"] = colors.none }
                ),
            },
            StatusLineNC = {
                fg = fg.neutral,
                bg = lib.highlights.conditional_hl(
                    bg.primary.dark,
                    { [config.styles.transparency == "full"] = colors.none }
                ),
            },
            TabLine = { fg = fg.neutral, bg = bg.primary.main },
            TabLineFill = { bg = bg.primary.main },
            TabLineSel = { fg = fg.primary.main, bg = bg.primary.light },

            WinBar = { link = "StatusLine" },
            WinBarNC = { link = "StatusLineNC" },
            WinSeparator = { fg = bg.primary.dark, bg = lib.bg.main(config, colors) },

            -- Folds & Columns
            Folded = { fg = fg.neutral, bg = lib.bg.main(config, colors) },
            FoldColumn = { fg = fg.neutral },
            SignColumn = { fg = fg.neutral },
            CursorColumn = { bg = bg.primary.dark },
            ColorColumn = { bg = bg.primary.dark },

            -- Others
            Substitute = { fg = bg.primary.dark, bg = palette.green },
            Directory = { fg = palette.blue },
            Conceal = { fg = fg.neutral },
            Visual = { bg = bg.match.active },
            VisualNOS = { link = "Visual" },
            QuickFixLine = { fg = fg.active, bg = bg.primary.light },
        }

        return highlights_map
    end,
}

return highlight_map_extension
