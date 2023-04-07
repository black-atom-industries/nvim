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

> Note: This currently works only with absolute paths. This seems to be a bug in `lua-language-server`, and I commented on a similar issue [here](
https://github.com/LuaLS/lua-language-server/issues/2038#issuecomment-1500215468).

### Formatting

Format whole project with `stylua`.

```bash
stylua lua/**/*.lua
```
