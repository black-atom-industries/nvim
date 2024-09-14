-- vim: set colorcolumn=64:

---@alias BlackAtom.Theme.Key
---| "black-atom-engineering"
---| "black-atom-operations"
---| "black-atom-medical"
---| "black-atom-research"
---| "black-atom-jpn-koyo-yoru"
---| "black-atom-jpn-koyo-hiru"
---| "terra-spring-day"
---| "terra-spring-night"
---| "terra-fall-day"
---| "terra-fall-night"
---| "terra-summer-day"
---| "terra-summer-night"
---| "terra-winter-day"
---| "terra-winter-night"

---@alias BlackAtom.Theme.Collection.Key
---| "default"
---| "terra"
---| "jpn"

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

---@alias BlackAtom.Highlights                                  table<string, BlackAtom.HighlightDefinition>>

---@alias BlackAtom.HighlightMapExtension.map                   fun(colors: BlackAtom.Theme.Colors, config. BlackAtom.Config): BlackAtom.Highlights

---@class BlackAtom.HighlightsSpec
---@field enabled?                                              boolean Default: true
---@field map                                                   BlackAtom.HighlightMapExtension.map

---@class BlackAtom.Theme.Primaries                             string[]

---@class BlackAtom.Theme.Palette
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

---@class BlackAtom.Theme.UI.Git
---@field add                                                   string
---@field delete                                                string
---@field change                                                string
---@field text                                                  string

---@class BlackAtom.Theme.UI.Shades
---@field dark                                                  string
---@field main                                                  string
---@field light                                                 string
--
---@class BlackAtom.Theme.UI.Background.Match
---@field active                                                string Used for highlighting matches in the foreground for like visual selections
---@field passive                                               string Used for highlighting matches in the background like for illuminate

---@class BlackAtom.Theme.UI.Background
---@field primary                                               BlackAtom.Theme.UI.Shades
---@field secondary                                             BlackAtom.Theme.UI.Shades
---@field active                                                string
---@field match                                                 BlackAtom.Theme.UI.Background.Match
---@field diff                                                  BlackAtom.Theme.UI.Git

---@class BlackAtom.Theme.UI.Foreground
---@field primary                                               BlackAtom.Theme.UI.Shades
---@field secondary                                             BlackAtom.Theme.UI.Shades
---@field active                                                string
---@field neutral                                               string
---@field invert                                                string
---@field diff                                                  BlackAtom.Theme.UI.Git

---@class BlackAtom.Theme.UI.Feedback
---@field error                                                 string
---@field warn                                                  string
---@field info                                                  string
---@field hint                                                  string
---@field todo                                                  string
---@field success                                               string

---@class BlackAtom.Theme.UI
---@field bg                                                    BlackAtom.Theme.UI.Background
---@field fg                                                    BlackAtom.Theme.UI.Foreground
---@field feedback                                              BlackAtom.Theme.UI.Feedback

---@class BlackAtom.Theme.Syntax.Markup
---@field heading                                               { h1: string, h2: string, h3: string, h4: string, h5: string, h6: string }
---@field quote                                                 string
---@field math                                                  string
---@field link                                                  string
---@field code                                                  { fg: string, bg: string }
---@field list                                                  { default: string, checked: string, unchecked: string }


---@class BlackAtom.Theme.Syntax
---@field variable                                              { default: string, builtin: string, parameter: string, member: string }
---@field string                                                { default: string, documentation: string, regexp: string, escape: string }
---@field boolean                                               { default: string }
---@field number                                                { default: string }
---@field property                                              { default: string }
---@field constant                                              { default: string, builtin: string }
---@field module                                                { default: string }
---@field type                                                  { default: string, builtin: string }
---@field attribute                                             { default: string, builtin: string }
---@field func                                                  { default: string, builtin: string, method: string }
---@field constructor                                           { default: string }
---@field operator                                              { default: string }
---@field keyword                                               { default: string, import: string, export: string }
---@field punctuation                                           { default: string, delimiter: string, bracket: string, special: string }
---@field comment                                               { default: string, doc: string, todo: string, error: string, warn: string, info: string, hint: string }
---@field tag                                                   { default: string, builtin: string, delimiter: string, attribute: string }
---@field markup                                                BlackAtom.Theme.Syntax.Markup

---@class BlackAtom.Theme.Colors
---@field none                                                  "NONE"
---@field primaries                                             BlackAtom.Theme.Primaries
---@field palette                                               BlackAtom.Theme.Palette
---@field ui                                                    BlackAtom.Theme.UI
---@field syntax                                                BlackAtom.Theme.Syntax

---@class BlackAtom.Theme.Meta
---@field key                                                   BlackAtom.Theme.Key
---@field label                                                 string Display name
---@field collection                                            { key: BlackAtom.Theme.Collection.Key, label: string }
---@field appearance                                            "light" | "dark"
---@field status                                                "development" | "beta" | "release" Status of the theme
---@field icon                                                  string Icon to display in the UI

---@class BlackAtom.Theme.Definition
---@field colors                                                BlackAtom.Theme.Colors
---@field meta                                                  BlackAtom.Theme.Meta

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
---@field theme?                                                BlackAtom.Theme.Key
---@field collection?                                           BlackAtom.Theme.Collection.Key
---@field term_colors?                                          boolean Wether to enable terminal colors (Default: true)
---@field styles?                                               BlackAtom.Config.Styles Various styles related settings (Default: See Documentation)

