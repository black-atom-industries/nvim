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

    After you have finished your highlight map, you can test it by running Neovim in a separate window
    and see if your highlights are applied correctly, or turn on `debug` mode
    inside "lua/black-atom/config.lua" to see a generated file with all highlights.
    This will be placed in the `debug` folder inside the `black-atom.nvim` plugin folder.

    For further assistance or questions, consider reaching out through the project's GitHub repository.
]]

---@type BlackAtom.HighlightsSpec
local highlight_map_spec = {
    enabled = true,

    map = function(colors, config)
        ---@type BlackAtom.Highlights
        local highlights_map = {
            MyHighlightGroup = { fg = colors.semantics.fg.primary.main },
            MyOtherHighlightGroup = {
                fg = colors.palette.cyan,
                bg = colors.semantics.bg.primary.main,
            },
            MyHighlightGroupWithUnderline = {
                fg = colors.semantics.fg.primary.main,
                underline = true,
            },
        }

        return highlights_map
    end,
}

return highlight_map_spec
