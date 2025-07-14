local M = {}

---Notification which conditionally calls `nvim-notify` when available
---@param message string Notification message
---@param level? number Log level - Use `vim.log.levels`
---@param opts? table<string, any> nvim-notify options. See notify.Options
---@return nil
---```lua
-----Example:
---notify("Hello World", vim.log.levels.INFO, { title = "Hello" })
---```
function M.notify(message, level, opts)
    level = level or vim.log.levels.INFO
    opts = opts or {}
    vim.notify_once(message, level, opts)
end

return M
