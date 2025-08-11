local M = {}

---@type BlackAtom.Config
local default_config = {
    debug = false,
    theme = "black-atom-engineering",
    collection = "default",
    term_colors = true,
    styles = {
        ending_tildes = false,
        cmp_kind_color_mode = "bg",
        dark_sidebars = true,
        dark_floats = true,
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
            },
            functions = {},
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

---Sets options for the BlackAtom.Config during runtime
---@param options BlackAtom.Config
---@return nil
function M.set(options)
    local current_config = vim.g.black_atom_core_config or {}

    ---@type BlackAtom.Config
    local merged_config = vim.tbl_deep_extend("force", default_config, current_config, options)
    require("black-atom.lib.validate").config(merged_config)

    vim.g.black_atom_core_config = merged_config
end

---Returns the current BlackAtom.Config
---@return BlackAtom.Config | any
function M.get()
    return vim.g.black_atom_core_config
end

return M
