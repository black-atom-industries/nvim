---@doc https://github.com/nikbrunner/flux.nvim
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors)
        local ui = colors.ui

        ---@type BlackAtom.Highlights
        return {
            FluxStage = { fg = ui.fg.add },
            FluxUnstage = { fg = ui.fg.delete },
            FluxUntracked = { fg = ui.fg.info },
            FluxIgnored = { fg = ui.fg.subtle },
            FluxConflict = { fg = ui.fg.negative },
            FluxHead = { fg = ui.fg.accent },
            FluxDiffAdded = { bg = ui.bg.add },
            FluxDiffRemoved = { bg = ui.bg.delete },
            FluxUnpushed = { fg = ui.fg.warn },
            FluxLoading = { fg = ui.fg.info },
            FluxDiffLineNr = { fg = ui.fg.subtle },
            FluxDiffHeader = { fg = ui.fg.subtle },
            FluxDiffHunkHeader = { fg = ui.fg.info },
        }
    end,
}
