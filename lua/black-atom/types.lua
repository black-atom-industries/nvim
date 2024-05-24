-- vim: set colorcolumn=64:

---@class BlackAtom.HighlightDefinition
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

---@alias BlackAtom.Highlights                              table<string, BlackAtom.HighlightDefinition>>

---@alias BlackAtom.HighlightMapExtension.map               fun(colors: BlackAtom.ThemeColors, config: BlackAtom.Config): BlackAtom.Highlights

---@class BlackAtom.HighlightsSpec
---@field enabled?                                              boolean Default: true
---@field map                                                   BlackAtom.HighlightMapExtension.map

---@class BlackAtom.Colors.Primaries                        string[]

---@class BlackAtom.Colors.Palette
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

---@class BlackAtom.Colors.Semantics.Git
---@field add                                                   string
---@field delete                                                string
---@field change                                                string
---@field text                                                  string

---@class BlackAtom.Colors.Semantics.Shades
---@field dark                                                  string
---@field main                                                  string
---@field light                                                 string
--
---@class BlackAtom.Colors.Semantics.Background.Match
---@field active                                                string Used for highlighting matches in the foreground for like visual selections
---@field passive                                               string Used for highlighting matches in the background like for illuminate

---@class BlackAtom.Colors.Semantics.Background
---@field primary                                               BlackAtom.Colors.Semantics.Shades
---@field secondary                                             BlackAtom.Colors.Semantics.Shades
---@field active                                                string
---@field match                                                 BlackAtom.Colors.Semantics.Background.Match
---@field diff                                                  BlackAtom.Colors.Semantics.Git

---@class BlackAtom.Colors.Semantics.Foreground
---@field primary                                               BlackAtom.Colors.Semantics.Shades
---@field secondary                                             BlackAtom.Colors.Semantics.Shades
---@field active                                                string
---@field neutral                                               string
---@field invert                                                string
---@field diff                                                  BlackAtom.Colors.Semantics.Git

---@class BlackAtom.Colors.Semantics
---@field bg                                                    BlackAtom.Colors.Semantics.Background
---@field fg                                                    BlackAtom.Colors.Semantics.Foreground

---@class BlackAtom.ThemeColors
---@field none                                                  "NONE"
---@field primaries                                             BlackAtom.Colors.Primaries
---@field palette                                               BlackAtom.Colors.Palette
---@field semantics                                             BlackAtom.Colors.Semantics

---@class BlackAtom.ThemeMeta
---@field key                                                   string (Unique) Theme Key
---@field label                                                 string Display name
---@field collection_key                                        "black_atom" | "terra" Theme group to which the theme belongs
---@field collection_label                                      string Display name of the theme group
---@field appearance                                            "light" | "dark"
---@field icon                                                  string Icon to display in the UI
---@field status                                                "development" | "beta" | "release" Status of the theme
---@field module_path                                           string Path to the theme module

---@class BlackAtom.ThemeDefinition
---@field colors                                                BlackAtom.ThemeColors
---@field meta                                                  BlackAtom.ThemeMeta

---@class BlackAtom.Config.SyntaxStyle
---@field comments?                                             BlackAtom.HighlightDefinition
---@field keywords?                                             BlackAtom.HighlightDefinition
---@field functions?                                            BlackAtom.HighlightDefinition
---@field strings?                                              BlackAtom.HighlightDefinition
---@field variables?                                            BlackAtom.HighlightDefinition
---@field messages?                                             BlackAtom.HighlightDefinition

---@class BlackAtom.Config.Diagnostics
---@field undercurl?                                            boolean Wether to use undercurls for diagnostics (Default: false)
---@field background?                                           boolean Wether to use background color for virtual text (Default: false)

---@class BlackAtom.Config.Styles
---@field cmp_kind_color_mode?                                  "fg" | "bg" (Default: "fg")
---@field dark_sidebars?                                        boolean Wether to use dark sidebars (Default: true)
---@field transparency?                                         "full" | "partial" | "none" Transparency level (Default: "none")
---@field diagnostics?                                          BlackAtom.Config.Diagnostics Diagnostics related settings (Default: See Documentation)
---@field syntax?                                               BlackAtom.Config.SyntaxStyle Syntax styling options (Default: See Documentation)
---@field ending_tildes?                                        boolean Wether to show the end-of-buffer tildes (Default: false)

---@class BlackAtom.Config
---@field debug?                                                boolean Enables the Debug Mode (Enables various debug messages) (Default: false)
---@field theme?                                                string Currently set theme (Default: "terra_spring_night")
---@field term_colors?                                          boolean Wether to enable terminal colors (Default: true)
---@field styles?                                               BlackAtom.Config.Styles Various styles related settings (Default: See Documentation)
