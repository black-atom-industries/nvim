local M = {}

---Returns the colors for the currently set theme and variant.
---@return TerraColors
function M.get()
    return require(require("terra-core.themes")[TerraConfig.theme].variants[TerraConfig.variant].path)
end

return M
