local c = require("terra.colors")

local colors = {
    bg = c.semantic.bg1,
    fg = c.semantic.fg,
    red = c.palette.red,
    green = c.palette.green,
    yellow = c.palette.yellow,
    blue = c.palette.blue,
    purple = c.palette.purple,
    cyan = c.palette.cyan,
    gray = c.palette.grey,
}

local terra = {
    inactive = {
        a = { fg = colors.gray, bg = colors.bg, gui = "bold" },
        b = { fg = colors.gray, bg = colors.bg },
        c = { fg = colors.gray, bg = colors.bg },
    },
    normal = {
        a = { fg = colors.bg, bg = colors.green, gui = "bold" },
        b = { fg = colors.fg, bg = c.semantic.bg3 },
        c = { fg = colors.fg, bg = c.semantic.bg1 },
    },
    visual = { a = { fg = colors.bg, bg = colors.purple, gui = "bold" } },
    replace = { a = { fg = colors.bg, bg = colors.red, gui = "bold" } },
    insert = { a = { fg = colors.bg, bg = colors.blue, gui = "bold" } },
    command = { a = { fg = colors.bg, bg = colors.yellow, gui = "bold" } },
    terminal = { a = { fg = colors.bg, bg = colors.cyan, gui = "bold" } },
}
return terra
