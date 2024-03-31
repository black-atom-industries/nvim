local M = {}

local function in_list(value, list)
    for _, v in ipairs(list) do
        if v == value then
            return true
        end
    end
    return false
end

local function validate_theme(theme)
    return theme ~= nil and theme ~= "", "Invalid theme specified"
end

-- Validate `BlackAtomCore.HighlightDefinition` type
local function validate_highlight_definition(option)
    if type(option) ~= "table" then
        return false, "expected a table for highlight definition"
    end

    for key, value in pairs(option) do
        local valid_keys = {
            fg = "string",
            bg = "string",
            sp = "string",
            bold = "boolean",
            italic = "boolean",
            blend = "number",
            standout = "boolean",
            underline = "boolean",
            undercurl = "boolean",
            underdouble = "boolean",
            underdotted = "boolean",
            underdashed = "boolean",
            strikethrough = "boolean",
            reverse = "boolean",
            link = "string",
        }

        local expected_type = valid_keys[key]
        if not expected_type then
            return false, "unexpected key in highlight definition: " .. key
        elseif type(value) ~= expected_type then
            return false, "expected " .. expected_type .. " for key " .. key .. ", got " .. type(value)
        end
    end

    return true
end

-- Validates the main config structure
---@param options BlackAtomCore.Config
function M.config(options)
    vim.validate({
        debug = { options.debug, "boolean", true },
        theme = { options.theme, validate_theme, "Invalid theme specified" },
        registered_themes = { options.registered_themes, "table", true },
        term_colors = { options.term_colors, "boolean", true },
        styles = { options.styles, "table", true },
    })

    -- Further nested validations...
    if options.styles then
        vim.validate({
            cmp_kind_color_mode = {
                options.styles.cmp_kind_color_mode,
                function(value)
                    return in_list(value, { "fg", "bg" })
                end,
                "cmp_kind_color_mode must be 'fg' or 'bg'",
            },
            dark_sidebars = { options.styles.dark_sidebars, "boolean", true },
            transparency = {
                options.styles.transparency,
                function(value)
                    return in_list(value, { "full", "partial", "none" })
                end,
                "transparency must be 'full', 'partial', or 'none'",
            },
            ending_tildes = { options.styles.ending_tildes, "boolean", true },
        })

        if options.styles.diagnostics then
            vim.validate({
                undercurl = { options.styles.diagnostics.undercurl, "boolean", true },
                background = { options.styles.diagnostics.background, "boolean", true },
            })
        end

        if options.styles.syntax then
            for syntax_key, syntax_value in pairs(options.styles.syntax) do
                local allowed_keys = {
                    "comments",
                    "keywords",
                    "functions",
                    "strings",
                    "variables",
                    "messages",
                }

                if not in_list(syntax_key, allowed_keys) then
                    error(
                        "Invalid syntax key: '"
                            .. syntax_key
                            .. "'. Must be one of: "
                            .. table.concat(allowed_keys, ", ")
                    )
                end

                local is_valid, err = validate_highlight_definition(syntax_value)
                if not is_valid then
                    error("Invalid syntax style for " .. syntax_key .. ": " .. err)
                end
            end
        end
    end
end

return M
