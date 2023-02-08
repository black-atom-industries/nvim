local extend_defaults = require("terra.actions.highlights").extend_defaults

local M = {}

---@type TerraPrimaryColors
M.primary = {
    "#141F19",
    "#17251E",
    "#1B2C24",
    "#284336",
    "#4E7E66",
    "#5D9579",
    "#71A78C",
    "#89B69F",
    "#A1C4B2",
    "#B8D3C6",
    "#D0E2D9",
    "#E7F0EC",
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
        dark = M.primary[1],
        main = M.primary[2],
        light = M.primary[3],
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

-- QUESTION: What is this?
M.highlights = extend_defaults(M.colors(), {})

return M
