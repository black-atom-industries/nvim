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
lua-language-server --check ./lua --checklevel=Warning --logpath . --configpath /Users/nikolausbrunner/Documents/dev/repos/terra-theme/core.nvim/.luarc.json
```

> Note: This currently works only with absolute paths. This seems to be a bug in `lua-language-server`, and I commented on a similar issue [here](https://github.com/LuaLS/lua-language-server/issues/2038#issuecomment-1500215468).

### Formatting

Format whole project with `stylua`.

```bash
stylua lua/**/*.lua
```
