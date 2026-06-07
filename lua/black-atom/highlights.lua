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
---Uses a file-based compiled cache: on hit, dofile() is ~instant;
---on miss, highlights are built normally and the cache is written.
---@param colors BlackAtom.Theme.Colors
---@param config BlackAtom.Config
---@return nil
function M.apply(colors, config)
    local highlights_lib = require("black-atom.lib.highlights")

    -- Terminal colors are vim.g variables, not nvim_set_hl — always set them
    if config.term_colors then
        highlights_lib.set_term(colors)
    end

    local cache = require("black-atom.lib.cache")
    local cache_path = cache.path_for(config.theme, config)

    if not cache.is_disabled() and vim.uv.fs_stat(cache_path) then
        dofile(cache_path)
        return
    end

    -- Cold path: build highlights
    local highlights_map = highlights_lib.build_highlights_map(colors, config)
    highlights_lib.set(highlights_map)

    if not cache.is_disabled() then
        cache.write(cache_path, highlights_map)
    end
end

return M
