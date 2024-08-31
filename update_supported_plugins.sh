#!/bin/bash

# Get the directory of the script
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Define the path to the plugins folder and README file relative to the script location
PLUGINS_FOLDER="$SCRIPT_DIR/lua/black-atom/highlights/plugins"
README_FILE="$SCRIPT_DIR/README.md"

# Start of the section marker
START_MARKER="## Supported Plugins"
# End of the section marker
END_MARKER="## Development"

# Get a list of Lua files in the plugins folder, excluding files ending with "_template.lua"
plugin_files=$(find "$PLUGINS_FOLDER" -name "*.lua" ! -name "*_template.lua" | sort)

# Prepare the new section content
new_section="$START_MARKER\n\n<details>\n<summary>Click to expand supported plugins list</summary>\n\n"
new_section+="This theme supports the following plugins:\n\n"

for file in $plugin_files; do
    # Extract the @doc URL if it exists
    doc_url=$(grep -m 1 "@doc" "$file" | sed 's/.*@doc \(.*\)/\1/')

    # Extract the plugin name from the URL
    if [ -n "$doc_url" ]; then
        plugin_name=$(basename "$doc_url")
    else
        # If no URL, use the filename (remove path and .lua extension)
        plugin_name=$(basename "$file" .lua)
        # Replace underscores with hyphens for better readability
        plugin_name=${plugin_name//_/-}
    fi

    # Count the number of highlight groups
    highlight_count=$(awk '
        /---@type BlackAtom.Highlights/ {
            getline
            if ($0 ~ /return {/) {
                in_highlights = 1
                count = 0
            }
            next
        }
        in_highlights {
            if ($0 ~ /^        }/) {
                in_highlights = 0
                print count
                exit
            }
            count++
        }
    ' "$file")

    # Get the last commit date and message for this file
    last_updated=$(git log -1 --format="%ad" --date=short -- "$file")
    last_commit=$(git log -1 --format="%s" -- "$file")

    # Add the plugin name with link (if available), highlight count, and git info to the list in multiline format
    if [ -n "$doc_url" ]; then
        new_section+="- [$plugin_name]($doc_url)\n"
    else
        new_section+="- $plugin_name\n"
    fi
    new_section+="  - $highlight_count Highlight(s)\n"
    new_section+="  - Last updated: $last_updated\n"
    new_section+="  - Last commit: $last_commit\n"
done

new_section+="</details>\n\n$END_MARKER"

# Check if the README file exists
if [ ! -f "$README_FILE" ]; then
    echo "README.md file not found!"
    exit 1
fi

# Use awk to replace the existing section or add a new one if it doesn't exist
awk -v start="$START_MARKER" -v end="$END_MARKER" -v new="$new_section" '
    $0 ~ start {
        print new
        found = 1
        skip = 1
        next
    }
    $0 ~ end {
        if (skip) {
            skip = 0
            next
        }
    }
    !skip {
        print
    }
    END {
        if (!found) print "\n" new
    }
' "$README_FILE" >temp_readme && mv temp_readme "$README_FILE"

echo "README.md has been updated with the Supported Plugins section."
