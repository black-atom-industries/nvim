local M = {}

---@type TerraColors.Primaries
M.primaries = {
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
