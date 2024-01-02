local utils = require("terra-core.utils")

local cond_hl = utils.highlights.conditional_hl
local extend_hl = utils.highlights.extend_hl_with_code_style

---@type TerraHighlightsSpec
local highlight_map_extension = {
    map = function(colors, config)
        local bg = colors.semantics.bg
        local fg = colors.semantics.fg
        local palette = colors.palette

        ---@type TerraHighlights
        local highlights_map = {
            -- Basic Text
            Normal = {
                fg = fg.primary.main,
                bg = cond_hl(bg.primary.main, { [config.transparent] = colors.none }),
            },
            NormalNC = {
                fg = fg.primary.main,
                bg = cond_hl(bg.primary.main, { [config.transparent] = colors.none }),
            },
            EndOfBuffer = {
                fg = cond_hl(bg.primary.main, {
                    [config.ending_tildes] = fg.neutral,
                }),
            },
            NonText = { fg = fg.neutral },
            Whitespace = { link = "NonText" },
            SpecialKey = { link = "NonText" },

            -- Native Regex Highlights (See: `:h syntax`)
            Boolean = { fg = palette.dark_yellow },
            Character = { fg = palette.yellow },
            Comment = extend_hl({ fg = fg.neutral }, config.code_style.comments),
            Conditional = extend_hl({ fg = palette.magenta }, config.code_style.keywords),
            Constant = { fg = palette.dark_yellow },
            Define = { fg = palette.magenta },
            Delimiter = { fg = palette.light_gray },
            Error = { fg = palette.magenta },
            Exception = { fg = palette.magenta },
            Float = { fg = palette.dark_yellow },
            Function = extend_hl({ fg = palette.yellow }, config.code_style.functions),
            Identifier = extend_hl({ fg = fg.active }, config.code_style.variables),
            Include = { fg = palette.magenta },
            Keyword = extend_hl({ fg = palette.red }, config.code_style.keywords),
            Label = { fg = palette.magenta },
            Macro = { fg = palette.red },
            Number = { fg = palette.dark_yellow },
            Operator = { fg = palette.magenta },
            PreCondit = { fg = palette.magenta },
            PreProc = { fg = palette.magenta },
            Repeat = extend_hl({ fg = palette.magenta }, config.code_style.keywords),
            Special = { fg = palette.red },
            SpecialChar = { fg = palette.red },
            SpecialComment = extend_hl({ fg = fg.secondary.dark }, config.code_style.comments),
            Statement = { fg = palette.magenta },
            StorageClass = { fg = palette.blue },
            String = extend_hl({ fg = palette.cyan }, config.code_style.strings),
            Structure = { fg = palette.yellow },
            Tag = { fg = palette.green },
            Todo = { fg = fg.neutral },
            Type = { fg = palette.yellow },
            Typedef = { fg = palette.magenta },

            -- Floating Windows
            NormalFloat = { fg = fg.primary.main, bg = bg.primary.dark },
            FloatBorder = { fg = bg.primary.dark, bg = bg.primary.dark },

            -- Cursor
            Cursor = { reverse = true },
            CursorIM = { reverse = true },
            CursorColumn = { bg = bg.primary.light },
            CursorLine = { bg = bg.primary.dark },

            -- Search
            Search = { bg = bg.match.active },
            IncSearch = { link = "Search" },

            -- Line Numbering
            LineNr = { fg = fg.neutral },
            CursorLineNr = { fg = fg.active, bg = bg.primary.dark },

            -- Diff
            DiffAdd = { fg = fg.diff.add },
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
            PmenuSel = { fg = bg.primary.dark, bg = bg.active },
            PmenuSbar = { fg = colors.none, bg = bg.primary.dark },
            PmenuThumb = { fg = colors.none, bg = bg.active },

            -- Messages & Mode
            ErrorMsg = extend_hl({
                fg = palette.red,
            }, config.code_style.messages),
            MoreMsg = extend_hl({
                fg = palette.blue,
            }, config.code_style.messages),
            ModeMsg = extend_hl({ fg = fg.primary.main }, config.code_style.messages),
            WarningMsg = extend_hl({ fg = palette.yellow }, config.code_style.messages),

            -- Window & Tab Management
            Title = { fg = fg.active, bg = bg.primary.dark },
            StatusLine = { fg = fg.primary.main, bg = bg.primary.dark },
            StatusLineNC = { fg = fg.neutral, bg = bg.primary.dark },
            TabLine = { fg = fg.primary.main, bg = bg.primary.main },
            TabLineFill = { fg = fg.neutral, bg = bg.primary.main },
            TabLineSel = { fg = fg.primary.main, bg = bg.primary.light },
            WinBar = { link = "StatusLine" },
            WinBarNC = { link = "StatusLineNC" },
            WinSeparator = {
                fg = bg.primary.light,
                bg = cond_hl(bg.primary.main, { [config.transparent] = colors.none }),
            },

            -- Folds & Signs
            Folded = {
                fg = fg.neutral,
                bg = cond_hl(bg.primary.main, { [config.transparent] = colors.none }),
            },
            FoldColumn = { fg = fg.neutral },
            SignColumn = { fg = fg.neutral },

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
