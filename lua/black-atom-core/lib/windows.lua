local M = {}

---@param content unknown
function M.open_tmp_vertical_window(content)
    -- Open the new vertical split window
    vim.cmd("vnew")

    -- Set the filetype of the buffer to `lua`
    vim.bo.filetype = "lua"

    -- Ensure the buffer is wiped when closed
    vim.bo.bufhidden = "wipe"

    local content_str = vim.inspect(content)

    vim.api.nvim_buf_set_lines(0, 0, -1, false, vim.split(content_str, "\n"))

    -- Mark the buffer as unmodified
    vim.bo.modified = false

    -- Make the buffer read-only
    vim.bo.modifiable = false
end

return M
