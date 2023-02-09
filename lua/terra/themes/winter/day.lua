local extend_defaults = require("terra.actions.highlights").extend_defaults

local M = {}

---@type TerraPrimaryColors
M.primary = {
    "#1a1e25",
    "#1f232b",
    "#232831",
    "#272d38",
    "#2E3440",
    "#3B4252",
    "#434C5E",
    "#4C566A",
    "#5B6A89",
    "#D8DEE9",
    "#E5E9F0",
    "#ECEFF4",
}

---@type TerraPaletteColors
M.palette = {
    black = M.primary[1],
    gray = M.primary[4],

    dark_red = "#d6582e",
    red = "#da714d",

    dark_green = "#5b9257",
    green = "#83c67f",

    dark_yellow = "#faa04c",
    yellow = "#F2C14E",

    dark_blue = "#6199d1",
    blue = "#7CA6CF",

    dark_magenta = "#B07BAC",
    magenta = "#BFA9D6",

    dark_cyan = "#5aaf7d",
    cyan = "#75bd93",

    light_gray = M.primary[9],
    white = M.primary[11],
}

---@type TerraSemanticColors
M.semantic = {
    bg = {
        dark = M.primary[9],
        main = M.palette.white,
        light = M.primary[7],
        active = M.primary[5],
        diff = {
            add = M.palette.green,
            delete = M.palette.red,
            change = M.palette.blue,
            text = M.palette.dark_blue,
        },
    },
    fg = {
        dark = M.primary[1],
        main = M.primary[2],
        light = M.primary[3],
        active = M.palette.yellow,
        neutral = M.primary[5],
        diff = {
            add = M.palette.green,
            delete = M.palette.red,
            change = M.palette.blue,
            text = M.palette.dark_blue,
        },
    },
}

---@return TerraColors
M.colors = function()
    return {
        none = "none",
        primary = M.primary,
        palette = M.palette,
        semantic = M.semantic,
    }
end

M.highlights = extend_defaults(M.colors(), {})

return M
