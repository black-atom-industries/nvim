----------------------------------------Highlight
---@class HighlightDefinitionMap
---@field fg                                      string
---@field bg                                      string
---@field sp                                      string
---@field bold                                    boolean
---@field italic                                  boolean
---@field blend                                   integer
---@field standout                                boolean
---@field underline                               boolean 
---@field undercurl                               boolean
---@field underdouble                             boolean
---@field underdotted                             boolean
---@field underdashed                             boolean
---@field strikethrough                           boolean
---@field reverse                                 boolean
---@field link                                    string

---@alias HighlightGroupName                      string
---@alias HighlightGroup                          table<HighlightGroupName, HighlightDefinitionMap>

-------------------------------------------Colors
---@class Colors
---@field primary                                 Primary
---@field palette                                 Palette
---@field semantic                                Semantic
---@field none                                    string

-------------------------------------------Config
---@alias Season                                  "spring" | "summer" | "fall" | "winter"
---@alias Time                                    "day" | "night"

---@class TerraConfig.CodeStyle
---@field comments                                HighlightDefinitionMap
---@field keywords                                HighlightDefinitionMap
---@field functions                               HighlightDefinitionMap
---@field strings                                 HighlightDefinitionMap
---@field variables                               HighlightDefinitionMap

---@class TerraConfig.Diagnostics
---@field darker                                  boolean Wether to use darker colors for diagnostics
---@field undercurl                               boolean Wether to use undercurls for diagnostics
---@field background                              boolean Wether to use background color for virtual text

---@class TerraConfig
---@field season                                  Season Currently set season
---@field time                                    Time Current set time of day
---@field icons                                   table Icons associated with each season
---@field select_time                             string Normal mode mapping string for triggering the `time` selection
---@field select_season                           string Normal mode mapping string for triggering the `season` selection
---@field transparent                             boolean Wether to render the background color
---@field term_colors                             boolean Wether to enable terminal colors
---@field ending_tildes                           boolean Wether to show the end-of-buffer tildes
---@field cmp_itemkind_reverse                    boolean Wether to reverse item kind highlights in cmp menu
---@field code_style                              TerraConfig.CodeStyle Code styling options
---@field colors                                  table<string, string> Override default colors
---@field highlights                              table<string, string> Override highlight colors
---@field diagnostics                             TerraConfig.Diagnostics Diagnostics related settings
