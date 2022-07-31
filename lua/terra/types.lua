---@alias Season "spring" | "summer" | "fall" | "winter"
---@alias Time "day" | "night"
---@alias CodeStyleFormat HighlightFormat

---@class TerraConfig.CodeStyle
---@field comments CodeStyleFormat
---@field keywords CodeStyleFormat
---@field functions CodeStyleFormat
---@field strings CodeStyleFormat
---@field variables CodeStyleFormat

---@class TerraConfig.Diagnostics
---@field darker boolean
---@field undercurl boolean
---@field background boolean

---@class TerraConfig
---@field season Season
---@field time Time
---@field icons table
---@field select_season string
---@field transparent boolean
---@field term_colors boolean
---@field ending_tildes boolean
---@field cmp_itemkind_reverse boolean
---@field code_style TerraConfig.CodeStyle
---@field colors table<string, string>
---@field highlights table<string, string>
---@field diagnostics TerraConfig.Diagnostics

---@class Colors
---@field primary Primary
---@field palette Palette
---@field semantic Semantic
---@field none string

---@alias HighlightGroupName string

---@alias HighlightFormat  "bold" | "underline" | "underlineline" | "undercurl" | "underdot" | "underdash" | "strikethrough" | "reverse" | "inverse" | "italic" | "standout" | "nocombine" | "NONE"

---@class HighlightGroupSettings
---@field fg string
---@field bg string
---@field sp string
---@field fmt HighlightFormat

---@alias HighlightGroup table<HighlightGroupName, HighlightGroupSettings>
