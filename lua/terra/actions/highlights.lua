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

---Extends the highlight with optional code styles from the user config
---@param highlight HighlightDefinitionMap
---@param code_style CodeStyleFormat
---@return HighlightDefinitionMap
function M.extend_with_code_style(highlight, code_style)
    return vim.tbl_extend("force", highlight, code_style)
end

---Apply `highlight` command for each group in highlights
---@param highlight_group HighlightGroup
function M.set_highlight_group(highlight_group)
    ---@param group_name HighlightGroupName
    ---@param group_definition HighlightDefinitionMap
    local apply_highlights = function(group_name, group_definition)
        -- fg = hl_group_settings.fg or "none",
        -- TODO: Make this more consise while looping through table and use defaults
        -- QUESTION: The user should probaly not be able to overwrite fg and bg via the config.code_style table
        vim.api.nvim_set_hl(0, group_name, {
            fg = group_definition.fg or "none",
            bg = group_definition.bg or "none",
            sp = group_definition.sp or "none",
            bold = group_definition.bold or false,
            italic = group_definition.italic or false,
            reverse = group_definition.reverse or false,
            underline = group_definition.underline or false,
            underdouble = group_definition.underdouble or false,
            underdashed = group_definition.underdashed or false,
            underdotted = group_definition.underdotted or false,
            strikethrough = group_definition.strikethrough or false,
            undercurl = group_definition.undercurl or false,
            standout = group_definition.standout or false,
            link = group_definition.link or nil,
        })
    end

    for group_name, group_definition in pairs(highlight_group) do
        apply_highlights(group_name, group_definition)
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
