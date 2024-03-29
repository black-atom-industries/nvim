local lib = require("black-atom-core.lib")

local M = {}

---Loads a theme definition into the editor
---@param theme BlackAtomCore.ThemeDefinition
---@return nil
function M.load(theme)
    lib.themes.dev_status_warning(theme.meta)
    lib.config.set({ theme = theme.meta.key })

    lib.hls.reset()

    vim.termguicolors = true
    vim.g.colors_name = theme.meta.key
    vim.opt.background = theme.meta.appearance

    local config = lib.config.get()

    lib.hls.setup(theme.colors, config)
end

---@param opts BlackAtomCore.Config
---@return nil
function M.setup(opts)
    if not opts then
        local default_config = require("black-atom-core.config").default_config
        lib.config.set(default_config)
    else
        lib.config.set(opts)
    end

    M.setup_usercommands()
end

function M.setup_usercommands()
    vim.api.nvim_create_user_command("BlackAtomPrintConfig", function()
        print(vim.inspect(vim.g.black_atom_core_config))
    end, {})
end

-- TODO: [DEV-47 : Runtime Validation for Config](https://linear.app/black-atom-industries/issue/DEV-47/runtime-validation-for-config)
---Plugins can register their themes with this function
---@param themes BlackAtomCore.ThemeDefinition[]
function M.register_themes(themes)
    lib.config.set({ registered_themes = themes })
end

return M
