----------------------------------------Highlight
---@alias HighlightGroupName                      string

---@alias Fg                                      string
---@alias Bg                                      string
---@alias Sp                                      string
---@alias Bold                                    boolean
---@alias Italic                                  boolean
---@alias Blend                                   integer
---@alias Standout                                boolean
---@alias Underline                               boolean
---@alias Undercurl                               boolean
---@alias Underdouble                             boolean
---@alias Underdotted                             boolean
---@alias Underdashed                             boolean
---@alias Strikethrough                           boolean
---@alias Reverse                                 boolean
---@alias Link                                    string

---Documentation - :h nvim_set_hl
---@class HighlightDefinitionMap
---@field fg                                      Fg
---@field bg                                      Bg
---@field sp                                      Sp
---@field bold                                    Bold
---@field italic                                  Italic
---@field blend                                   Blend
---@field standout                                Standout
---@field underline                               Underline
---@field undercurl                               Undercurl
---@field underdouble                             Underdouble
---@field underdotted                             Underdotted
---@field underdashed                             Underdashed
---@field strikethrough                           Strikethrough
---@field reverse                                 Reverse
---@field link                                    Link

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

---@class CodeStyleFormat
---@field bold                                    Bold
---@field italic                                  Italic
---@field blend                                   Blend
---@field standout                                Standout
---@field underline                               Underline
---@field undercurl                               Undercurl
---@field underdouble                             Underdouble
---@field underdotted                             Underdotted
---@field underdashed                             Underdashed

---@class TerraConfig.CodeStyle
---@field comments                                CodeStyleFormat
---@field keywords                                CodeStyleFormat
---@field functions                               CodeStyleFormat
---@field strings                                 CodeStyleFormat
---@field variables                               CodeStyleFormat

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
