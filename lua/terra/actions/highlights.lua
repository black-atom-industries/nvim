local M = {}

---Reset Vim Highlights and Syntax
---@return nil
function M.reset()
    -- Clear all highlights
    vim.cmd("hi clear")

    -- Reset syntax highlighting
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end
end

---Apply `highlight` command for each group in highlights
---@param hl_group HighlightGroup
function M.set_highlight_group(hl_group)
    ---@param hl_group_name HighlightGroupName
    ---@param hl_group_settings HighlightGroupSettings
    local apply_highlights = function(hl_group_name, hl_group_settings)
        vim.api.nvim_command(
            string.format(
                "highlight %s guifg=%s guibg=%s guisp=%s gui=%s",
                hl_group_name,
                hl_group_settings.fg or "none",
                hl_group_settings.bg or "none",
                hl_group_settings.sp or "none",
                hl_group_settings.fmt or "none"
            )
        )
    end

    for group_name, group_settings in pairs(hl_group) do
        apply_highlights(group_name, group_settings)
    end
end

---@param colors Colors
---@param overrides Highlights
---@return Highlights
function M.extend_defaults(colors, overrides)
    local defaults = require("terra.highlights.defaults")(colors, vim.g.terra_config)
    return vim.tbl_deep_extend("force", defaults, overrides or {})
end

return M
