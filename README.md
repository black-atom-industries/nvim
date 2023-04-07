# Terra Theme for Neovim

Terra will be a multi-platform theme collection with various nature inspired themes for each season, with a day and night variant.

## 🚧 &nbsp;Status: Early development &nbsp;🚧</p>

This theme is in an early development phase.

Structure, colors and things can (and will) change.

This is all a work in progress.

## Development

### Linting

Lint whole project with `lua-language-server` while respecting the `.luarc.json`.

```bash
lua-language-server --check ./lua --checklevel=Warning --logpath . --configpath /Users/nikolausbrunner/Documents/dev/repos/terra-theme/terra.nvim/.luarc.json
```

### Formatting

Format whole project with `stylua`.

```bash
stylua lua/**/*.lua
```
