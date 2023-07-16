local colors = require("terra.colors")

local fg = colors.semantics.fg
local bg = colors.semantics.bg
local palette = colors.palette

return {
    inactive = {
        a = { fg = fg.secondary.dark, bg = bg.secondary.dark, gui = "bold" },
        b = { fg = fg.secondary.dark, bg = bg.secondary.dark },
        c = { fg = fg.secondary.dark, bg = bg.secondary.dark },
    },
    normal = {
        a = { fg = fg.invert, bg = fg.active, gui = "bold" },
        b = { fg = fg.secondary.dark, bg = bg.primary.dark },
        c = { fg = fg.secondary.dark, bg = bg.primary.main },
    },
    visual = { a = { fg = fg.invert, bg = palette.magenta, gui = "bold" } },
    replace = { a = { fg = fg.invert, bg = palette.red, gui = "bold" } },
    insert = { a = { fg = fg.invert, bg = palette.blue, gui = "bold" } },
    command = { a = { fg = fg.invert, bg = palette.yellow, gui = "bold" } },
    terminal = { a = { fg = fg.invert, bg = palette.cyan, gui = "bold" } },
}
