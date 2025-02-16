# UI Theme Token System

## Tokens

The simplest token system I can think of.
Important would be that every fg token needs enough contrast to every bg token.

<!-- prettier-ignore -->
```yml
bg:                                                 # 15 tokens
  default: "color"                                  # Default background for UI elements
  panel: "color"                                    # Background for sidebars and statusline
  float: "color"                                    # Background for floating windows, popups
  active: "color"                                   # Active elements like cursorline or active tab
  disabled: "string"                                # Disabled background state for interactive elements
  hover: "string"                                   # Hover state for interactive elements
  selection: "color"                                # Visual selection
  search: "color"                                   # Search background
  contrast: "color"                                 # Inverted background
  error: "color"                                    # Feedback - Errors
  warn: "color"                                     # Feedback - Warnings
  info: "color"                                     # Feedback - Information
  hint: "color"                                     # Feedback - Hints
  success: "color"                                  # Feedback - Success
  add: "color"                                      # Git added
  delete: "color"                                   # Git deleted
  modify: "color"                                   # Git modified
  
fg:                                                 # 13 tokens
  default: "color"                                  # Default text
  subtle: "color"                                   # Subtle text like comments and other secondary information
  accent: "color"                                   # For links and other text that needs to stand out
  disabled: "color"                                 # For disabled text
  contrast: "color"                                 # Inverted which is also used on colored or inverted backgrounds like feedback
  error: "color"                                    # Feedback - Errors
  warn: "color"                                     # Feedback - Warnings
  info: "color"                                     # Feedback - Information
  hint: "color"                                     # Feedback - Hints
  success: "color"                                  # Feedback - Success
  add: "color"                                      # Git added
  delete: "color"                                   # Git deleted
  modify: "color"                                   # Git modified
```

## Resources

- https://rosepinetheme.com/palette/
- https://carbondesignsystem.com/elements/color/tokens/
