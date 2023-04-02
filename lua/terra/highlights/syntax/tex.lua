local extend = require("terra.actions").highlights.extend_highlight

---@type TerraHighlightMapExtension
local highlight_map_extension = {
    setup = function(highlights, colors, config)
        ---@type TerraHighlightGroup
        highlights.syntax.tex = {
            -- Native Regex Highlights
            latexTSEnvironment = { fg = colors.palette.cyan, bold = true },
            latexTSEnvironmentName = { fg = colors.palette.yellow },
            latexTSFuncMacro = extend({ fg = colors.semantics.fg.primary.main }, config.code_style.functions),
            latexTSInclude = { fg = colors.palette.blue },
            latexTSMath = { fg = colors.palette.dark_yellow },
            latexTSTitle = { fg = colors.palette.green },
            latexTSType = { fg = colors.palette.blue },
            texCmd = { fg = colors.palette.magenta },
            texCmdEnv = { fg = colors.palette.cyan },
            texCmdPackage = { fg = colors.palette.blue },
            texCmdPart = { fg = colors.palette.blue },
            texEnvArgName = { fg = colors.palette.yellow },
            texMathDelim = { fg = colors.palette.magenta },
            texMathDelimZone = { fg = colors.palette.light_gray },
            texMathOper = { fg = colors.palette.red },
            texMathZoneX = { fg = colors.palette.dark_yellow },
            texMathZoneXX = { fg = colors.palette.dark_yellow },
            texPgfType = { fg = colors.palette.yellow },

            -- TreeSitter Highlights
            -- If you want to add TreeSitter highlights, you can do so here.
        }
    end,
}

return highlight_map_extension
