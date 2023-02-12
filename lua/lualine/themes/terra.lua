local c = require("terra.colors")

---@doc https://github.com/nvim-lualine/lualine.nvim/wiki/Writing-a-theme
local colors = {
    bg = c.semantics.bg.dark,
    fg = c.semantics.fg.dark,
    red = c.palette.red,
    green = c.palette.green,
    yellow = c.palette.yellow,
    blue = c.palette.blue,
    magenta = c.palette.magenta,
    cyan = c.palette.cyan,
    gray = c.palette.gray,
}

return {
    inactive = {
        a = { fg = c.semantics.fg.dark, bg = colors.bg, gui = "bold" },
        b = { fg = c.semantics.fg.dark, bg = colors.bg },
        c = { fg = c.semantics.fg.dark, bg = colors.bg },
    },
    normal = {
        a = { fg = colors.bg, bg = c.semantics.fg.active, gui = "bold" },
        b = { fg = c.semantics.fg.main, bg = c.semantics.bg.dark },
        c = { fg = c.semantics.fg.dark, bg = c.semantics.bg.main },
    },
    visual = { a = { fg = colors.bg, bg = colors.magenta, gui = "bold" } },
    replace = { a = { fg = colors.bg, bg = colors.red, gui = "bold" } },
    insert = { a = { fg = colors.bg, bg = colors.blue, gui = "bold" } },
    command = { a = { fg = colors.bg, bg = colors.yellow, gui = "bold" } },
    terminal = { a = { fg = colors.bg, bg = colors.cyan, gui = "bold" } },
}
