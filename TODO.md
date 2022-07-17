# TODO

## Themes

- [ ] Spring
  - [ ] Night (WIP)
  - [ ] Day
- [ ] Summer
  - [ ] Night
  - [ ] Day
- [ ] Fall
  - [ ] Night
  - [ ] Day
- [ ] Winter
  - [ ] Night
  - [ ] Day

## General

- [x] Setup WIP README
- [x] Rename Repo
- [x] Rename Plugin
- [x] Roughly Analyse and Comment existing Code
- [x] Remove Old Config
- [x] Research others themes for reference
- [ ] `extras/` with pointer to `terminal` repository

## Config

- [x] `season "spring" | "summer" | "fall" | "winter"`
- [x] `time "day" | "night"`
- [x] Remove `enabled_seasons`, because with the selection menu we don't really need that
- [ ] Introduce `select_time()`
- [ ] Introduce `on_season_select()`
- [ ] Introduce `on_time_select()`

## Logic

- [ ] Create Highlights dynamically
  - Each theme should take a base highlights file and return its own version of it
- [ ] Write out Types (with EmmyLua, which works with [lua-dev.nvim](https://github.com/folke/lua-dev.nvim))
  - [EmmyLua Documentation](https://github.com/sumneko/lua-language-server/wiki/EmmyLua-Annotations)
  - [Setup neogen](https://github.com/danymat/neogen)
  - Other Examples
    - [Example: Penlight](https://github.com/lunarmodules/Penlight/blob/master/lua/pl/config.lua)
    - [Example: tabby.nvim](https://github.dev/nanozuki/tabby.nvim/blob/main/lua/tabby/init.lua)
    - [Example: nvim-notify](https://github.com/rcarriga/nvim-notify/blob/master/lua/notify/config/init.lua)
- [ ] Implement `ccall()` conditionally calling functions
- [ ] Call certain seasons directly from command `:colorscheme terra_spring` etc.

## Documentation

### `README.md`

- [ ] Screenshots
- [ ] Spring
  - [x] Base Palette
  - [ ] Primary Colors
- [ ] Summer
  - [ ] Base Palette
  - [ ] Primary Colors
- [ ] Fall
  - [ ] Base Palette
  - [ ] Primary Colors
- [ ] Winter
  - [ ] Base Palette
  - [ ] Primary Colors

### `LICENCSE.md`

- [ ] Research
- [ ] Validate choice
