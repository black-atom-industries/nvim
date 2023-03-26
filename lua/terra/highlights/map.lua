local actions = require("terra.actions")

local get_highlight_files = actions.files.get_highlight_files
local run_on_entry = actions.files.run_on_entry

local M = {}

---Build the highlights map
---@param colors TerraColors
---@param config TerraConfig
---@return TerraHighlightsMap
M.build_highlights_map = function(colors, config)
    -- Create the highlights map
    ---@type TerraHighlightsMap
    local highlights = { common = {}, lsp = {}, syntax = {}, plugins = {} }

    -- Require the common and lsp highlight files and run their setup functions
    require("terra.highlights.common").setup(highlights, colors, config)
    require("terra.highlights.lsp").setup(highlights, colors, config)

    -- For every file in the plugins directory, require it and run its setup function
    local plugin_highlight_files = get_highlight_files("plugins")
    run_on_entry(plugin_highlight_files, function(file)
        require("terra.highlights.plugins." .. file).setup(highlights, colors, config)
    end)

    -- For every file in the `syntax` directory, require it and run its setup function
    local lang_highlight_files = get_highlight_files("syntax")
    run_on_entry(lang_highlight_files, function(file)
        require("terra.highlights.syntax." .. file).setup(highlights, colors, config)
    end)

    return highlights
end

return M
