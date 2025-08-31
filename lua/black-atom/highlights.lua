local M = {}

---Reset all highlights.
---@return nil
function M.reset()
    -- Clear all highlights
    vim.cmd("hi clear")

    -- Reset syntax highlighting
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end
end

---Applies the highlights for the theme based on the current configuration.
---@param colors BlackAtom.Theme.Colors
---@param config BlackAtom.Config
---@return nil
function M.apply(colors, config)
    local highlights = require("black-atom.lib.highlights")
    local cache = require("black-atom.lib.cache")

    -- Generate cache key for this theme + config combination
    local theme_key = config.theme or "unknown"
    local cache_key = cache.get_highlight_key(theme_key, config)

    -- Try to get cached highlights first
    local cached_highlights = cache.get_highlights(cache_key)
    if cached_highlights then
        if config.debug then
            vim.notify("Black Atom: Using cached highlights for " .. theme_key, vim.log.levels.DEBUG)
        end

        if config.term_colors then
            highlights.set_term(colors)
        end

        highlights.set(cached_highlights)
        return
    end

    -- Build highlights if not cached
    if config.debug then
        vim.notify("Black Atom: Building highlights for " .. theme_key, vim.log.levels.DEBUG)
    end

    if config.term_colors then
        highlights.set_term(colors)
    end

    local highlight_map = highlights.build_highlights_map(colors, config)

    -- Cache the built highlights to file
    cache.set_highlights(cache_key, highlight_map)

    highlights.set(highlight_map)
end

return M
