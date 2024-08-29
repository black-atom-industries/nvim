---@type BlackAtom.HighlightsSpec
return {
    map = function(colors, config)
        local ui = colors.ui
        local palette = colors.palette
        local bg = require("black-atom.lib.bg")
        local configurable = require("black-atom.lib.highlights").extend_hl

        ---@type BlackAtom.Highlights
        local highlights_map = {
            -- Basic Text
            Normal = { fg = ui.fg.primary.main, bg = bg.main(config, colors) },
            NormalNC = { fg = ui.fg.primary.main, bg = bg.main(config, colors) },
            EndOfBuffer = configurable(
                { fg = bg.main(config, colors) },
                { [config.styles.ending_tildes] = ui.fg.neutral }
            ),
            NonText = { fg = ui.fg.neutral },
            Whitespace = { link = "NonText" },
            SpecialKey = { link = "NonText" },

            -- Floating Windows
            NormalFloat = { fg = ui.fg.primary.main, bg = ui.bg.primary.dark },
            FloatBorder = { fg = ui.fg.active, bg = ui.bg.primary.dark },
            FloatTitle = { fg = ui.fg.active, bg = ui.bg.primary.dark },

            -- Cursor & Matching
            Cursor = { reverse = true },
            CursorIM = { reverse = true },
            CurSearch = { bg = ui.bg.match.active },
            CursorLine = { bg = ui.bg.primary.dark },
            MatchParen = { bold = true, bg = ui.bg.match.active },

            -- Search
            Search = { bg = ui.bg.match.active },
            IncSearch = { link = "Search" },

            -- Line Numbering
            LineNr = { fg = ui.fg.neutral },
            CursorLineNr = { fg = ui.fg.active },

            -- Diff
            DiffAdd = { fg = ui.fg.invert, bg = ui.bg.diff.add },
            DiffChange = { fg = ui.fg.diff.change },
            DiffDelete = { fg = ui.fg.diff.delete },
            DiffText = { fg = ui.fg.diff.text },

            -- Spell Checking
            SpellBad = { fg = ui.feedback.error, sp = palette.red, undercurl = true },
            SpellCap = { fg = ui.feedback.warn, sp = palette.yellow, undercurl = true },
            SpellLocal = { fg = ui.feedback.info, sp = palette.blue, undercurl = true },
            SpellRare = { fg = ui.feedback.error, sp = palette.magenta, undercurl = true },

            -- Popup Menu
            Pmenu = { fg = ui.fg.primary.main, bg = ui.bg.primary.dark },
            PmenuSel = { bg = ui.bg.primary.light },
            PmenuSbar = { fg = colors.none, bg = ui.bg.primary.dark },
            PmenuThumb = { fg = colors.none, bg = ui.bg.active },

            -- Messages & Mode
            Error = { fg = palette.red },
            ErrorMsg = configurable({ fg = palette.red }, config.styles.syntax.messages),
            MoreMsg = configurable({ fg = palette.blue }, config.styles.syntax.messages),
            ModeMsg = configurable({ fg = ui.fg.primary.main }, config.styles.syntax.messages),
            WarningMsg = configurable({ fg = palette.yellow }, config.styles.syntax.messages),

            -- Window & Tab Management
            Title = { fg = ui.fg.active },
            StatusLine = configurable(
                { fg = ui.fg.primary.main, bg = ui.bg.primary.dark },
                { [config.styles.transparency == "full"] = { bg = colors.none } }
            ),
            StatusLineNC = configurable(
                { fg = ui.fg.neutral, bg = ui.bg.primary.dark },
                { [config.styles.transparency == "full"] = { bg = colors.none } }
            ),
            TabLine = { fg = ui.fg.neutral, bg = ui.bg.primary.main },
            TabLineFill = { bg = ui.bg.primary.main },
            TabLineSel = { fg = ui.fg.primary.main, bg = ui.bg.primary.light },

            WinBar = { link = "StatusLine" },
            WinBarNC = { link = "StatusLineNC" },
            WinSeparator = { fg = ui.fg.neutral, bg = bg.main(config, colors) },

            -- Folds & Columns
            Folded = { fg = ui.fg.neutral, bg = bg.main(config, colors) },
            FoldColumn = { fg = ui.fg.neutral },
            SignColumn = { fg = ui.fg.neutral },
            CursorColumn = { bg = ui.bg.primary.dark },
            ColorColumn = { bg = ui.bg.primary.dark },

            -- Others
            Substitute = { fg = ui.bg.primary.dark, bg = palette.green },
            Directory = { fg = ui.fg.active },
            Conceal = { fg = ui.fg.neutral },
            Visual = { bg = ui.bg.match.active },
            VisualNOS = { link = "Visual" },
            QuickFixLine = { fg = ui.fg.active, bg = ui.bg.primary.light },
        }

        return highlights_map
    end,
}
