local M = {}

-- TODO: [DEV-47 : Runtime Validation for Config](https://linear.app/black-atom-industries/issue/DEV-47/runtime-validation-for-config)
---Sets options for the BlackAtomCore.Config during runtime
---@param options BlackAtomCore.Config
---@return nil
function M.set(options)
    local default_config = require("black-atom-core.config").default_config
    local current_config = vim.g.black_atom_core_config or {}
    local merged_config = vim.tbl_deep_extend("force", default_config, current_config, options)

    vim.g.black_atom_core_config = merged_config
end

---Returns the current BlackAtomCore.Config
---@return BlackAtomCore.Config | any
function M.get()
    return vim.g.black_atom_core_config
end

return M
