# Black Atom for Neovim

> A collection of elegant, cohesive themes for Neovim by Black Atom Industries

## What is a Black Atom Adapter?

This repository is a **Neovim adapter** for the Black Atom theme ecosystem. In the Black Atom architecture:

- The [core repository](https://github.com/black-atom-industries/core) is the single source of truth for all theme definitions
- Each adapter implements these themes for a specific platform (Neovim, VS Code, Alacritty, etc.)
- The adapter uses templates to transform core theme definitions into platform-specific files

This modular approach ensures consistent colors and styling across all supported platforms while allowing for platform-specific optimizations.

## Available Themes

Black Atom includes multiple theme collections, each with dark and light variants:

| Collection    | Description                   |
| ------------- | ----------------------------- |
| **Default**   | Core Black Atom themes        |
| **JPN**       | Japanese-inspired themes      |
| **MNML**      | Minimalist accent themes      |
| **Stations**  | Space station-inspired themes |
| **Terra**     | Earth season-inspired themes  |

## Installation

Install the plugin with your preferred package manager:

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "black-atom-industries/nvim",
  name = "black-atom",
  priority = 1000, -- Load before other start plugins
  opts = {
    -- Configuration options
    theme = "black-atom-jpn-koyo-yoru", -- Default theme
    transparent = false, -- Enable transparent background
    contrast = false, -- Enable high contrast mode
  },
}
```

### [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'black-atom-industries/nvim'

" In your init.vim or .vimrc
lua << EOF
require('black-atom').setup({
  theme = "black-atom-jpn-koyo-yoru",
  transparent = false,
  contrast = false,
})
EOF
```

## Usage

### Basic Configuration

```lua
require('black-atom').setup({
  -- Default theme (will be used when Neovim starts)
  theme = "black-atom-jpn-koyo-yoru",

  -- Enable transparent background
  transparent = false,

  -- Enable high contrast mode
  contrast = false,

  -- Override specific highlight groups
  overrides = {
    -- Add your highlight overrides here
    -- Example: Normal = { bg = "#000000" }
  },
})
```

## Supported Plugins

<details>
<summary>Click to expand supported plugins list</summary>

This theme supports the following plugins:

