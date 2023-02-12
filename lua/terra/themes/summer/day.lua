local M = {}

---@type TerraColors.Primaries
M.primaries = {
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

---@type TerraColors.Palette
M.palette = {
    black = M.primaries[1],
    gray = M.primaries[4],

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

    light_gray = M.primaries[9],
    white = M.primaries[11],
}

---@type TerraColors.Semantics
M.semantics = {
    bg = {
        dark = M.primaries[9],
        main = M.palette.white,
        light = M.primaries[7],
        active = M.primaries[5],
        diff = {
            add = M.palette.green,
            delete = M.palette.red,
            change = M.palette.blue,
            text = M.palette.dark_blue,
        },
    },
    fg = {
        dark = M.primaries[1],
        main = M.primaries[2],
        light = M.primaries[3],
        active = M.palette.yellow,
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
