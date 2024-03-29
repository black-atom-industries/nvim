local M = {}

function M.print_config()
    vim.api.nvim_create_user_command("BlackAtomPrintConfig", function()
        local config = require("black-atom-core.lib.config").get()
        print(vim.inspect(config))
    end, {})
end

function M.register()
    M.print_config()
end

return M
