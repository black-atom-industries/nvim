local M = {}

function M.print_config()
    vim.api.nvim_create_user_command("BlackAtomPrintConfig", function()
        local Config = require("black-atom.config"):get()
        require("black-atom.lib.windows").open_tmp_vertical_window(Config)
    end, {})
end

function M.clear_cache()
    vim.api.nvim_create_user_command("BlackAtomClearCache", function()
        require("black-atom.lib.cache").invalidate_all()
        vim.notify("Black Atom: highlight cache cleared", vim.log.levels.INFO)
    end, {})
end

function M.register()
    M.print_config()
    M.clear_cache()
end

return M
