---@type BlackAtom.HighlightsSpec
return {
    map = function(colors, config)
        local bg = require("black-atom.lib.bg")
        local ext_hl = require("black-atom.lib.highlights").ext_hl

        local ui = colors.ui

        ---@type BlackAtom.Highlights
        local highlights_map = {
            -- Basic Text
            Normal = { fg = ui.fg.default, bg = bg.default(config, colors) },
            NormalNC = { fg = ui.fg.default, bg = bg.default(config, colors) },
            EndOfBuffer = ext_hl({ fg = ui.bg.default }, { [config.styles.ending_tildes] = ui.fg.subtle }),
            NonText = { fg = ui.fg.subtle },
            Whitespace = { link = "NonText" },
            Title = { fg = ui.fg.accent },
            Directory = { fg = ui.fg.default, bold = true },
            Conceal = { fg = ui.fg.subtle },

            -- Floating Windows
            NormalFloat = { fg = ui.fg.default, bg = ui.bg.float },
            FloatBorder = { fg = ui.fg.subtle, bg = ui.bg.float },
            FloatTitle = { fg = ui.fg.accent, bg = ui.bg.float },

            -- Cursor & Matching
            Cursor = { fg = ui.fg.contrast, bg = ui.fg.accent },
            CursorIM = { link = "Cursor" },
            lCursor = { link = "Cursor" },
            TermCursor = { link = "Cursor" },
            TermCursorNC = { link = "Cursor" },

            -- CursorLine
            CursorLine = { bg = ui.bg.active },
            CursorColumn = { bg = ui.bg.active },
            LineNr = { fg = ui.fg.subtle },
            CursorLineNr = { fg = ui.fg.accent, bg = ui.bg.active },

            -- Search & Visual
            Search = { bg = ui.bg.selection },
            IncSearch = { bg = ui.bg.selection },
            CurSearch = { fg = ui.fg.contrast, bg = ui.fg.accent, bold = true },
            Substitute = { fg = ui.fg.contrast, bg = ui.fg.accent, bold = true },
            MatchParen = { bg = ui.bg.selection },
            Visual = { bg = ui.bg.selection },
            VisualNOS = { link = "Visual" },

            -- Diff
            DiffAdd = { fg = ui.fg.add },
            DiffChange = { fg = ui.fg.modify },
            DiffDelete = { fg = ui.fg.delete },
            DiffText = { fg = ui.fg.info },

            -- Spell Checking
            SpellBad = { fg = ui.fg.negative, undercurl = true },
            SpellCap = { fg = ui.fg.warn, undercurl = true },
            SpellLocal = { fg = ui.fg.info, undercurl = true },
            SpellRare = { fg = ui.fg.negative, undercurl = true },

            -- Popup Menu
            Pmenu = { fg = ui.fg.default, bg = ui.bg.float },
            PmenuSel = { fg = ui.fg.accent, bg = ui.bg.active, bold = true },
            PmenuThumb = { bg = ui.bg.active },
            PmenuSBar = { bg = ui.bg.float },

            -- Messages & Mode
            Error = ext_hl({ fg = ui.fg.negative }, config.styles.syntax.messages),
            ErrorMsg = ext_hl({ fg = ui.fg.negative }, config.styles.syntax.messages),
            MoreMsg = ext_hl({ fg = ui.fg.info }, config.styles.syntax.messages),
            ModeMsg = ext_hl({ fg = ui.fg.info }, config.styles.syntax.messages),
            WarningMsg = ext_hl({ fg = ui.fg.warn }, config.styles.syntax.messages),

            -- Window & Tab Management
            TabLine = { fg = ui.fg.subtle, bg = bg.panel(config, colors) },
            TabLineFill = { link = "TabLine" },
            TabLineSel = { fg = ui.fg.contrast, bg = ui.bg.active },

            StatusLine = ext_hl(
                { fg = ui.fg.default, bg = bg.panel(config, colors) },
                { [config.styles.transparency == "full"] = { bg = colors.none } }
            ),
            StatusLineNC = ext_hl(
                { fg = ui.fg.disabled, bg = bg.panel(config, colors) },
                { [config.styles.transparency == "full"] = { bg = colors.none } }
            ),

            WinBar = { link = "StatusLine" },
            WinBarNC = { link = "StatusLineNC" },
            WinSeparator = { fg = ui.fg.subtle, bg = bg.default(config, colors) },

            -- Folds & Columns
            Folded = { fg = ui.fg.subtle, bg = ui.bg.panel },
            FoldColumn = { fg = ui.fg.subtle },
            SignColumn = { fg = ui.fg.subtle },
        }

        return highlights_map
    end,
}