- [arrow.nvim](https://github.com/otavioschwanck/arrow.nvim)
  - 4 Highlight(s)
  - Last updated: 2025-02-16
  - Last commit: refactor(themes): rename feedback color tokens for better semantics
- [blink.cmp](https://github.com/saghen/blink.cmp)
  - 7 Highlight(s)
  - Last updated: 2025-02-16
  - Last commit: revert: rename `syn` variables to `syntax`
- [codediff.nvim](https://github.com/esmuellert/codediff.nvim)
  - 31 Highlight(s)
  - Last updated: 2026-03-31
  - Last commit: feat(highlights/plugins): add codediff.nvim support
- [diffview.nvim](https://github.com/sindrets/diffview.nvim)
  - 24 Highlight(s)
  - Last updated: 2025-02-16
  - Last commit: refactor(themes): rename feedback color tokens for better semantics
- [edgy.nvim](https://github.com/folke/edgy.nvim)
  - 5 Highlight(s)
  - Last updated: 2025-02-16
  - Last commit: feat(ui): migrate to new semantic color tokens
- [flash.nvim](https://github.com/folke/flash.nvim)
  - 6 Highlight(s)
  - Last updated: 2025-02-16
  - Last commit: revert(themes): restore full parameter names
- [flux.nvim](https://github.com/nikbrunner/flux.nvim)
  - 13 Highlight(s)
  - Last updated: 
  - Last commit: 
- [fyler.nvim](https://github.com/A7Lavinraj/fyler.nvim)
  - 30 Highlight(s)
  - Last updated: 2026-03-31
  - Last commit: fix(highlights/plugins/fyler): remove unused bg_default variable
- [fzf-lua](https://github.com/ibhagwan/fzf-lua)
  - 7 Highlight(s)
  - Last updated: 2025-08-11
  - Last commit: fix(highlight): update fzf-lua preview highlight styles
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
  - 9 Highlight(s)
  - Last updated: 2025-02-16
  - Last commit: feat(ui): migrate to new semantic color tokens
- [glance.nvim](https://github.com/DNLHC/glance.nvim)
  - 28 Highlight(s)
  - Last updated: 2025-02-16
  - Last commit: feat(ui): migrate to new semantic color tokens
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
  - 2 Highlight(s)
  - Last updated: 2025-02-16
  - Last commit: feat(ui): migrate to new semantic color tokens
- [mini.nvim](https://github.com/echasnovski/mini.nvim)
  - 158 Highlight(s)
  - Last updated: 2026-03-16
  - Last commit: fix(highlights/plugins/mini): update MiniFiles border colors
- [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
  - 13 Highlight(s)
  - Last updated: 2025-02-16
  - Last commit: feat(ui): migrate to new semantic color tokens
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
  - 11 Highlight(s)
  - Last updated: 2025-02-16
  - Last commit: feat(ui): migrate to new semantic color tokens
- [nvim-navbuddy](https://github.com/SmiteshP/nvim-navbuddy)
  - 8 Highlight(s)
  - Last updated: 2025-02-16
  - Last commit: revert: rename `syn` variables to `syntax`
- [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)
  - 4 Highlight(s)
  - Last updated: 2025-02-16
  - Last commit: style: run stylua
- [nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context)
  - 2 Highlight(s)
  - Last updated: 2025-02-16
  - Last commit: feat(ui): migrate to new semantic color tokens
- [obsidian.nvim](https://github.com/obsidian-nvim/obsidian.nvim)
  - 11 Highlight(s)
  - Last updated: 2026-01-04
  - Last commit: feat(plugins): add obsidian.nvim highlight support
- [render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim)
  - 69 Highlight(s)
  - Last updated: 2026-05-07
  - Last commit: feat(highlights/plugins): add render-markdown.nvim support
- [plugin-name](https://github.com/username/plugin-name)
  - 27 Highlight(s)
  - Last updated: 2026-05-18
  - Last commit: fix(highlights/plugins): override snack picker git status colors
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
  - 6 Highlight(s)
  - Last updated: 2025-02-16
  - Last commit: feat(ui): migrate to new semantic color tokens
- [which-key.nvim](https://github.com/folke/which-key.nvim)
  - 5 Highlight(s)
  - Last updated: 2025-02-16
  - Last commit: refactor: clean up plugin highlight files
- [yazi.nvim](https://github.com/mikavilpas/yazi.nvim)
  - 1 Highlight(s)
  - Last updated: 2025-02-16
  - Last commit: feat(ui): migrate to new semantic color tokens
</details>

## Development

### Roadmap

- [ ] Minimize default highlight assignments
    - The default assignment and links should be used as far as possible
- [ ] Make API stable
- [ ] Dediated Black Atom Colorscheme Picker

### Setup

Clone the repository:

```bash
git clone https://github.com/black-atom-industries/nvim.git
cd nvim
```

### Tooling

Dev tooling is managed with [mise](https://mise.jdx.dev):

```bash
mise install      # lua, lua-language-server, stylua
mise run setup    # luacheck (via luarocks)
```

`luacheck` has no prebuilt binary, so it can't be a mise `[tools]` entry. Installing
`lua` through mise also provides `luarocks` (added to `PATH`), and the `setup` task
runs `luarocks install luacheck` into that Lua install. Note this lives under the
shared `lua@5.1` install rather than the repo — re-run `mise run setup` if you bump
the pinned Lua version. Building `luacheck`'s dependencies needs a C compiler
(Xcode Command Line Tools on macOS).

### Building and Testing

Run all checks (luacheck, lua-language-server, stylua):

```bash
mise run check
```

Individual tasks are also available: `mise run lint`, `mise run typecheck`,
`mise run fmt-check`, and `mise run fmt` (formats in place). CI runs the same
`mise run check`, so a green local run matches CI.

### Working with Templates

Theme files are generated from templates using [Black Atom Core](https://jsr.io/@black-atom/core). You need [Deno](https://deno.land/) installed.

1. Edit the template files in `lua/black-atom/themes/{collection}/`
2. Generate theme files:
    ```bash
    deno task generate
    ```
3. Or use watch mode for live regeneration:
    ```bash
    deno task dev
    ```

## License

MIT - See [LICENSE](./LICENSE) for details

## Related Projects

- [Black Atom Core](https://github.com/black-atom-industries/core) - Core theme definitions
- [Black Atom for Ghostty](https://github.com/black-atom-industries/ghostty) - Ghostty terminal adapter
- [Black Atom for Zed](https://github.com/black-atom-industries/zed) - Zed editor adapter
- [Black Atom for Obsidian](https://github.com/black-atom-industries/obsidian) - Obsidian adapter
