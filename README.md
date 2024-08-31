# 🚧 &nbsp;Development Status: ALPHA &nbsp;🚧</p>

This theme is in an early development phase.

Structure, colors and things can (and will) change.

This is all a work in progress.

**Current usage is not recommended.**

---

# Black Atom for Neovim

This is logic core for Neovim themes by Black Atom Industries.
It will receive theme definitions from outside and apply them to the editor.

## Installation

Install the plugin with your favourite package manager. 
Example with [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
---@type LazyPluginSpec
return {
    "black-atom-industries/nvim",
    name = "black-atom",
    priority = 1000,
    ---@module "black-atom"
    ---@type BlackAtom.Config
    opts = {},
}
```

## Development

### Linting

```bash
luacheck .
```

### Formatting

Format whole project with `stylua`.

```bash
stylua lua/**/*.lua
```

## Supported Plugins

This theme supports the following plugins:

To update this list, run `./update_supported_plugins.sh` from the root of the project.

- `arrow.nvim` - 4 Highlights - (Last updated: 2024-08-31 - docs(README): add section for supported plugins)
- `dashboard.nvim` - 4 Highlights - (Last updated: 2024-08-31 - docs(README): add section for supported plugins)
- `diffview.nvim` - 24 Highlights - (Last updated: 2024-08-31 - docs(README): add section for supported plugins)
- `edgy.nvim` - 5 Highlights - (Last updated: 2024-08-31 - docs(README): add section for supported plugins)
- `fzflua` - 6 Highlights - (Last updated: 2024-08-31 - chore(hls.plugins): add doc links)
- `gitsigns.nvim` - 9 Highlights - (Last updated: 2024-08-31 - docs(README): add section for supported plugins)
- `glance.nvim` - 28 Highlights - (Last updated: 2024-08-31 - chore(hls.plugins): add doc links)
- `incline.nvim` - 9 Highlights - (Last updated: 2024-08-31 - docs(README): add section for supported plugins)
- `indent.blankline.nvim` - 2 Highlights - (Last updated: 2024-08-31 - docs(README): add section for supported plugins)
- `markview.nvim` - 2 Highlights - (Last updated: 2024-08-31 - docs(README): add section for supported plugins)
- `mini.nvim` - 2 Highlights - (Last updated: 2024-08-31 - docs(README): add section for supported plugins)
- `neotree.nvim` - 12 Highlights - (Last updated: 2024-08-31 - docs(README): add section for supported plugins)
- `nvim.cmp` - 10 Highlights - (Last updated: 2024-08-31 - docs(README): add section for supported plugins)
- `nvim.navbuddy` - 15 Highlights - (Last updated: 2024-08-31 - chore(hls.plugins): add doc links)
- `nvim.tree` - 4 Highlights - (Last updated: 2024-08-31 - feat(hls.plugins): update Neotree & NvimTree)
- `nvim.treesitter.context` - 2 Highlights - (Last updated: 2024-08-31 - docs(README): add section for supported plugins)
- `telescope.nvim` - 6 Highlights - (Last updated: 2024-08-31 - docs(README): add section for supported plugins)
- `vim.gitgutter` - 3 Highlights - (Last updated: 2024-08-31 - docs(README): add section for supported plugins)
- `vim.illuminate` - 3 Highlights - (Last updated: 2024-08-31 - feat(hls.plugins): adjust illuminate)
- `whichkey.nvim` - 5 Highlights - (Last updated: 2024-08-31 - docs(README): add section for supported plugins)
- `yazi.nvim` - 1 Highlights - (Last updated: 2024-08-31 - docs(README): add section for supported plugins)

## Development
