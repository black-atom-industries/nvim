local M = {}

---@type TerraColors.Primaries
M.primaries = {
    -- Lows
    "#192125",
    "#1d272c",
    "#212c31",
    "#24333a",

    -- Mids
    "#475e6a",
    "#516c7a",
    "#5b7988",
    "#7393a3",

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

    dark_red = "#d9663f",
    red = "#e5744e",

    dark_green = "#4ca144",
    green = "#83C57D",

    dark_yellow = "#ffa564",
    yellow = "#ffcc69",

    dark_blue = "#8fb7ef",
    blue = "#78cfec",

    dark_magenta = "#c77bb9",
    magenta = "#bf9de2",

    dark_cyan = "#40bfa0",
    cyan = "#6ce0c4",

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
        main = M.primaries[10],
        light = M.primaries[12],
        active = M.palette.cyan,
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
