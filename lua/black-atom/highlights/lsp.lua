---@type BlackAtom.HighlightsSpec
return {
    map = function(colors, config)
        local cond_hl = require("black-atom.lib.highlights").cond_hl
        local darken = require("black-atom.lib.color").darken
        local styles = config.styles or {}
        local ui = colors.ui

        ---@type BlackAtom.Highlights
        local highlights_map = {
            -- LSP C++ Highlights
            LspCxxHlGroupEnumConstant = { fg = ui.fg.accent },
            LspCxxHlGroupMemberVariable = { fg = ui.fg.accent },
            LspCxxHlGroupNamespace = { fg = ui.fg.info },
            LspCxxhighlightskippedRegion = { fg = ui.fg.subtle },
            LspCxxhighlightskippedRegionBeginEnd = { fg = ui.fg.negative },

            -- Diagnostic Signs
            DiagnosticError = { fg = ui.fg.negative },
            DiagnosticHint = { fg = ui.fg.hint },
            DiagnosticInfo = { fg = ui.fg.info },
            DiagnosticWarn = { fg = ui.fg.warn },

            -- Diagnostic Virtual Text
            DiagnosticVirtualTextError = {
                bg = cond_hl(colors.none, {
                    [styles.diagnostics.background] = darken(ui.bg.negative, 0.1, ui.bg.default),
                }),
                fg = ui.fg.negative,
            },
            DiagnosticVirtualTextWarn = {
                bg = cond_hl(colors.none, {
                    [styles.diagnostics.background] = darken(ui.bg.warn, 0.1, ui.bg.default),
                }),
                fg = ui.fg.warn,
            },
            DiagnosticVirtualTextInfo = {
                bg = cond_hl(colors.none, {
                    [styles.diagnostics.background] = darken(ui.bg.info, 0.1, ui.bg.default),
                }),
                fg = ui.fg.info,
            },
            DiagnosticVirtualTextHint = {
                bg = cond_hl(colors.none, {
                    [styles.diagnostics.background] = darken(ui.bg.hint, 0.1, ui.bg.default),
                }),
                fg = ui.fg.hint,
            },

            -- Diagnostic Underlines
            DiagnosticUnderlineError = {
                sp = ui.fg.negative,
                config.styles.diagnostics.undercurl and { undercurl = true },
            },
            DiagnosticUnderlineHint = {
                sp = ui.fg.hint,
                config.styles.diagnostics.undercurl and { undercurl = true },
            },
            DiagnosticUnderlineInfo = {
                sp = ui.fg.info,
                config.styles.diagnostics.undercurl and { undercurl = true },
            },
            DiagnosticUnderlineWarn = {
                sp = ui.fg.warn,
                config.styles.diagnostics.undercurl and { undercurl = true },
            },

            -- LSP References
            LspReferenceText = { bg = ui.bg.active },
            LspReferenceWrite = { link = "LspReferenceText" },
            LspReferenceRead = { link = "LspReferenceText" },

            -- LSP CodeLens
            LspCodeLens = { fg = ui.fg.subtle },
            LspCodeLensSeparator = { fg = ui.fg.subtle },

            -- Legacy LSP Diagnostics (Links)
            LspDiagnosticsDefaultError = { link = "DiagnosticError" },
            LspDiagnosticsDefaultHint = { link = "DiagnosticHint" },
            LspDiagnosticsDefaultInformation = { link = "DiagnosticInfo" },
            LspDiagnosticsDefaultWarning = { link = "DiagnosticWarn" },
            LspDiagnosticsUnderlineError = { link = "DiagnosticUnderlineError" },
            LspDiagnosticsUnderlineHint = { link = "DiagnosticUnderlineHint" },
            LspDiagnosticsUnderlineInformation = { link = "DiagnosticUnderlineInfo" },
            LspDiagnosticsUnderlineWarning = { link = "DiagnosticUnderlineWarn" },
            LspDiagnosticsVirtualTextError = { link = "DiagnosticVirtualTextError" },
            LspDiagnosticsVirtualTextWarning = { link = "DiagnosticVirtualTextWarn" },
            LspDiagnosticsVirtualTextInformation = { link = "DiagnosticVirtualTextInfo" },
            LspDiagnosticsVirtualTextHint = { link = "DiagnosticVirtualTextHint" },
        }

        return highlights_map
    end,
}
