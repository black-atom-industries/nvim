local api = require("black-atom.api")
local config = require("black-atom.config").get()

local colors = api:get_colors()

local cond_hl = require("black-atom.lib.highlights").cond_hl

local M = {}

local fg = colors.ui.fg
local bg = colors.ui.bg
local palette = colors.palette

M.normal = {
    a = {
        fg = fg.accent,
        bg = bg.active,
    },
    b = {
        fg = fg.subtle,
        bg = cond_hl(bg.default, {
            [config.transparency == "partial"] = bg.default,
            [config.transparency == "full"] = colors.none,
        }),
    },
    c = {
        fg = fg.subtle,
        bg = cond_hl(bg.default, {
            [config.transparency == "partial"] = bg.default,
            [config.transparency == "full"] = colors.none,
        }),
    },
}

M.inactive = {
    a = {
        fg = fg.accent,
        bg = bg.active,
    },
    b = {
        fg = fg.disabled,
        bg = cond_hl(bg.default, {
            [config.transparency == "partial"] = bg.default,
            [config.transparency == "full"] = colors.none,
        }),
    },
    c = {
        fg = fg.disabled,
        bg = cond_hl(bg.default, {
            [config.transparency == "partial"] = bg.default,
            [config.transparency == "full"] = colors.none,
        }),
    },
}

M.visual = {
    a = { fg = fg.contrast, bg = palette.magenta },
}

M.replace = {
    a = { fg = fg.contrast, bg = palette.red },
}

M.insert = {
    a = { fg = fg.contrast, bg = palette.blue },
}

M.command = {
    a = { fg = fg.contrast, bg = palette.green },
}

M.terminal = {
    a = { fg = fg.contrast, bg = palette.cyan },
}

for _, mode in pairs(M) do
    mode.a.gui = "bold,italic"
end

return M
