local M = {}

function M.print_config()
    vim.api.nvim_create_user_command("BlackAtomPrintConfig", function()
        local config = require("black-atom-core.config").get()
        require("black-atom-core.lib.windows").open_tmp_vertical_window(config)
    end, {})
end

function M.register()
    M.print_config()
end

return M
