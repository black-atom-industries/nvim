local utils = require("terra-core.utils")

---@type TerraHighlightsSpec
local highlight_map_extension = {
    map = function(colors, config)
        local diagnostics_error_color = colors.palette.red
        local diagnostics_warn_color = colors.palette.yellow
        local diagnostics_hint_color = colors.palette.blue
        local diagnostics_info_color = colors.palette.green

        ---@type TerraHighlights
        local highlights_map = {
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
                bg = utils.hls.conditional_hl(colors.none, {
                    [config.diagnostics.background] = utils.color.darken(
                        diagnostics_error_color,
                        0.1,
                        colors.semantics.bg.primary.main
                    ),
                }),
                fg = diagnostics_error_color,
            },
            DiagnosticVirtualTextWarn = {
                bg = utils.hls.conditional_hl(colors.none, {
                    [config.diagnostics.background] = utils.color.darken(
                        diagnostics_warn_color,
                        0.1,
                        colors.semantics.bg.primary.main
                    ),
                }),
                fg = diagnostics_warn_color,
            },
            DiagnosticVirtualTextInfo = {
                bg = utils.hls.conditional_hl(colors.none, {
                    [config.diagnostics.background] = utils.color.darken(
                        diagnostics_info_color,
                        0.1,
                        colors.semantics.bg.primary.main
                    ),
                }),
                fg = diagnostics_info_color,
            },
            DiagnosticVirtualTextHint = {
                bg = utils.hls.conditional_hl(colors.none, {
                    [config.diagnostics.background] = utils.color.darken(
                        diagnostics_hint_color,
                        0.1,
                        colors.semantics.bg.primary.main
                    ),
                }),
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

            LspDiagnosticsDefaultError = { link = "DiagnosticError" },
            LspDiagnosticsDefaultHint = { link = "DiagnosticHint" },
            LspDiagnosticsDefaultInformation = { link = "DiagnosticInfo" },
            LspDiagnosticsDefaultWarning = { link = "DiagnosticWarn" },
            LspDiagnosticsUnderlineError = { link = "DiagnosticUnderlineError" },
            LspDiagnosticsUnderlineHint = { link = "DiagnosticUnderlineHint" },
            LspDiagnosticsUnderlineInformation = {
                link = "DiagnosticUnderlineInfo",
            },
            LspDiagnosticsUnderlineWarning = { link = "DiagnosticUnderlineWarn" },
            LspDiagnosticsVirtualTextError = { link = "DiagnosticVirtualTextError" },
            LspDiagnosticsVirtualTextWarning = {
                link = "DiagnosticVirtualTextWarn",
            },
            LspDiagnosticsVirtualTextInformation = {
                link = "DiagnosticVirtualTextInfo",
            },
            LspDiagnosticsVirtualTextHint = { link = "DiagnosticVirtualTextHint" },
        }

        return highlights_map
    end,
}

return highlight_map_extension
