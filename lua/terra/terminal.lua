local M = {}

function M.setup()
    local config = vim.g.terra_config

    if not config.term_colors then
        return
    end

    local colors = require("terra.colors")

    vim.g.terminal_color_0 = colors.palette.gray
    vim.g.terminal_color_1 = colors.palette.red
    vim.g.terminal_color_2 = colors.palette.green
    vim.g.terminal_color_3 = colors.palette.yellow
    vim.g.terminal_color_4 = colors.palette.blue
    vim.g.terminal_color_5 = colors.palette.purple
    vim.g.terminal_color_6 = colors.palette.cyan
    vim.g.terminal_color_7 = colors.palette.light_grey
    vim.g.terminal_color_8 = colors.palette.black
    vim.g.terminal_color_9 = colors.palette.red
    vim.g.terminal_color_10 = colors.palette.green
    vim.g.terminal_color_11 = colors.palette.yellow
    vim.g.terminal_color_12 = colors.palette.blue
    vim.g.terminal_color_13 = colors.palette.purple
    vim.g.terminal_color_14 = colors.palette.cyan
    vim.g.terminal_color_15 = colors.palette.white
end

return M
