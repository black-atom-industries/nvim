local darken = require("terra.actions").color.darken

---@type TerraHighlightMapExtension
local highlight_map_extension = {
    setup = function(highlights, colors, config)
        local diagnostics_error_color = config.diagnostics.darker and colors.palette.dark_red or colors.palette.red
        local diagnostics_hint_color = config.diagnostics.darker and colors.palette.dark_blue or colors.palette.blue
        local diagnostics_warn_color = config.diagnostics.darker and colors.palette.dark_yellow or colors.palette.yellow
        local diagnostics_info_color = config.diagnostics.darker and colors.palette.dark_cyan or colors.palette.cyan

        ---@type TerraHighlightGroup
        highlights.lsp = {
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
                        and darken(diagnostics_error_color, 0.1, colors.semantics.bg.primary.main)
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

        highlights.lsp.LspDiagnosticsDefaultError = highlights.lsp.DiagnosticError
        highlights.lsp.LspDiagnosticsDefaultHint = highlights.lsp.DiagnosticHint
        highlights.lsp.LspDiagnosticsDefaultInformation = highlights.lsp.DiagnosticInfo
        highlights.lsp.LspDiagnosticsDefaultWarning = highlights.lsp.DiagnosticWarn
        highlights.lsp.LspDiagnosticsUnderlineError = highlights.lsp.DiagnosticUnderlineError
        highlights.lsp.LspDiagnosticsUnderlineHint = highlights.lsp.DiagnosticUnderlineHint
        highlights.lsp.LspDiagnosticsUnderlineInformation = highlights.lsp.DiagnosticUnderlineInfo
        highlights.lsp.LspDiagnosticsUnderlineWarning = highlights.lsp.DiagnosticUnderlineWarn
        highlights.lsp.LspDiagnosticsVirtualTextError = highlights.lsp.DiagnosticVirtualTextError
        highlights.lsp.LspDiagnosticsVirtualTextWarning = highlights.lsp.DiagnosticVirtualTextWarn
        highlights.lsp.LspDiagnosticsVirtualTextInformation = highlights.lsp.DiagnosticVirtualTextInfo
        highlights.lsp.LspDiagnosticsVirtualTextHint = highlights.lsp.DiagnosticVirtualTextHint
    end,
}

return highlight_map_extension
