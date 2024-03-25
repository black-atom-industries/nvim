local M = {}

function M.set_config_defaults()
    BlackAtomCoreConfig = vim.tbl_deep_extend("force", {}, require("black-atom-core.config").default_config)
end

---Sets options for the BlackAtomCore.Config during runtime
---@param options BlackAtomCore.Config
---@return nil
function M.set_config(options)
    BlackAtomCoreConfig = vim.tbl_deep_extend("force", BlackAtomCoreConfig, options)
end

---Notify the user about the status of the current theme
---@param theme_meta BlackAtomCore.ThemeMeta
---@return nil
function M.dev_status_warning(theme_meta)
    if theme_meta.status == "development" then
        local error_message = "Theme '"
            .. theme_meta.label
            .. "' is currently in development status. This is not ready to be used."

        require("black-atom-core.lib.ui").notify(error_message, vim.log.levels.ERROR, {
            title = "Black Atom Core - Error",
            timeout = 5000,
            icon = " ",
        })
    end

    if theme_meta.status == "beta" then
        local error_message = "Theme '" .. theme_meta.label .. "' is currently in beta status. Use at your own risk."

        require("black-atom-core.lib.ui").notify(error_message, vim.log.levels.WARN, {
            title = "Black Atom Core - Warning",
            timeout = 5000,
            icon = "",
        })
    end
end

return M
