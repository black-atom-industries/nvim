local M = {}

function M.print_config()
    vim.api.nvim_create_user_command("BlackAtomPrintConfig", function()
        local Config = require("black-atom.config"):get()
        require("black-atom.lib.windows").open_tmp_vertical_window(Config)
    end, {})
end

function M.cache_clear()
    vim.api.nvim_create_user_command("BlackAtomClearCache", function()
        require("black-atom.lib.cache").clear()
        vim.notify("Black Atom cache cleared", vim.log.levels.INFO)
    end, { desc = "Clear Black Atom theme cache" })
end

function M.cache_stats()
    vim.api.nvim_create_user_command("BlackAtomCacheStats", function()
        local stats = require("black-atom.lib.cache").get_stats()
        require("black-atom.lib.windows").open_tmp_vertical_window(stats)
    end, { desc = "Show Black Atom cache statistics" })
end

function M.compile()
    vim.api.nvim_create_user_command("BlackAtomCompile", function(opts)
        local cache = require("black-atom.lib.cache")
        local start_time = vim.loop.hrtime()
        
        if opts.args == "all" then
            local compiled_count = cache.compile_all_themes()
            local elapsed_ms = (vim.loop.hrtime() - start_time) / 1000000
            vim.notify(
                string.format("Compiled %d themes in %.2fms", compiled_count, elapsed_ms),
                vim.log.levels.INFO
            )
        else
            local cache_key = cache.compile_current_theme()
            local elapsed_ms = (vim.loop.hrtime() - start_time) / 1000000
            vim.notify(
                string.format("Compiled current theme in %.2fms (key: %s)", elapsed_ms, cache_key),
                vim.log.levels.INFO
            )
        end
    end, { 
        desc = "Compile Black Atom themes for faster loading",
        nargs = "?",
        complete = function() return { "all" } end
    })
end

function M.register()
    M.print_config()
    M.cache_clear()
    M.cache_stats()
    M.compile()
end

return M
