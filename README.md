# Terra Theme `core` for Neovim

This is the core of the Terra Theme for Neovim.
It serves as a base for all other Terra Theme colorscheme plugins.

## 🚧 &nbsp;Status: Early development &nbsp;🚧</p>

This theme is in an early development phase.

Structure, colors and things can (and will) change.

This is all a work in progress.

**Current usage is not recommended.**

## Development

### Linting

Lint whole project with `lua-language-server` while respecting the `.luarc.json`.

```bash
lua-language-server --check ./lua --checklevel=Warning --logpath . --configpath /Users/nikolausbrunner/Documents/dev/repos/terra-theme/terra-core.nvim/.luarc.json
```

> Note: This currently works only with absolute paths. This seems to be a bug in `lua-language-server`, and I commented on a similar issue [here](https://github.com/LuaLS/lua-language-server/issues/2038#issuecomment-1500215468).

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
    "terra-theme/terra-core.nvim",
    priority = 1000,
    ---@type TerraConfig
    opts = {
      -- Set up your default theme and variant here
      theme = "fall",
      variant = "night",
    },
    keys = {
    -- You can also select a theme via a keymap
    -- NOTE: This will open a telescope picker and temporarily set the theme
      {
        "<leader>Tt",
        function()
          require("terra-core.lib.config").select_theme()
        end,
        desc = "Select a Terra theme",
      },
    },

    -- If you want to setup a theme via vim.cmd.colorscheme you can do it like this
    -- NOTE: This will override the options set above
    config = function()
      vim.cmd.colorscheme("terra_control_night")
    end,
  }
```

## Style Presets (`style_presets`)

With `config.style_presets` the user can opt in to different style presets, which change the look of the theme.

Available presets:

-   `style_presets.cmp_kind_color_mode` (default: `bg`) - Change the color mode of the `cmp` kind icons. Available options: `bg`, `fg`
