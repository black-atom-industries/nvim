local M = {}

-- Escaped plugin name. Used to find its own installation path.
M.plugin_name = "black%-atom%-core%.nvim"

---@type BlackAtomCore.Config
M.default = {
    debug = false,
    theme = "terra-spring-night",
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

---Sets options for the BlackAtomCore.Config during runtime
---@param options BlackAtomCore.Config
---@return nil
function M.set(options)
    local validate = require("black-atom-core.lib.validate")

    local default_config = M.default
    local current_config = vim.g.black_atom_core_config or {}

    ---@type BlackAtomCore.Config
    local merged_config = vim.tbl_deep_extend("force", default_config, current_config, options)
    validate.config(merged_config)

    vim.g.black_atom_core_config = merged_config
end

---Returns the current BlackAtomCore.Config
---@return BlackAtomCore.Config | any
function M.get()
    return vim.g.black_atom_core_config
end
return M
