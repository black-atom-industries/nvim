local M = {}

---Capitzlize first character of a string
---@param str string
---@return string
M.capitalize = function(str)
	return string.gsub(" " .. str, "%W%l", string.upper):sub(2)
end

return M
