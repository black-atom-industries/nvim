local M = {}

---Converts a Hex String to RGB Color String
---@param hex_str string
---@return table
function M.hexToRgb(hex_str)
    local hex = "[abcdef0-9][abcdef0-9]"
    local pat = "^#(" .. hex .. ")(" .. hex .. ")(" .. hex .. ")$"

    hex_str = string.lower(hex_str)

    assert(
        string.find(hex_str, pat) ~= nil,
        "hex_to_rgb: invalid hex_str: " .. tostring(hex_str)
    )

    local r, g, b = string.match(hex_str, pat)
    return { tonumber(r, 16), tonumber(g, 16), tonumber(b, 16) }
end

---@param fg string foreground color
---@param bg string background color
---@param alpha number number between 0 and 1. 0 results in bg, 1 results in fg
---@return string
function M.blend(fg, bg, alpha)
    local background = M.hexToRgb(bg)
    local foreground = M.hexToRgb(fg)

    local blendChannel = function(i)
        local ret = (alpha * foreground[i] + ((1 - alpha) * background[i]))
        return math.floor(math.min(math.max(0, ret), 255) + 0.5)
    end

    return string.format(
        "#%02X%02X%02X",
        blendChannel(1),
        blendChannel(2),
        blendChannel(3)
    )
end

local default_bg = "#000000"
local default_fg = "#ffffff"

-- Darken a color by blending it with black or a custom color
---@param hex_string string
---@param amount number
---@param bg? string
---@return string
function M.darken(hex_string, amount, bg)
    return M.blend(hex_string, bg or default_bg, math.abs(amount))
end

-- Lighten a color by blending it with white or a custom color
---@param hex_string string
---@param amount number
---@param fg? string
---@return string
function M.lighten(hex_string, amount, fg)
    return M.blend(hex_string, fg or default_fg, math.abs(amount))
end

return M
