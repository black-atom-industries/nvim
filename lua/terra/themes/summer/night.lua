local M = {}

---@type TerraColors.Primaries
M.primaries = {
    -- Lows
    "#191e25",
    "#1d232b",
    "#212831",
    "#252d38",

    -- Mids
    "#3E5574",
    "#506D95",
    "#6A87AF",
    "#8BA1C1",

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

    dark_red = "#D5552A",
    red = "#D96E4A",

    dark_green = "#5B8F56",
    green = "#83C57D",

    dark_yellow = "#F99B48",
    yellow = "#F1BF4B",

    dark_blue = "#8fb7ef",
    blue = "#78cfec",

    dark_magenta = "#AF79AB",
    magenta = "#BFA9D6",

    dark_cyan = "#56AE89",
    cyan = "#75BD93",

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
