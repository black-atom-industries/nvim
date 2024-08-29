---@class BlackAtom.API
local API = {}

---@param collection_key? BlackAtom.Theme.Collection.Key
---@param theme_key? BlackAtom.Theme.Key
---@return BlackAtom.Theme.Definition
local function load_theme_definition(collection_key, theme_key)
    local Config = require("black-atom.config"):get()

    theme_key = theme_key or Config.theme
    collection_key = collection_key or Config.collection

    local found, theme = pcall(require, "black-atom.themes." .. collection_key .. "." .. theme_key)
    if not found then
        error("Could not find theme: " .. collection_key .. "." .. theme_key .. ". Please check your arguments.")
    else
        return theme
    end
end

---Returns the currently set theme meta.
---If no arguments are provided, the currently set theme will be used.
---@param collection_key? BlackAtom.Theme.Collection.Key
---@param theme_key? BlackAtom.Theme.Key
---@return BlackAtom.Theme.Meta
function API:get_meta(collection_key, theme_key)
    return load_theme_definition(collection_key, theme_key).meta
end

---Returns the colors for the currently set theme and variant.
---If no arguments are provided, the currently set theme will be used.
---@param collection_key? BlackAtom.Theme.Collection.Key
---@param theme_key? BlackAtom.Theme.Key
---@return BlackAtom.Theme.Colors
function API:get_colors(collection_key, theme_key)
    return load_theme_definition(collection_key, theme_key).colors
end

---Returns the currently set theme.
---If no arguments are provided, the currently set theme will be used.
---@param collection_key? BlackAtom.Theme.Collection.Key
---@param theme_key? BlackAtom.Theme.Key
---@return BlackAtom.Theme.Definition
function API:get_theme(collection_key, theme_key)
    return load_theme_definition(collection_key, theme_key)
end

return API
