---@class BlackAtom.API
local API = {}

---@param collection_key? BlackAtom.Theme.Collection.Key
---@param theme_key? BlackAtom.Theme.Key
---@return BlackAtom.Theme.Definition | nil
local function load_theme_definition(collection_key, theme_key)
    local Config = require("black-atom.config"):get()

    theme_key = theme_key or Config.theme
    collection_key = collection_key or Config.collection

    local found, theme = pcall(require, "black-atom.themes." .. collection_key .. "." .. theme_key)
    if not found then
        return nil
    else
        return theme
    end
end

---Returns the currently set theme meta.
---If no arguments are provided, the currently set theme will be used.
---@param collection_key? BlackAtom.Theme.Collection.Key
---@param theme_key? BlackAtom.Theme.Key
---@return BlackAtom.Theme.Meta | nil
function API:get_meta(collection_key, theme_key)
    local theme = load_theme_definition(collection_key, theme_key)

    if theme then
        return theme.meta
    else
        return nil
    end
end

---Returns the colors for the currently set theme and variant.
---If no arguments are provided, the currently set theme will be used.
---@param collection_key? BlackAtom.Theme.Collection.Key
---@param theme_key? BlackAtom.Theme.Key
---@return BlackAtom.Theme.Colors | nil
function API:get_colors(collection_key, theme_key)
    local theme = load_theme_definition(collection_key, theme_key)

    if theme then
        return theme.colors
    else
        return nil
    end
end

---Returns the currently set theme.
---If no arguments are provided, the currently set theme will be used.
---@param collection_key? BlackAtom.Theme.Collection.Key
---@param theme_key? BlackAtom.Theme.Key
---@return BlackAtom.Theme.Definition | nil
function API:get_theme(collection_key, theme_key)
    return load_theme_definition(collection_key, theme_key)
end

return API
