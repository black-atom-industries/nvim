local M = {}

---Reset Vim Highlights and Syntax
---@return nil
function M.reset()
    -- Clear all highlights
    vim.cmd("hi clear")

    -- Reset syntax highlighting
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end
end

---Sets up the highlights for the theme based on the current configuration
---@param colors BlackAtomCore.ThemeColors
---@param config BlackAtomCore.Config
---@return nil
function M.setup(colors, config)
    local highlights = require("black-atom-core.lib.highlights")

    if config.term_colors then
        highlights.set_term_highlights(colors)
    end

    highlights.set_highlights(highlights.build_highlights_map(colors, config))
end

return M
