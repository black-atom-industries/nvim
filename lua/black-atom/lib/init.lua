---@class BlackAtom.Lib
local M = {}

-- Lazy-load modules on access
setmetatable(M, {
    __index = function(t, k)
        local modules = {
            ui = "black-atom.lib.ui",
            highlights = "black-atom.lib.highlights",
            files = "black-atom.lib.files",
            debug = "black-atom.lib.debug",
            bg = "black-atom.lib.bg",
            themes = "black-atom.lib.themes",
            validate = "black-atom.lib.validate",
            windows = "black-atom.lib.windows",
        }

        if modules[k] then
            local module = require(modules[k])
            rawset(t, k, module)
            return module
        end
    end,
})

return M
