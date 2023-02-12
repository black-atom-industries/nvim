local M = {}

---@type TerraColors.Primaries
M.primaries = {
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

---@type TerraColors.Palette
M.palette = {
    black = M.primaries[4],
    gray = M.primaries[5],

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

    light_gray = M.primaries[9],
    white = M.primaries[11],
}

---@type TerraColors.Semantics
M.semantics = {
    bg = {
        dark = M.primaries[1],
        main = M.primaries[2],
        light = M.primaries[3],
        active = M.primaries[5],
        diff = {
            add = M.palette.green,
            delete = M.palette.red,
            change = M.palette.blue,
            text = M.palette.dark_blue,
        },
    },
    fg = {
        dark = M.primaries[7],
        main = M.primaries[11],
        light = M.primaries[12],
        active = M.palette.green,
        neutral = M.primaries[5],
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
        primaries = M.primaries,
        palette = M.palette,
        semantics = M.semantics,
    }
end

return M
