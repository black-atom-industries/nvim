---@class BlackAtomCore.HighlightDefinition
---@field fg?                                                   string
---@field bg?                                                   string
---@field sp?                                                   string
---@field bold?                                                 boolean
---@field italic?                                               boolean
---@field blend?                                                integer
---@field standout?                                             boolean
---@field underline?                                            boolean
---@field undercurl?                                            boolean
---@field underdouble?                                          boolean
---@field underdotted?                                          boolean
---@field underdashed?                                          boolean
---@field strikethrough?                                        boolean
---@field reverse?                                              boolean
---@field link?                                                 string

---@alias BlackAtomCore.Highlights                              table<string, BlackAtomCore.HighlightDefinition>>

---@alias BlackAtomCore.HighlightMapExtension.map               fun(colors: BlackAtomCore.ThemeColors, config: BlackAtomCore.Config): BlackAtomCore.Highlights

---@class BlackAtomCore.HighlightsSpec
---@field enabled?                                              boolean Default: true
---@field map                                                   BlackAtomCore.HighlightMapExtension.map

---@class BlackAtomCore.Colors.Primaries                        string[]

---@class BlackAtomCore.Colors.Palette
---@field black                                                 string
---@field gray                                                  string
---@field dark_red                                              string
---@field red                                                   string
---@field dark_green                                            string
---@field green                                                 string
---@field dark_yellow                                           string
---@field yellow                                                string
---@field dark_blue                                             string
---@field blue                                                  string
---@field dark_magenta                                          string
---@field magenta                                               string
---@field dark_cyan                                             string
---@field cyan                                                  string
---@field light_gray                                            string
---@field white                                                 string

---@class BlackAtomCore.Colors.Semantics.Git
---@field add                                                   string
---@field delete                                                string
---@field change                                                string
---@field text                                                  string

---@class BlackAtomCore.Colors.Semantics.Shades
---@field dark                                                  string
---@field main                                                  string
---@field light                                                 string
--
---@class BlackAtomCore.Colors.Semantics.Background.Match
---@field active                                                string Used for highlighting matches in the foreground for like visual selections
---@field passive                                               string Used for highlighting matches in the background like for illuminate

---@class BlackAtomCore.Colors.Semantics.Background
---@field primary                                               BlackAtomCore.Colors.Semantics.Shades
---@field secondary                                             BlackAtomCore.Colors.Semantics.Shades
---@field active                                                string
---@field match                                                 BlackAtomCore.Colors.Semantics.Background.Match
---@field diff                                                  BlackAtomCore.Colors.Semantics.Git

---@class BlackAtomCore.Colors.Semantics.Foreground
---@field primary                                               BlackAtomCore.Colors.Semantics.Shades
---@field secondary                                             BlackAtomCore.Colors.Semantics.Shades
---@field active                                                string
---@field neutral                                               string
---@field invert                                                string
---@field diff                                                  BlackAtomCore.Colors.Semantics.Git

---@class BlackAtomCore.Colors.Semantics
---@field bg                                                    BlackAtomCore.Colors.Semantics.Background
---@field fg                                                    BlackAtomCore.Colors.Semantics.Foreground

---@class BlackAtomCore.ThemeColors
---@field none                                                  "NONE"
---@field primaries                                             BlackAtomCore.Colors.Primaries
---@field palette                                               BlackAtomCore.Colors.Palette
---@field semantics                                             BlackAtomCore.Colors.Semantics

---@class BlackAtomCore.ThemeMeta
---@field key                                                   string (Unique) Theme Key
---@field label                                                 string Display name
---@field collection_key                                        "terra" Theme group to which the theme belongs
---@field collection_label                                      string Display name of the theme group
---@field appearance                                            "light" | "dark"
---@field icon                                                  string Icon to display in the UI
---@field status                                                "development" | "beta" | "release" Status of the theme

---@class BlackAtomCore.ThemeDefinition
---@field colors                                                BlackAtomCore.ThemeColors
---@field meta                                                  BlackAtomCore.ThemeMeta

---@class BlackAtomCore.Config.SyntaxStyle
---@field comments?                                             BlackAtomCore.HighlightDefinition
---@field keywords?                                             BlackAtomCore.HighlightDefinition
---@field functions?                                            BlackAtomCore.HighlightDefinition
---@field strings?                                              BlackAtomCore.HighlightDefinition
---@field variables?                                            BlackAtomCore.HighlightDefinition
---@field messages?                                             BlackAtomCore.HighlightDefinition

---@class BlackAtomCore.Config.Diagnostics
---@field undercurl?                                            boolean Wether to use undercurls for diagnostics (Default: false)
---@field background?                                           boolean Wether to use background color for virtual text (Default: false)

---@class BlackAtomCore.Config.Styles
---@field cmp_kind_color_mode?                                  "fg" | "bg" (Default: "fg")
---@field dark_sidebars?                                        boolean Wether to use dark sidebars (Default: true)
---@field transparency?                                         "full" | "partial" | "none" Transparency level (Default: "none")
---@field diagnostics?                                          BlackAtomCore.Config.Diagnostics Diagnostics related settings (Default: See Documentation)
---@field syntax?                                               BlackAtomCore.Config.SyntaxStyle Syntax styling options (Default: See Documentation)
---@field ending_tildes?                                        boolean Wether to show the end-of-buffer tildes (Default: false)

---@class BlackAtomCore.Config
---@field debug?                                                boolean Enables the Debug Mode (Enables various debug messages) (Default: false)
---@field theme?                                                string Currently set theme (Default: "terra_spring_night")
---@field term_colors?                                          boolean Wether to enable terminal colors (Default: true)
---@field styles?                                               BlackAtomCore.Config.Styles Various styles related settings (Default: See Documentation)
