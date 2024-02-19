local M = {}

---Returns the colors for the currently set theme and variant.
---@return BlackAtomCore.Colors
function M.get()
    local theme = BlackAtomCoreConfig.theme
    local variant = BlackAtomCoreConfig.variant

    return require(require("black-atom-core.themes")[theme].variants[variant].path)
end

return M
