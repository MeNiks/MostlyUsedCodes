#!/bin/bash

# Path to JSON file
JSON_FILE="translations.json"

# Base path to res folders
RES_BASE_PATH="app/src/main/res"

# Check if jq is installed
if ! command -v jq &> /dev/null
then
    echo "jq could not be found. Please install jq."
    exit
fi

# Loop through each string key in JSON
for STRING_NAME in $(jq -r 'keys[]' "$JSON_FILE"); do
    echo "Processing key: $STRING_NAME"

    # Loop through each language for this key
    for LANG in $(jq -r --arg key "$STRING_NAME" '.[$key] | keys[]' "$JSON_FILE"); do
        # Determine folder name
        if [ "$LANG" == "en" ]; then
            FOLDER="values"
        else
            FOLDER="values-$LANG"
        fi

        FULL_PATH="$RES_BASE_PATH/$FOLDER"
        mkdir -p "$FULL_PATH"

        STRINGS_FILE="$FULL_PATH/strings.xml"

        # Create strings.xml if it doesn't exist
        if [ ! -f "$STRINGS_FILE" ]; then
            echo "<resources>" > "$STRINGS_FILE"
            echo "</resources>" >> "$STRINGS_FILE"
        fi

        # Read value from JSON and escape single quotes
        STRING_VALUE=$(jq -r --arg key "$STRING_NAME" --arg lang "$LANG" '.[$key][$lang]' "$JSON_FILE" | sed "s/'/\\\'/g")

        # Remove existing string if exists
        sed -i.bak "/<string name=\"$STRING_NAME\">/d" "$STRINGS_FILE"

        # Insert new string after <resources>
        sed -i.bak "/<resources>/a\\
    <string name=\"$STRING_NAME\">$STRING_VALUE</string>
" "$STRINGS_FILE"

        # Remove backup file
        rm "$STRINGS_FILE.bak"

        # Trim trailing blank lines
        # Works for macOS (use GNU sed version for Linux: remove '' after -i)
        sed -i '' -e :a -e '/^\n*$/{$d;N;};/\n$/ba' "$STRINGS_FILE"

        echo "Added/Replaced string '$STRING_NAME' in $FOLDER/strings.xml"
    done
done
