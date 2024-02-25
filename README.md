# Black Atom Core for Neovim

This is logic core for Neovim themes by Black Atom Industries.
It will receive theme definitions from outside and apply them to the editor.

## 🚧 &nbsp;Status: Early development &nbsp;🚧</p>

This theme is in an early development phase.

Structure, colors and things can (and will) change.

This is all a work in progress.

**Current usage is not recommended.**

## Development

### Formatting

Format whole project with `stylua`.

```bash
stylua lua/**/*.lua
```

## Setting up a theme

To select a theme, there are some options to go about.j
Here is an example with `lazy.nvim`:

```lua
return {
    "black-atom-industries/black-atom-core.nvim",
    priority = 1000,
    ---@type BlackAtomCore.Config
    opts = {
      -- Set up your default theme
      theme = "terra_summer_night",
    },
    keys = {
    -- You can also select a theme via a keymap
    -- NOTE: This will open a telescope picker and temporarily set the theme
      {
        "<leader>Tt",
        function()
          require("black-atom-core.lib.config").select_theme()
        end,
        desc = "Select a Black Atom Industries theme",
      },
    },

    -- If you want to setup a theme via vim.cmd.colorscheme you can do it like this
    -- NOTE: This will override the options set above
    config = function()
      vim.cmd.colorscheme("terra_winter_night")
    end,
  }
```

## Style Presets (`styles`)

With `config.styles` the user can opt in to different style presets, which change the look of the theme.

https://github.com/black-atom-industries/black-atom-core.nvim/blob/533dbbda58ab1a8bd5bb3a24edb78b5a2e40a654/lua/black-atom-core/types.lua#L130-L136
