local M = {}

---Capitzlize first character of a string
---@param str string
---@return string
function M.capitalize(str)
    return string.gsub(" " .. str, "%W%l", string.upper):sub(2)
end

---Calls a function conditionally
---@param condition boolean
---@param cb_true function
---@param cb_false? function
---@return nil
function M.ccall(condition, cb_true, cb_false)
    if condition then
        cb_true()
    else
        if cb_false then
            cb_false()
        end
    end
end

return M
