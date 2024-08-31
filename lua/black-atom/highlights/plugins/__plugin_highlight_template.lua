--[[
    Hello there!
    Thank you for wanting to contribute to the black-atom.nvim plugin!

    To create a new highlight map for your plugin, simply copy this template
    and rename it to a suitable name, such as "my_plugin.lua".

    You don't need to require this file anywhere manually, since every lua file
    in the `lua/black-atom/highlights/plugins/` folder will be loaded automatically.
    Note: Filenames ending with "_template.lua" will be disregarded!

    Each highlight file must return a `BlackAtom.HighlightsSpec` table,
    which at a minimum, should contain a field called `map`.
    The `BlackAtom.HighlightsSpec` and `BlackAtom.Highlights` types
    will assist with completion and type checking.
    (Ensure the `lua-language-server` is installed for this to work.)

    The `enabled` field is optional and defaults to true.
    The `map` function needs to return a `BlackAtom.Highlights` table.
    It receives the colors and config tables as parameters,
    which gives you access to all the colors and config options.
    -- `colors` is a table containing the color palette.
    -- `config` is a table containing configuration options.

    IMPORTANT: When you add a new plugin file, and run the `./update_supported_plugins.sh` script,
    it will be automatically included in the Supported Plugins section of the README.md file.
    This is a great way to showcase your contribution and help others discover new plugin support!


    To ensure this automatic process works correctly, it's crucial that the highlight groups
    are returned in a specific structure:

    ---@type BlackAtom.Highlights
    return {
        HighlightGroup1 = { ... }, -- Eeach line in this block after `---@type BlackAtom.Highlights` will be counted.
        HighlightGroup2 = { ... },
        ...
    }

    This structure allows our script to accurately count the number of highlight groups
    for each plugin and update the README.md file accordingly.

    NAMING CONVENTION: Please name your plugin highlight file name like your plugin name. Replace dots with underscores.
    For example: `telescope.nvim` => `telescope_nvim.lua`

    After you have finished your highlight map, you can test it by running Neovim in a separate window
    and see if your highlights are applied correctly, or turn on `debug` mode
    in the config file to see a generated file with all highlights.
    This will be placed in the `debug` folder placed at the root of the plugin.

    For further assistance or questions, consider reaching out through the project's GitHub repository.
]]

---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors, config)
        -- Tere are also helper functions for common background colors, which are dependent on the config
        local bg_float = require("black-atom.lib").bg.float(config, colors)

        local p = colors.palette -- These are semantic color tokens for the palette
        local ui = colors.ui -- These are semantic color tokens for the UI
        local s = colors.syntax -- These are semantic color tokens for the syntax

        -- IMPORTANT: Ensure the highlight groups are returned in the correct structure so that the script to automatically generate the README.md file can work correctly
        ---@type BlackAtom.Highlights
        return {
            MyHighlightGroup = { fg = ui.fg.primary.main },
            MyFloatBorder = { fg = p.green, bg = bg_float },
            MyDimmedHighlightGroup = { fg = ui.fg.neutral },
            MyHighlightGroupWithUnderline = { fg = ui.fg.primary.main, underline = true },
            MyVariableKindSymbol = { fg = s.variable.default },
        }
    end,
}
