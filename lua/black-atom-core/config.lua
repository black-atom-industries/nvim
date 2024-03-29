local M = {}

-- Escaped plugin name. Used to find its own installation path.
M.plugin_name = "black%-atom%-core%.nvim"

---@type BlackAtomCore.Config
M.default = {
    debug = false,
    theme = "terra_spring_night",
    registered_themes = {},
    term_colors = true,
    styles = {
        ending_tildes = false,
        cmp_kind_color_mode = "bg",
        dark_sidebars = true,
        transparency = "none",
        diagnostics = {
            undercurl = false,
            background = false,
        },
        syntax = {
            comments = {
                italic = true,
            },
            keywords = {
                bold = true,
                italic = true,
            },
            functions = {
                bold = true,
            },
            strings = {
                italic = true,
            },
            variables = {},
            messages = {
                bold = true,
            },
        },
    },
}

-- TODO: [DEV-47 : Runtime Validation for Config](https://linear.app/black-atom-industries/issue/DEV-47/runtime-validation-for-config)
---Sets options for the BlackAtomCore.Config during runtime
---@param options BlackAtomCore.Config
---@return nil
function M.set(options)
    local default_config = M.default
    local current_config = vim.g.black_atom_core_config or {}
    local merged_config = vim.tbl_deep_extend("force", default_config, current_config, options)

    vim.g.black_atom_core_config = merged_config
end

---Returns the current BlackAtomCore.Config
---@return BlackAtomCore.Config | any
function M.get()
    return vim.g.black_atom_core_config
end
return M
