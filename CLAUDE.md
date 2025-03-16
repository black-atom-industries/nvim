# Black Atom Neovim Adapter Guide

## Project Overview

This is the Neovim adapter for Black Atom themes. It implements the Black Atom theme collections (JPN, Stations, Terra, and CRBN) as a Neovim colorscheme plugin. The plugin uses the adapter pattern to adapt theme files from templates using the core definitions.

## Repository Structure

- **colors/**: Adapted Lua files that define each colorscheme for Neovim use
- **lua/black-atom/**: Main plugin code
    - **api.lua**: Public API for the plugin
    - **commands.lua**: Command definitions
    - **config.lua**: Configuration handling
    - **constants.lua**: Shared constants
    - **highlights.lua**: Highlight group definitions
    - **highlights/**: Highlight group modules
        - **lsp.lua**: LSP highlights
        - **plugins/**: Plugin-specific highlights
        - **syntax.lua**: Syntax highlighting
        - **ui.lua**: UI component highlights
    - **init.lua**: Main entry point
    - **lib/**: Utility modules
    - **themes/**: Theme definition files
        - **{collection}/**: Theme collection directories
            - **black-atom-{collection}-{variant}.template.lua**: Template files for adaptation
            - **black-atom-{collection}-{variant}.lua**: Adapted theme files

## Adapter Pattern

This repository implements the adapter pattern for Neovim:

1. **Template Files**: Each theme has a `.template.lua` file that contains template variables
2. **Adapter Configuration**: The `black-atom-adapter.json` file maps themes to templates
3. **Adapted Files**: The core CLI adapts `.lua` files from templates

## Theme Adaptation Process

1. The core CLI reads the `black-atom-adapter.json` file
2. For each theme, it processes the corresponding template
3. Template variables are replaced with values from the core theme definitions
4. Adapted files are written to the appropriate locations

## Working with Templates

Template files use the Eta template syntax:

```lua
-- Example template variable
local color = "<%= theme.colors.palette.red %>"
```

Each template includes:

- Theme metadata
- Palette colors
- UI component colors
- Syntax highlighting colors

## Theme Structure Best Practices

When working with templates, follow these best practices:

1. **Never reference primaries directly** in template files - use UI, syntax or palette colors instead
2. The primaries structure uses semantic ranges (d10-d40, m10-m40, l10-l40) instead of array indices
3. All templates should use the same pattern for accessing colors (via UI, syntax, and palette)
4. The colors table structure no longer includes primaries (removed from types.lua)

## Development Commands

```bash
# Run checks
sh ./scripts/check.sh
```

## Commiting your work

Before commiting changes, please run the checks.

```bash
# Run checks
sh ./scripts/check.sh
```

## Creating New Templates

When creating new templates:

1. Create a `.template.lua` file in the appropriate collection directory
2. Use template variables for all theme properties
3. Add the template to `black-atom-adapter.json`
4. Adapt the theme using the core CLI

## Troubleshooting

- If templates aren't adapting properly, check the `black-atom-adapter.json` file
- Ensure template variable paths match the core theme structure
- Validate templates with the core CLI before deploying

## Updating Multiple Themes

When making changes to multiple themes:

1. Update the templates rather than the adapted files
2. Use the core CLI to re-adapt all themes
3. Test changes with multiple color variants
