
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
---@alias TerraPrimaryColors                      table<number, string>

---@class TerraPaletteColors                      table<number, string>
---@field black                                   string
---@field gray                                    string
---@field dark_red                                string
---@field red                                     string
---@field dark_green                              string
---@field green                                   string
---@field dark_yellow                             string
---@field yellow                                  string
---@field dark_blue                               string
---@field blue                                    string
---@field dark_magenta                            string
---@field magenta                                 string
---@field dark_cyan                               string
---@field cyan                                    string
---@field light_gray                              string
---@field white                                   string

---@class TerraSemantics.Background
---@field dark                                    string
---@field main                                    string
---@field light                                   string

---@class TerraSemantics
---@field bg                                      TerraSemantics.Background

---@class TerraColors
---@field primary                                 Primary
---@field palette                                 Palette
---@field semantic                                TerraSemantics
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
---@field darker                                  boolean
---@field undercurl                               boolean
---@field background                              boolean

---@class TerraConfig
---@field season                                  Season
---@field time                                    Time
---@field icons                                   table
---@field select_season                           string
---@field transparent                             boolean
---@field term_colors                             boolean
---@field ending_tildes                           boolean
---@field cmp_itemkind_reverse                    boolean
---@field code_style                              TerraConfig.CodeStyle
---@field colors                                  table<string, string>
---@field highlights                              table<string, string>
---@field diagnostics                             TerraConfig.Diagnostics
