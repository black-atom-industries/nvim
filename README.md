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

### Checks

There is a script to run all checks.

Make it executable:

```bash
chmod +x scripts/check.sh
```

Then run it with:

```bash
./scripts/check.sh
```

## Supported Plugins

<details>
<summary>Click to expand supported plugins list</summary>

This theme supports the following plugins:

- [arrow.nvim](https://github.com/otavioschwanck/arrow.nvim)
    - 4 Highlight(s)
    - Last updated: 2024-08-31
    - Last commit: docs(README): add section for supported plugins
- [blink.cmp](https://github.com/saghen/blink.cmp)
    - 8 Highlight(s)
    - Last updated: 2024-10-27
    - Last commit: feat(blink_nvim): support blink.nvim plugin
- [dashboard-nvim](https://github.com/nvimdev/dashboard-nvim)
    - 4 Highlight(s)
    - Last updated: 2024-08-31
    - Last commit: docs(README): add section for supported plugins
- [diffview.nvim](https://github.com/sindrets/diffview.nvim)
    - 24 Highlight(s)
    - Last updated: 2024-08-31
    - Last commit: docs(README): add section for supported plugins
- [edgy.nvim](https://github.com/folke/edgy.nvim)
    - 5 Highlight(s)
    - Last updated: 2024-08-31
    - Last commit: docs(README): add section for supported plugins
- [fzf-lua](https://github.com/ibhagwan/fzf-lua)
    - 6 Highlight(s)
    - Last updated: 2024-08-31
    - Last commit: chore(hls.plugins): add doc links
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
    - 9 Highlight(s)
    - Last updated: 2024-08-31
    - Last commit: docs(README): add section for supported plugins
- [glance.nvim](https://github.com/DNLHC/glance.nvim)
    - 28 Highlight(s)
    - Last updated: 2024-08-31
    - Last commit: chore(hls.plugins): add doc links
- [incline.nvim](https://github.com/b0o/incline.nvim)
    - 9 Highlight(s)
    - Last updated: 2024-08-31
    - Last commit: docs(README): add section for supported plugins
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
    - 2 Highlight(s)
    - Last updated: 2024-08-31
    - Last commit: docs(README): add section for supported plugins
- [markview.nvim](https://github.com/OXY2DEV/markview.nvim)
    - 2 Highlight(s)
    - Last updated: 2024-08-31
    - Last commit: docs(README): add section for supported plugins
- [mini.nvim](https://github.com/echasnovski/mini.nvim)
    - 2 Highlight(s)
    - Last updated: 2024-08-31
    - Last commit: docs(README): add section for supported plugins
- [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
    - 13 Highlight(s)
    - Last updated: 2024-10-27
    - Last commit: style(neotree_nvim): add highlighting rule for neotree window separator
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
    - 10 Highlight(s)
    - Last updated: 2024-08-31
    - Last commit: docs(README): add section for supported plugins
- [nvim-navbuddy](https://github.com/SmiteshP/nvim-navbuddy)
    - 15 Highlight(s)
    - Last updated: 2024-08-31
    - Last commit: chore(hls.plugins): add doc links
- [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)
    - 4 Highlight(s)
    - Last updated: 2024-08-31
    - Last commit: feat(hls.plugins): update Neotree & NvimTree
- [nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context)
    - 2 Highlight(s)
    - Last updated: 2024-08-31
    - Last commit: docs(README): add section for supported plugins
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
    - 6 Highlight(s)
    - Last updated: 2024-08-31
    - Last commit: docs(README): add section for supported plugins
- [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
    - 3 Highlight(s)
    - Last updated: 2024-08-31
    - Last commit: docs(README): add section for supported plugins
- [which-key.nvim](https://github.com/folke/which-key.nvim)
    - 5 Highlight(s)
    - Last updated: 2024-08-31
    - Last commit: docs(README): add section for supported plugins
- [yazi.nvim](https://github.com/mikavilpas/yazi.nvim)
    - 1 Highlight(s)
    - Last updated: 2024-08-31
    - Last commit: docs(README): add section for supported plugins
          </details>

## Development
