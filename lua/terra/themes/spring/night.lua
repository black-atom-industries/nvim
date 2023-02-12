local extend_defaults = require("terra.actions.highlights").extend_defaults

local M = {}

---@type TerraPrimaryColors
M.primary = {
    -- Lows
    "#18251f",
    "#1c2a23",
    "#21322a",
    "#293e34",

    -- Mids
    "#334d3f",
    "#486c59",
    "#5c8972",
    "#75a48c",

    -- Highs
    "#d3cec5",
    "#dfdbd3",
    "#e9e6e1",
    "#f4f3f1",
}

---@type TerraPaletteColors
M.palette = {
    black = M.primary[4],
    gray = M.primary[5],

    dark_red = "#d6582e",
    red = "#da714d",

    dark_green = "#639f5f",
    green = "#83C57D",

    dark_yellow = "#ffa552",
    yellow = "#f6cb62",

    dark_blue = "#8fb7ef",
    blue = "#78cfec",

    dark_magenta = "#bb8eb8",
    magenta = "#c5aadf",

    dark_cyan = "#4ebb7b",
    cyan = "#75d79d",

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
        dark = M.primary[7],
        main = M.primary[11],
        light = M.primary[12],
        active = M.palette.green,
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
