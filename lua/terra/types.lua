----------------------------------------Highlight

---@class TerraHighlightDefinitionMap
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

---@alias TerraHighlightGroupName                 string
---@alias TerraHighlightGroup                     table<TerraHighlightGroupName, TerraHighlightDefinitionMap>
---@alias TerraHighlightsMap                      table<string, table<string, TerraHighlightDefinitionMap>>

-------------------------------------------Colors

---@class TerraColors.Primaries                      string[]

---@class TerraColors.Palette
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

---@class TerraColors.Semantics.Git
---@field add                                     string
---@field delete                                  string
---@field change                                  string
---@field text                                    string

---@class TerraColors.Semantics.Background
---@field dark                                    string
---@field main                                    string
---@field light                                   string
---@field active                                  string
---@field diff                                    TerraColors.Semantics.Git

---@class TerraColors.Semantics.Foreground
---@field dark                                    string
---@field main                                    string
---@field light                                   string
---@field active                                  string
---@field neutral                                 string
---@field diff                                    TerraColors.Semantics.Git

---@class TerraColors.Semantics
---@field bg                                      TerraColors.Semantics.Background
---@field fg                                      TerraColors.Semantics.Foreground

---@class TerraColors
---@field none                                    string
---@field primary                                 TerraColors.Primaries
---@field palette                                 TerraColors.Palette
---@field semantic                                TerraColors.Semantics

-------------------------------------------Config

---@alias TerraConfig.Season                      "spring" | "summer" | "fall" | "winter"
---@alias TerraConfig.Time                        "day" | "night"

---@class TerraConfig.CodeStyle
---@field comments                                TerraHighlightDefinitionMap
---@field keywords                                TerraHighlightDefinitionMap
---@field functions                               TerraHighlightDefinitionMap
---@field strings                                 TerraHighlightDefinitionMap
---@field variables                               TerraHighlightDefinitionMap

---@class TerraConfig.Diagnostics
---@field darker                                  boolean Wether to use darker colors for diagnostics
---@field undercurl                               boolean Wether to use undercurls for diagnostics
---@field background                              boolean Wether to use background color for virtual text

---@class TerraConfig
---@field season                                  TerraConfig.Season Currently set season
---@field time                                    TerraConfig.Time Current set time of day
---@field icons                                   table Icons associated with each season
---@field select_time                             string Normal mode mapping string for triggering the `time` selection
---@field select_season                           string Normal mode mapping string for triggering the `season` selection
---@field transparent                             boolean Wether to render the background color
---@field term_colors                             boolean Wether to enable terminal colors
---@field ending_tildes                           boolean Wether to show the end-of-buffer tildes
---@field cmp_itemkind_reverse                    boolean Wether to reverse item kind highlights in cmp menu
---@field code_style                              TerraConfig.CodeStyle Code styling options
---@field colors                                  table<string, string> Override default colors
---@field diagnostics                             TerraConfig.Diagnostics Diagnostics related settings
