local M = {}

---Returns the colors for the currently set theme and variant.
---@return BlackAtomCore.Colors
function M.get()
    local theme = BlackAtomCoreConfig.theme

    return require(require("black-atom-core.themes")[theme].path)
end

return M
