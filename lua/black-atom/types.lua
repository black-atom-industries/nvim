-- vim: set colorcolumn=64:

---@alias BlackAtom.Theme.Key
---| "black-atom-stations-engineering"
---| "black-atom-stations-operations"
---| "black-atom-stations-medical"
---| "black-atom-stations-research"
---| "black-atom-jpn-koyo-yoru"
---| "black-atom-jpn-koyo-hiru"
---| "black-atom-jpn-murasaki-yoru"
---| "black-atom-jpn-tsuki-yoru"
---| "black-atom-crbn-null"
---| "black-atom-crbn-supr"
---| "black-atom-terra-spring-day"
---| "black-atom-terra-spring-night"
---| "black-atom-terra-fall-day"
---| "black-atom-terra-fall-night"
---| "black-atom-terra-summer-day"
---| "black-atom-terra-summer-night"
---| "black-atom-terra-winter-day"
---| "black-atom-terra-winter-night"

---@alias BlackAtom.Theme.Collection.Key
---| "stations"
---| "terra"
---| "jpn"
---| "crbn"

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

---@alias BlackAtom.Highlights                                  table<string, BlackAtom.HighlightDefinition>

---@alias BlackAtom.HighlightMapExtension.map                   fun(colors: BlackAtom.Theme.Colors, config: BlackAtom.Config): BlackAtom.Highlights

---@class BlackAtom.HighlightsSpec
---@field enabled?                                              boolean Default: true
---@field map                                                   BlackAtom.HighlightMapExtension.map

---@class BlackAtom.Theme.Primaries
---@field d10                                                   string
---@field d20                                                   string
---@field d30                                                   string
---@field d40                                                   string
---@field m10                                                   string
---@field m20                                                   string
---@field m30                                                   string
---@field m40                                                   string
---@field l10                                                   string
---@field l20                                                   string
---@field l30                                                   string
---@field l40                                                   string

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

---@class BlackAtom.Theme.UI.Background
---@field default                                               string Default background for UI elements
---@field panel                                                 string Background for sidebars and statusline
---@field float                                                 string Background for floating windows, popups
---@field active                                                string Active elements like cursorline or active tab
---@field disabled                                              string Disabled background state for interactive elements
---@field hover                                                 string Hover state for interactive elements
---@field selection                                             string Visual selection
---@field search                                                string Search background
---@field contrast                                              string Inverted background
---@field negative                                              string Feedback - Negative
---@field warn                                                  string Feedback - Warnings
---@field info                                                  string Feedback - Information
---@field hint                                                  string Feedback - Hints
---@field positive                                              string Feedback - Positive
---@field add                                                   string Git added
---@field delete                                                string Git deleted
---@field modify                                                string Git modified

---@class BlackAtom.Theme.UI.Foreground
---@field default                                               string Default text
---@field subtle                                                string Subtle text like comments and other secondary information
---@field accent                                                string For links and other text that needs to stand out
---@field disabled                                              string For disabled text
---@field contrast                                              string Inverted which is also used on colored or inverted backgrounds like feedback
---@field negative                                              string Feedback - Negative
---@field warn                                                  string Feedback - Warnings
---@field info                                                  string Feedback - Information
---@field hint                                                  string Feedback - Hints
---@field positive                                              string Feedback - Positive
---@field add                                                   string Git added
---@field delete                                                string Git deleted
---@field modify                                                string Git modified

---@class BlackAtom.Theme.UI
---@field bg                                                    BlackAtom.Theme.UI.Background
---@field fg                                                    BlackAtom.Theme.UI.Foreground

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
---@field dark_floats?                                          boolean Wether to use dark floats (Default: true)
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
