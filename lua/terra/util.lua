local util = {}

-- TODO: Remove these
util.bg = "#000000"
util.fg = "#ffffff"

local function hexToRgb(hex_str)
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
function util.blend(fg, bg, alpha)
	bg = hexToRgb(bg)
	fg = hexToRgb(fg)

	local blendChannel = function(i)
		local ret = (alpha * fg[i] + ((1 - alpha) * bg[i]))
		return math.floor(math.min(math.max(0, ret), 255) + 0.5)
	end

	return string.format(
		"#%02X%02X%02X",
		blendChannel(1),
		blendChannel(2),
		blendChannel(3)
	)
end

-- Used in highlights.lua
function util.darken(hex, amount, bg)
	return util.blend(hex, bg or util.bg, math.abs(amount))
end

-- Used in highlights.lua
function util.lighten(hex, amount, fg)
	return util.blend(hex, fg or util.fg, math.abs(amount))
end

-- TODO: Put in dedicated lib file. I don't want general utils separated from "color-utils"
-- TODO: Replace all usages of `notify` with this function
---Notification which conditionally calls `nvim-notify` when available
---@param message string Notification message
---@param level? string|number Log level. See vim.log.levels
---@param opts? table nvim-notify options. See notify.Options
---@return nil
function util.notify(message, level, opts)
	local nvim_notify_ok, nvim_notify = pcall(require, "notify")

	if nvim_notify_ok then
		nvim_notify(message, level, opts)
	else
		vim.notify(message, level, opts)
	end
end

return util
