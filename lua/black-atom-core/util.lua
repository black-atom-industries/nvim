-- Public API for certain lib functions

---@class BlackAtomCore.Util
local M = {}

M.select_theme = require("black-atom-core.lib.config").select_theme

M.select_variant = require("black-atom-core.lib.config").select_variant

return M
