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

---@param highlight TerraHighlightDefinition
---@param code_style TerraHighlightDefinition
---@return TerraHighlightDefinition
function M.extend_hl_with_code_style(highlight, code_style)
    return vim.tbl_extend("force", highlight, code_style)
end

function M.building_error_notification(message)
    local notification_opts = {
        title = "Terra Theme - Highlights Error",
        timeout = 10000, -- Timeout in milliseconds; set to 0 for no timeout
        hl_group = "ErrorMsg", -- Highlight group for the notification text
        close_on_click = true, -- Close the notification when clicked
    }

    require("terra-core.utils.ui").notify(
        message,
        vim.log.levels.ERROR,
        notification_opts
    )
end

---@param colors TerraColors
---@param config TerraConfig
---@return TerraHighlights
function M.build_highlights_map(colors, config)
    local default_ignore_pattern = ".*_template.lua$"
    local highlight_modules =
        require("terra-core.utils.files").get_highlight_modules(
            "lua/terra-core/highlights",
            default_ignore_pattern
        )

    local highlights_map =
        M.aggregate_highlight_maps(highlight_modules, colors, config)

    if config.debug then
        require("terra-core.utils.debug").write_debug_highlights_file(
            highlight_modules,
            highlights_map
        )
    end

    return highlights_map
end

---Aggregate the highlight maps from the highlight files
---@param files string[]
---@param colors TerraColors
---@param config TerraConfig
---@return TerraHighlights
function M.aggregate_highlight_maps(files, colors, config)
    local highlights_map = {}

    for _, file in ipairs(files) do
        ---@type TerraHighlightsSpec
        local highlight_map_extension = require(file)

        -- Check if the highlight map is enabled - Default to true if it's not set
        local highlight_map_is_enabled = highlight_map_extension.enabled == nil
            or highlight_map_extension.enabled

        -- If the highlight map is enabled, get the map from the extension and add it to the highlights map
        if highlight_map_is_enabled then
            -- If a file does not have a map function, print a warning and skip its highlights
            if not highlight_map_extension.map then
                M.building_error_notification(
                    "Error: Highlight map extension does not have a map method: "
                        .. file
                )
            else
                ---@type TerraHighlights
                local highlights = highlight_map_extension.map(colors, config)

                -- Check for duplicate highlight keys and print a warning if one is found
                for key, value in pairs(highlights) do
                    if highlights_map[key] then
                        M.building_error_notification(
                            "Error: Duplicate highlight key found: " .. key
                        )
                    else
                        highlights_map[key] = value
                    end
                end
            end
        end
    end

    return vim.tbl_deep_extend("force", {}, highlights_map)
end

---Apply the highlights to the editor via the API (nvim_set_hl)
---@param highlight_groups TerraHighlights
function M.set_highlights(highlight_groups)
    for group_name, group_definition in pairs(highlight_groups) do
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
end

---Returns the appropriate highlight value based on the provided conditions.
---If no conditions evaluate to true, the default highlight value is returned.
---@param default_highlight string The default highlight value to return if no conditions are true.
---@param conditional_highlight_map table<boolean, string> A table mapping conditions (booleans) to their respective highlight values.
---@return string
function M.conditional_hl(default_highlight, conditional_highlight_map)
    for condition, highlight in pairs(conditional_highlight_map) do
        if condition then
            return highlight
        end
    end

    return default_highlight
end

---@return nil
function M.setup()
    local colors = require("terra-core.colors").get()

    M.set_highlights(M.build_highlights_map(colors, TerraConfig))
end

return M
