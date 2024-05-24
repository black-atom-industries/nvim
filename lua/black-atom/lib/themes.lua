local M = {}

---Notify the user about the status of the current theme
---@param theme_meta BlackAtom.ThemeMeta
---@return nil
function M.dev_status_warning(theme_meta)
    if theme_meta.status == "development" then
        local error_message = "Theme '"
            .. theme_meta.label
            .. "' is currently in development status. This is not ready to be used."

        require("black-atom.lib.ui").notify(error_message, vim.log.levels.ERROR, {
            title = "Black Atom - Error",
            timeout = 5000,
            icon = " ",
        })
    end

    if theme_meta.status == "beta" then
        local error_message = "Theme '" .. theme_meta.label .. "' is currently in beta status. Use at your own risk."

        require("black-atom.lib.ui").notify(error_message, vim.log.levels.WARN, {
            title = "Black Atom - Warning",
            timeout = 5000,
            icon = "",
        })
    end
end

return M
