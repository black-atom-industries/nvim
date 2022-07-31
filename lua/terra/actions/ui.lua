local M = {}

---Notification which conditionally calls `nvim-notify` when available
---@param message string Notification message
---@param level? string|number Log level. See vim.log.levels
---@param opts? table nvim-notify options. See notify.Options
---@return nil
M.notify = function(message, level, opts)
    local nvim_notify_ok, nvim_notify = pcall(require, "notify")

    if nvim_notify_ok then
        nvim_notify(message, level, opts)
    else
        vim.notify(message, level, opts)
    end
end

return M
