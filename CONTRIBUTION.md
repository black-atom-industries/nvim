# Contributing to Black Atom Industries Industries

First off, thank you for considering contributing to Black Atom Industries! It's people like you that make Black Atom Industries such a great tool.

## Issue and Feature Planning

Black Atom Industries uses Linear for issue tracking and feature planning. While external contributors don't have direct access to our Linear board, we use the DEV-XXXX identifiers in our commit messages and pull request titles to link changes to our internal planning system.

When contributing, please be aware that maintainers may add these identifiers to your contributions during the review process.

## Table of Contents

1. [Issue and Feature Planning](#issue-and-feature-planning)
2. [Getting Started](#getting-started)
3. [How Can I Contribute?](#how-can-i-contribute)
   - [Reporting Bugs](#reporting-bugs)
   - [Suggesting Enhancements](#suggesting-enhancements)
4. [Style Guidelines](#style-guidelines)
   - [Git Commit Messages](#git-commit-messages)
   - [Lua Styleguide](#lua-styleguide)
     - [Luacheck](#luacheck)
     - [StyLua](#stylua)
   - [CI Checks](#ci-checks)
   - [Editor Configuration](#editor-configuration)
5. [Adding Plugin Highlights](#adding-plugin-highlights)

## Getting Started

1. Fork the repository on GitHub.
2. Clone your fork locally.
3. Create a new branch for your contribution.
4. Make your changes.
5. Push to your fork and submit a pull request.

## How Can I Contribute?

### Reporting Bugs

This section guides you through submitting a bug report for Black Atom Industries. Following these guidelines helps maintainers and the community understand your report, reproduce the behavior, and find related reports.

- Use a clear and descriptive title for the issue to identify the problem.
- Describe the exact steps which reproduce the problem in as many details as possible.
- Provide specific examples to demonstrate the steps.

### Suggesting Enhancements

This section guides you through submitting an enhancement suggestion for Black Atom Industries, including completely new features and minor improvements to existing functionality.

- Use a clear and descriptive title for the issue to identify the suggestion.
- Provide a step-by-step description of the suggested enhancement in as many details as possible.
- Provide specific examples to demonstrate the steps or point out the part of Black Atom Industries where the suggestion is related to.

## Style Guidelines

### Git Commit Messages

We follow a strict commit message format to ensure consistency and enable automated changelog generation. Each commit message should be structured as follows:

- Start with a type and optional scope, followed by a colon and a space:
  `<type>(<scope>): <description>`
- Use the present tense ("Add feature" not "Added feature")
- Use the imperative mood ("Move cursor to..." not "Moves cursor to...")
- Limit the first line to 72 characters or less
- Types must be one of the following:
  - feat, themes, highlights, utils, plugins, config, fix, refactor, chore, tests, docs, style, perf, build, ci, revert, deps
- The scope is optional and can be anything specifying the place of the commit change
- The description must be in lowercase
- For Pull Request titles, append the issue number in parentheses at the end: `(DEV-XXXX)`

Examples for commit messages:
- `feat: add new color scheme for dark mode`
- `fix(highlights): correct syntax highlighting for JavaScript`
- `docs: update installation instructions`

Examples for PR titles:
- `feat(highlights): add new color scheme for dark mode`
- `fix(highlights): correct syntax highlighting for JavaScript (DEV-1234)`
- `docs: update installation instructions (DEV-1234)`

The PR title should follow the same format as commit messages, with the addition of the issue number at the end.

Our CI system will automatically check your commit messages and PR titles to ensure they conform to this format. Commits and PRs that don't follow this convention will be rejected.

### Lua Styleguide

We use Luacheck and StyLua to enforce consistent code style across the project. Our CI pipeline automatically runs these checks on every pull request.

- Use 4 spaces for indentation
- Use snake_case for variable and function names
- Use PascalCase for module names
- Follow the existing code style in the project

#### Luacheck

We use Luacheck to catch common Lua errors and enforce coding standards. Our `.luacheckrc` file defines the specific rules we follow.

#### StyLua

StyLua is used to automatically format our Lua code. It ensures consistent formatting throughout the project.

To run StyLua locally:

```bash
stylua --check .
```

To automatically fix styling issues:

```bash
stylua .
```

### CI Checks

Our GitHub Actions workflow runs the following checks on every pull request:

1. **Luacheck**: Checks for Lua syntax errors and style violations.
2. **StyLua**: Ensures consistent code formatting.
3. **PR Metadata**: Verifies that commit messages and PR titles follow our conventional commit format.

Make sure your contributions pass all these checks before submitting a pull request. You can run these checks locally to catch issues early in your development process.

### Editor Configuration

We provide a `.luarc.json` file in the root of the project with some basic configurations:

```json
{
    "diagnostics.globals": [
        "vim"
    ]
}
```

This configuration helps suppress false positives related to the `vim` global in Neovim Lua development.

Please ensure your editor respects these configurations to maintain consistency across the project.

## Adding Plugin Highlights

To add highlights for a new plugin:

1. Create a new file in `lua/black-atom/highlights/plugins/` named after your plugin (e.g., `my_plugin.lua`).
2. Use the template provided in `__plugin_highlight_template.lua` as a starting point.
3. Implement your highlight groups within the `map` function.
4. Ensure you follow the naming convention: replace dots with underscores in the filename (e.g., `telescope.nvim` becomes `telescope_nvim.lua`).
5. Run `./update_supported_plugins.sh` from the root of the project to update the README with your new plugin.

The structure of your highlight groups should be as follows:

```lua
---@type BlackAtom.Highlights
return {
    HighlightGroup1 = { ... },
    HighlightGroup2 = { ... },
    ...
}
```

This structure is crucial for the automatic highlight group counting to work correctly.

Thank you for your contribution to Black Atom Industries!
