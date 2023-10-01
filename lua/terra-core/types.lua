----------------------------------------Highlight

---@class TerraHighlightDefinition
---@field fg?                                     string
---@field bg?                                     string
---@field sp?                                     string
---@field bold?                                   boolean
---@field italic?                                 boolean
---@field blend?                                  integer
---@field standout?                               boolean
---@field underline?                              boolean
---@field undercurl?                              boolean
---@field underdouble?                            boolean
---@field underdotted?                            boolean
---@field underdashed?                            boolean
---@field strikethrough?                          boolean
---@field reverse?                                boolean
---@field link?                                   string

---@alias TerraHighlights                      table<string, TerraHighlightDefinition>>

-------------------------------------------TerraHighlightMapExtension

---Function to setup highlight groups for a plugin. It receives the colors and config as arguments.
---@alias TerraHighlightMapExtension.map          fun(colors: TerraColors, config: TerraConfig): TerraHighlights

---@class TerraHighlightsSpec
---@field enabled?                                boolean Default: true
---@field map                                     TerraHighlightMapExtension.map

-------------------------------------------Colors

---@class TerraColors.Debug
---@field neon_pink                               string
---@field electric_lime                           string
---@field vivid_cyan                              string

---@class TerraColors.Primaries                   string[]

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

---@class TerraColors.Semantics.Shades
---@field dark                                    string
---@field main                                    string
---@field light                                   string
--
---@class TerraColors.Semantics.Background.Match
---@field active                                  string Used for highlighting matches in the foreground for like visual selections
---@field passive                                 string Used for highlighting matches in the background like for illuminate

---@class TerraColors.Semantics.Background
---@field primary                                 TerraColors.Semantics.Shades
---@field secondary                               TerraColors.Semantics.Shades
---@field active                                  string
---@field match                                   TerraColors.Semantics.Background.Match
---@field diff                                    TerraColors.Semantics.Git

---@class TerraColors.Semantics.Foreground
---@field primary                                 TerraColors.Semantics.Shades
---@field secondary                               TerraColors.Semantics.Shades
---@field active                                  string
---@field neutral                                 string
---@field invert                                  string
---@field diff                                    TerraColors.Semantics.Git

---@class TerraColors.Semantics
---@field bg                                      TerraColors.Semantics.Background
---@field fg                                      TerraColors.Semantics.Foreground

---@class TerraColors
---@field none                                    string
---@field debug                                   TerraColors.Debug
---@field primaries                               TerraColors.Primaries
---@field palette                                 TerraColors.Palette
---@field semantics                               TerraColors.Semantics

-------------------------------------------Config

---@alias TerraConfig.Variant                    "day" | "night"
---@alias TerraConfig.Theme                      "spring" | "summer" | "fall" | "winter" | "control" | "kurzgesagt"

---@class TerraConfig.CodeStyle
---@field comments?                               TerraHighlightDefinition
---@field keywords?                               TerraHighlightDefinition
---@field functions?                              TerraHighlightDefinition
---@field strings?                                TerraHighlightDefinition
---@field variables?                              TerraHighlightDefinition
---@field messages?                               TerraHighlightDefinition Affects: `WarningMsg`, `ErrorMsg`, `MoreMsg`, `ModeMsg`

---@class TerraConfig.Diagnostics
---@field darker                                  boolean Wether to use darker colors for diagnostics (Default: false)
---@field undercurl                               boolean Wether to use undercurls for diagnostics (Default: false)
---@field background                              boolean Wether to use background color for virtual text (Default: false)

---@class TerraConfig
---@field loaded?                                 boolean Wether the config has been loaded. (Default: false)
---@field debug?                                  boolean Enables the Debug Mode (Enables various debug messages) (Default: false)
---@field theme?                                  TerraConfig.Theme Currently set theme (Default: "spring")
---@field variant?                                TerraConfig.Variant Currently set variant (Default: "night")
---@field icons?                                  table<TerraConfig.Theme, string> Icons associated with each theme
---@field transparent?                            boolean Wether to render the background color (Default: false)
---@field dim_inactive_panes?                     boolean Wether to dim inactive panes (Default: false)
---@field term_colors?                            boolean Wether to enable terminal colors (Default: true)
---@field ending_tildes?                          boolean Wether to show the end-of-buffer tildes (Default: false)
---@field code_style?                             TerraConfig.CodeStyle Code styling options (Default: See Documentation)
---@field colors?                                 table<string, string> Override default colors (Default: {})
---@field diagnostics?                            TerraConfig.Diagnostics Diagnostics related settings (Default: See Documentation)
