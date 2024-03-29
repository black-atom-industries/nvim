local M = {}

---Returns the colors for the currently set theme and variant.
---@return BlackAtomCore.ThemeColors
function M.get()
    local theme = require("black-atom-core.config").get().theme
    return require(require("black-atom-core.themes")[theme].path)
end

return M
