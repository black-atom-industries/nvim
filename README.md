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
- [blink.cmp](https://github.com/saghen/blink.cmp)
- [dashboard-nvim](https://github.com/nvimdev/dashboard-nvim)
- [diffview.nvim](https://github.com/sindrets/diffview.nvim)
- [edgy.nvim](https://github.com/folke/edgy.nvim)
- [fzf-lua](https://github.com/ibhagwan/fzf-lua)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [glance.nvim](https://github.com/DNLHC/glance.nvim)
- [incline.nvim](https://github.com/b0o/incline.nvim)
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [markview.nvim](https://github.com/OXY2DEV/markview.nvim)
- [mini.nvim](https://github.com/echasnovski/mini.nvim)
- [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [nvim-navbuddy](https://github.com/SmiteshP/nvim-navbuddy)
- [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)
- [nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
- [which-key.nvim](https://github.com/folke/which-key.nvim)
- [yazi.nvim](https://github.com/mikavilpas/yazi.nvim)
      </details>

## Contributing

Contributions are welcome! If you'd like to add support for additional plugins or improve existing themes:

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Create a pull request

See [CONTRIBUTION.md](./CONTRIBUTION.md) for detailed guidelines.

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

### Building and Testing

```bash
sh check.sh
```

### Installing Black Atom Core CLI

To generate themes, you need the Black Atom Core CLI installed:

```bash
# Clone and enter the core repository
git clone https://github.com/black-atom-industries/core.git
cd core

# Compile and install the CLI
deno task cli:compile
deno task cli:install
```

This installs the `black-atom-core` binary to `/usr/local/bin`.

### Working with Templates

The theme files are generated from templates using the Black Atom Core CLI. To modify themes:

1. Edit the template files in `lua/black-atom/themes/{collection}/`
2. Run the Core CLI to generate the theme files:
    ```bash
    cd /path/to/nvim
    black-atom-core generate
    ```

## License

MIT - See [LICENSE](./LICENSE) for details

## Related Projects

- [Black Atom Core](https://github.com/black-atom-industries/core) - Core theme definitions
- [Black Atom for Ghostty](https://github.com/black-atom-industries/ghostty) - Ghostty terminal adapter
- [Black Atom for Zed](https://github.com/black-atom-industries/zed) - Zed editor adapter
- [Black Atom for Obsidian](https://github.com/black-atom-industries/obsidian) - Obsidian adapter
