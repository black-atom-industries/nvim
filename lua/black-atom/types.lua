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

---@class BlackAtom.Colors.Syntax.Variable
---@field default string
---@field builtin string
---@field parameter string
---@field member string

---@class BlackAtom.Colors.Syntax.Constant
---@field default string
---@field builtin string

---@class BlackAtom.Colors.Syntax.String
---@field default string
---@field documentation string
---@field regexp string
---@field escape string

---@class BlackAtom.Colors.Syntax.Type
---@field default string
---@field builtin string

---@class BlackAtom.Colors.Syntax.Function
---@field default string
---@field builtin string
---@field method string

---@class BlackAtom.Colors.Syntax.Punctuation
---@field default string
---@field delimiter string
---@field bracket string
---@field special string

---@class BlackAtom.Colors.Syntax.Comment
---@field default string
---@field documentation string

---@class BlackAtom.Colors.Syntax.Markup.Heading
---@field default string
---@field h1 string
---@field h2 string
---@field h3 string
---@field h4 string
---@field h5 string
---@field h6 string

---@class BlackAtom.Colors.Syntax.Markup.Link
---@field default string
---@field label string
---@field url string

---@class BlackAtom.Colors.Syntax.Markup.Code
---@field default string
---@field inline string
---@field block string

---@class BlackAtom.Colors.Syntax.Markup.List
---@field default string
---@field checked string
---@field unchecked string

---@class BlackAtom.Colors.Syntax.Markup
---@field default string
---@field heading BlackAtom.Colors.Syntax.Markup.Heading
---@field strong string
---@field italic string
---@field strikethrough string
---@field underline string
---@field quote string
---@field math string
---@field link BlackAtom.Colors.Syntax.Markup.Link
---@field code BlackAtom.Colors.Syntax.Markup.Code
---@field list BlackAtom.Colors.Syntax.Markup.List

---@class BlackAtom.Colors.Syntax.Diff
---@field neutral string
---@field plus string
---@field minus string
---@field delta string

---@class BlackAtom.Colors.Syntax.Tag
---@field default string
---@field builtin string
---@field custom string
---@field attribute string
---@field delimiter string

---@class BlackAtom.Colors.Syntax
---@field variable BlackAtom.Colors.Syntax.Variable
---@field constant BlackAtom.Colors.Syntax.Constant
---@field module { default: string }
---@field string BlackAtom.Colors.Syntax.String
---@field boolean { default: string }
---@field number { default: string }
---@field type BlackAtom.Colors.Syntax.Type
---@field attribute { default: string, builtin: string }
---@field func BlackAtom.Colors.Syntax.Function
---@field constructor { default: string }
---@field operator { default: string }
---@field keyword { default: string }
---@field punctuation BlackAtom.Colors.Syntax.Punctuation
---@field comment BlackAtom.Colors.Syntax.Comment
---@field markup BlackAtom.Colors.Syntax.Markup
---@field diff BlackAtom.Colors.Syntax.Diff
---@field tag BlackAtom.Colors.Syntax.Tag

---@class BlackAtom.ThemeColors
---@field none                                                  "NONE"
---@field primaries                                             BlackAtom.Colors.Primaries
---@field palette                                               BlackAtom.Colors.Palette
---@field semantics                                             BlackAtom.Colors.Semantics
---@field syntax                                                BlackAtom.Colors.Syntax

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
