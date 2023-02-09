local extend_defaults = require("terra.actions.highlights").extend_defaults

local M = {}

---@type TerraPrimaryColors
M.primary = {
    "#121821",
    "#151D28",
    "#19222E",
    "#1D2735",
    "#3E5574",
    "#506D95",
    "#6A87AF",
    "#8BA1C1",
    "#9CAFC9",
    "#ACBCD2",
    "#CDD7E4",
    "#DEE4ED",
}

---@type TerraPaletteColors
M.palette = {
    black = M.primary[4],
    gray = M.primary[5],

    dark_red = "#D5552A",
    red = "#D96E4A",

    dark_green = "#5B8F56",
    green = "#83C57D",

    dark_yellow = "#F99B48",
    yellow = "#F1BF4B",

    dark_blue = "#6299D0",
    blue = "#79A3CD",

    dark_magenta = "#AF79AB",
    magenta = "#BFA9D6",

    dark_cyan = "#56AE89",
    cyan = "#75BD93",

    light_gray = M.primary[9],
    white = M.primary[11],
}

---@type TerraSemanticColors
M.semantic = {
    bg = {
        dark = M.primary[1],
        main = M.primary[2],
        light = M.primary[3],
        active = M.primary[5],
        diff = {
            add = M.palette.green,
            delete = M.palette.red,
            change = M.palette.blue,
            text = M.palette.dark_blue,
        },
    },
    fg = {
        dark = M.primary[9],
        main = M.primary[10],
        light = M.primary[11],
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
