local colors = require("terra-core.colors").get()

local M = {}

local fg = colors.semantics.fg
local bg = colors.semantics.bg
local palette = colors.palette

M.normal = {
    a = { fg = fg.invert, bg = bg.active },
    b = { fg = fg.neutral, bg = bg.primary.dark },
    c = { fg = fg.neutral, bg = bg.primary.light },
}

M.inactive = {
    a = { fg = fg.neutral, bg = bg.primary.dark },
    b = { fg = fg.secondary.dark, bg = bg.secondary.dark },
    c = { fg = fg.secondary.dark, bg = bg.secondary.dark },
}

M.visual = {
    a = { fg = fg.invert, bg = palette.magenta },
}

M.replace = {
    a = { fg = fg.invert, bg = palette.red },
}

M.insert = {
    a = { fg = fg.invert, bg = palette.blue },
}

M.command = {
    a = { fg = fg.invert, bg = palette.green },
}

M.terminal = {
    a = { fg = fg.invert, bg = palette.cyan },
}

for _, mode in pairs(M) do
    mode.a.gui = "bold"
end

return M
